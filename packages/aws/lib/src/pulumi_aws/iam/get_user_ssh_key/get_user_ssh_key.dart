import 'package:pulumi/pulumi.dart';
import 'get_user_ssh_key_args.dart';
import 'get_user_ssh_key_result.dart';

/// Use this data source to get information about a SSH public key associated with the specified IAM user.
Future<GetUserSshKeyResult> getUserSshKey(
  GetUserSshKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getUserSshKey:getUserSshKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetUserSshKeyResult.fromMap(result);
}
