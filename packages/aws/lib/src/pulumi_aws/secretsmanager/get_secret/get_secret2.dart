import 'package:pulumi/pulumi.dart';
import 'get_secret_args2.dart';
import 'get_secret_result2.dart';

/// Retrieve metadata information about a Secrets Manager secret. To retrieve a secret value, see the `aws.secretsmanager.SecretVersion` data source.
///
/// ## Example Usage
///
/// ### ARN
///
///
///
/// ### Name
Future<GetSecretResult2> getSecret2(
  GetSecretArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecret:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult2.fromMap(result);
}
