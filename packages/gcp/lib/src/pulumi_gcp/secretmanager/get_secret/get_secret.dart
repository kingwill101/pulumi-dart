import 'package:pulumi/pulumi.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// Use this data source to get information about a Secret Manager Secret
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecret:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
