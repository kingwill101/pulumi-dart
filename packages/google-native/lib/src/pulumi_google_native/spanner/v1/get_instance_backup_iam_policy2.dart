import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_backup_iam_policy_args2.dart';
import 'get_instance_backup_iam_policy_result2.dart';

/// Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.
Future<GetInstanceBackupIamPolicyResult2> getInstanceBackupIamPolicy2(
  GetInstanceBackupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceBackupIamPolicyResult2.fromMap(result);
}
