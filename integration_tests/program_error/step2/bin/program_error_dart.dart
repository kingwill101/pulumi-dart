import 'package:pulumi/pulumi.dart';

class Random extends CustomResource {
  Random(String name, int length, {CustomResourceOptions? options})
      : super(
          'testprovider:index:Random',
          name,
          {
            'length': Input.fromValue(length),
          },
          options ?? CustomResourceOptions(),
        );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    Random('res1', 10);
    throw Exception('This is a test error');
    // ignore: dead_code
    Random('res2', 10);
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
