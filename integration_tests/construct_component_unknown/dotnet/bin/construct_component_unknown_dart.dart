import 'package:pulumi/pulumi.dart';

class Random extends CustomResource {
  Random(String name, Input<int> length, [CustomResourceOptions? options])
      : super(
          'testprovider:index:Random',
          name,
          {'length': length},
          options ?? CustomResourceOptions(),
        );
}

class TestComponent extends ComponentResource {
  TestComponent(
    String name,
    Input<String> message,
    Input<dynamic> nested, [
    ComponentResourceOptions? options,
  ]) : super(
          'testcomponent:index:Component',
          name,
          {
            'message': message,
            'nested': nested,
          },
          options,
          remote: true,
        );
}

class MyStack extends Stack {
  MyStack() {
    final resource = Random('resource', Input.fromValue(10));

    final Input<String> message = Input.fromOutput(
      resource.id.apply((value) => 'message $value'),
    );
    final Input<dynamic> nested = Input.fromValue({
      'value': Input.fromOutput(
        resource.id.apply((value) => 'nested.value $value'),
      ),
    });

    TestComponent('component', message, nested);
  }
}

Future<void> main() async {
  await DeploymentImpl.run(() => MyStack());
}
