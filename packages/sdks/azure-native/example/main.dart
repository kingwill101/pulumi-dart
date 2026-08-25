import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/resources.dart' as resources;

class ExampleStack extends pulumi.Stack {
  ExampleStack() {
    final resourceGroup = resources.ResourceGroup('resource-group');
    registerOutputs({'resourceGroupName': resourceGroup.name});
  }
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => ExampleStack());
}
