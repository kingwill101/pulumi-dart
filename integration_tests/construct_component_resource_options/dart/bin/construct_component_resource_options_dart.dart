import 'package:pulumi/pulumi.dart';

class Component extends ComponentResource {
  Component(String name, [ComponentResourceOptions? options])
      : super(
          'testcomponent:index:Component',
          name,
          {'echo': Input.fromValue(name)},
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    final dep1 = Component('Dep1');
    final dep2 = Component('Dep2');

    Component(
      'DependsOn',
      ComponentResourceOptions(dependsOn: [dep1, dep2]),
    );

    Component('Protect', ComponentResourceOptions(protect: true));

    Component(
      'AdditionalSecretOutputs',
      ComponentResourceOptions(additionalSecretOutputs: ['foo']),
    );

    Component(
      'CustomTimeouts',
      ComponentResourceOptions(
        customTimeouts: CustomTimeouts(
          create: '1m',
          update: '2m',
          delete: '3m',
        ),
      ),
    );

    final getDeletedWithMe = Component('getDeletedWithMe');
    Component(
      'DeletedWith',
      ComponentResourceOptions(deletedWith: getDeletedWithMe),
    );

    Component(
      'RetainOnDelete',
      ComponentResourceOptions(retainOnDelete: true),
    );
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
