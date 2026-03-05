import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_terraform/state.dart' as terraform_state;

class TerraformLocalStateReferenceStack extends pulumi.Stack {
  TerraformLocalStateReferenceStack() : super() {
    final config = pulumi.Config();
    final statePath = config.get('statePath') ?? './terraform.tfstate';

    final reference = ''.output().apply(
      (_) => terraform_state.getLocalReference(
        terraform_state.GetLocalReferenceArgs(path: statePath.output()),
      ),
    );
    final outputs = reference.apply((result) => result.outputs);

    registerOutputs({'statePath': statePath, 'terraformOutputs': outputs});
  }
}
