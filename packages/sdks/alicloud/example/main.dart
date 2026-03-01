// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_alicloud/pulumi_alicloud.dart' as provider;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    // Add resources from package:pulumi_alicloud.
    // Example:
    // final resource = provider.YourResource("example");
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
