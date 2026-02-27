import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// Use this data source to get information about a Secret Manager Secret
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:secretmanager/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
