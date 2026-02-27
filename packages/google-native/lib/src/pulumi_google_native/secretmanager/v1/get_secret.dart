import 'package:pulumi/pulumi.dart' hide Config;
import 'get_secret_args.dart';
import 'get_secret_result.dart';

/// Gets metadata for a given Secret.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}
