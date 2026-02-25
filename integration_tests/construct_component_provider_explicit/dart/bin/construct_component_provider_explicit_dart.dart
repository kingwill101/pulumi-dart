import 'package:pulumi/pulumi.dart';

class Provider extends ProviderResource {
  Provider(String name, Input<String> message)
    : super(
        'testcomponent',
        name,
        {'message': message},
        CustomResourceOptions(),
      );
}

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
    : super('testcomponent:index:Component', name, null, options, remote: true);
}

class LocalComponent extends ComponentResource {
  late final Output<String> message;

  LocalComponent(String name, [ComponentResourceOptions? options])
    : super('my:index:LocalComponent', name, null, options) {
    final component = Component(
      '${name}-mycomponent',
      ComponentResourceOptions(parent: this),
    );

    final deployment = DeploymentImpl.instance as DeploymentImpl;
    message = component.urn.apply((urn) async {
      final resource = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': urn},
      );
      final state = resource['state'] as Map<String, dynamic>;
      return state['message'] as String;
    });

    registerOutputs({'message': message});
  }
}

class MyStack extends Stack {
  MyStack() {
    final provider = Provider('myprovider', Input.fromValue('hello world'));

    final component = Component(
      'mycomponent',
      ComponentResourceOptions(provider: provider),
    );

    final localComponent = LocalComponent(
      'mylocalcomponent',
      ComponentResourceOptions(providers: [provider]),
    );

    final deployment = DeploymentImpl.instance as DeploymentImpl;
    final message = component.urn.apply((urn) async {
      final resource = await deployment.invoke<Map<String, dynamic>>(
        'pulumi:pulumi:getResource',
        {'urn': urn},
      );
      final state = resource['state'] as Map<String, dynamic>;
      return state['message'] as String;
    });

    registerOutputs({'message': message, 'nestedMessage': localComponent.message});
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
