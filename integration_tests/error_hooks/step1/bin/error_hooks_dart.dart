import 'package:pulumi/pulumi.dart';

class FlakyCreate extends CustomResource {
  FlakyCreate(String name, {CustomResourceOptions? options})
      : super(
          'testprovider:index:FlakyCreate',
          name,
          {},
          options ?? CustomResourceOptions(),
        );
}

Future<void> main() async {
  final code = await DeploymentImpl.run(() {
    final onError = ErrorHook('onError', (args) {
      print('onError was called for ${args.name} (${args.failedOperation})');
      return true;
    });

    FlakyCreate(
      'res',
      options: CustomResourceOptions(
        hooks: ResourceHookBinding(
          onError: [onError],
        ),
      ),
    );
  });

  if (code != 0) {
    throw Exception('Deployment failed with exit code $code');
  }
}
