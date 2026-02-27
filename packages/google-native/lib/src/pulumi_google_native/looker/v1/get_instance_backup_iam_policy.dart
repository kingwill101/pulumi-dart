import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_backup_iam_policy_args.dart';
import 'get_instance_backup_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceBackupIamPolicyResult> getInstanceBackupIamPolicy(
  GetInstanceBackupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:looker/v1:getInstanceBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceBackupIamPolicyResult.fromMap(result);
}
