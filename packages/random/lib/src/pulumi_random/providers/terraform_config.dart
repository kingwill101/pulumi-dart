import 'package:pulumi/pulumi.dart';
import 'terraform_config_args.dart';
import 'terraform_config_result.dart';

/// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
Future<TerraformConfigResult> terraformConfig(
  TerraformConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'pulumi:providers:random/terraformConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return TerraformConfigResult.fromMap(result);
}
