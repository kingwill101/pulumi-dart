import 'package:pulumi/pulumi.dart';

class TestResource extends CustomResource {
  TestResource(String name, Input<dynamic> echo,
      [CustomResourceOptions? options])
      : super(
          'testprovider:index:Echo',
          name,
          {'echo': echo},
          options ?? CustomResourceOptions(),
        );
}

class MyStack extends Stack {
  MyStack() {
    final customA = TestResource('a', Input.fromValue(42));
    final customB = TestResource('b', Input.fromValue('hello'));
    final customC = TestResource(
      'c',
      Input.fromValue([1, 'goodbye', true]),
    );

    final deployment = DeploymentImpl.instance as DeploymentImpl;

    Output<dynamic> readEcho(TestResource resource) {
      return resource.urn.apply((urn) async {
        final result = await deployment.invoke<Map<String, dynamic>>(
          'pulumi:pulumi:getResource',
          {'urn': urn},
        );
        final state = result['state'] as Map<String, dynamic>;
        return state['echo'];
      });
    }

    registerOutputs({
      'echoA': readEcho(customA),
      'echoB': readEcho(customB),
      'echoC': readEcho(customC),
    });
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
