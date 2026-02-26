// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as provider;

class ExampleStack extends Stack {
  ExampleStack() {
    // TODO: Add resources from package:pulumi_aws.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await Deployment.run(() => ExampleStack());
}
