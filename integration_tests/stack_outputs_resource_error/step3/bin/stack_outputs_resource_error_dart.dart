import 'package:pulumi/pulumi.dart';

class FailsOnCreate extends CustomResource {
  FailsOnCreate(String name)
      : super(
          'testprovider:index:FailsOnCreate',
          name,
          {},
          CustomResourceOptions(),
        );
}

class MyStack extends Stack {
  MyStack() {
    FailsOnCreate('test');

    registerOutputs({
      'xyz': Output.create('DEF'),
      'foo': Output.create(1),
    });
  }
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() => MyStack());

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
