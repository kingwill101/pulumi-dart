import 'package:pulumi/pulumi.dart';

class TestComponent extends ComponentResource {
  TestComponent(
    String name,
    Input<String> echo, {
    ComponentResourceOptions? options,
  }) : super(
          'testcomponent:index:Component',
          name,
          {'echo': echo},
          options,
          remote: true,
        );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    TestComponent('component', Input.fromValue('step2'));
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
