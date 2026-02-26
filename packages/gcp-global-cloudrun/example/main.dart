// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_gcp_global_cloudrun/pulumi_gcp_global_cloudrun.dart'
    as provider;

class ExampleStack extends Stack {
  ExampleStack() {
    // TODO: Add resources from package:pulumi_gcp_global_cloudrun.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await Deployment.run(() => ExampleStack());
}
