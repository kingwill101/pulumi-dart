import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_secretsmanager_args.dart';
import 'get_secret_secretsmanager_result.dart';

/// Retrieve metadata information about a Secrets Manager secret. To retrieve a secret value, see the `aws.secretsmanager.SecretVersion` data source.
///
/// ## Example Usage
///
/// ### ARN
///
///
///
/// ### Name
Future<GetSecretSecretsmanagerResult> getSecretSecretsmanager(
  GetSecretSecretsmanagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretSecretsmanagerResult.fromMap(result);
}
