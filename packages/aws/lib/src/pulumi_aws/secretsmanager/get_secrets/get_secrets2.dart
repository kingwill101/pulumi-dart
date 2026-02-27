import 'package:pulumi/pulumi.dart';
import 'get_secrets_args2.dart';
import 'get_secrets_result2.dart';

/// Use this data source to get the ARNs and names of Secrets Manager secrets matching the specified criteria.
Future<GetSecretsResult2> getSecrets2(
  GetSecretsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getSecrets:getSecrets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult2.fromMap(result);
}
