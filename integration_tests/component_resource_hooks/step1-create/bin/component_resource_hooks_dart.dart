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
    final deployment = DeploymentImpl.instance as DeploymentImpl;
    deployment.registerResourceOperation(
      deployment.logger.info('BeforeCreate was called'),
    );

    TestComponent('component', Input.fromValue('step1'));

    deployment.registerResourceOperation(
      deployment.logger.info('AfterCreate was called'),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
