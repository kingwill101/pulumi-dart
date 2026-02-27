import 'package:pulumi/pulumi.dart';
import 'get_random_password_args.dart';
import 'get_random_password_result.dart';

/// Generate a random password.
Future<GetRandomPasswordResult> getRandomPassword(
  GetRandomPasswordArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getRandomPassword:getRandomPassword',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRandomPasswordResult.fromMap(result);
}
