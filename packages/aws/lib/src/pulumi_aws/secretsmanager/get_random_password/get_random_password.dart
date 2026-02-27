import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_random_password_args.dart';
import 'get_random_password_result.dart';

/// Generate a random password.
Future<GetRandomPasswordResult> getRandomPassword(
  GetRandomPasswordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:secretsmanager/getRandomPassword:getRandomPassword',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRandomPasswordResult.fromMap(result);
}
