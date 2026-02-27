import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_cluster_backup_iam_policy_args.dart';
import 'get_instance_cluster_backup_iam_policy_result.dart';

/// Gets the access control policy for a Table or Backup resource. Returns an empty policy if the resource exists but does not have a policy set.
Future<GetInstanceClusterBackupIamPolicyResult>
    getInstanceClusterBackupIamPolicy(
  GetInstanceClusterBackupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceClusterBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceClusterBackupIamPolicyResult.fromMap(result);
}
