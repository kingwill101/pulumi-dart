import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secrets_args.dart';
import 'get_regional_secrets_result.dart';

/// subcategory: "Secret Manager"
/// description: |-
/// List the Secret Manager Regional Secrets.
/// ---
///
/// Use this data source to list the Secret Manager Regional Secrets.
Future<GetRegionalSecretsResult> getRegionalSecrets(
  GetRegionalSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getRegionalSecrets:getRegionalSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalSecretsResult.fromMap(result);
}
