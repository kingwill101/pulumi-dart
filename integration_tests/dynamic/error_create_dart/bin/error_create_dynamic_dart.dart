import 'package:pulumi/pulumi.dart';

class FailingDynamicResource extends CustomResource {
  FailingDynamicResource(String name)
      : super(
          'custom-provider:dynamic:CustomResource',
          name,
          const {},
          CustomResourceOptions(),
        );
}

class ErrorCreateDynamicStack extends Stack {
  ErrorCreateDynamicStack() {
    FailingDynamicResource('resource-name');
  }
}

Future<void> main() async {
  await Deployment.runOrThrow(() => ErrorCreateDynamicStack());
}
