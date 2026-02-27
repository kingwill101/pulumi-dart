import 'package:pulumi/pulumi.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Use this data source to list the Secret Manager Secrets
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecrets:getSecrets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
