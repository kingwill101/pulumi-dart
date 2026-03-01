import 'package:pulumi/pulumi.dart' as pulumi;
import 'terraform_config_args.dart';
import 'terraform_config_result.dart';

/// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
/// [args] Arguments passed to this invoke. {@macro pulumi_providers_terraform_config_args_doc}
/// [options] Invoke options controlling this call.
Future<TerraformConfigResult> terraformConfig(
  TerraformConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumi:providers:alicloud/terraformConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return TerraformConfigResult.fromMap(result);
}
