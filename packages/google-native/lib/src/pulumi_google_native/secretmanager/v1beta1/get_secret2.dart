import 'package:pulumi/pulumi.dart';
import 'get_secret_args2.dart';
import 'get_secret_result2.dart';

/// Gets metadata for a given Secret.
Future<GetSecretResult2> getSecret2(
  GetSecretArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:secretmanager/v1beta1:getSecret',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecretResult2.fromMap(result);
}
