import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azuread/index.dart' as azuread;

class AzureAdGroupStack extends pulumi.Stack {
  AzureAdGroupStack() : super() {
    final group = azuread.Group(
      'group',
      args: azuread.GroupArgs(
        displayName: 'pulumi-dart-group-${pulumi.Deployment.instance.stackName}'
            .output(),
        securityEnabled: true.output(),
      ),
    );

    registerOutputs({'groupId': group.id});
  }
}
