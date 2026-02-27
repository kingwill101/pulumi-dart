import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// Gets metadata for a given Secret.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
