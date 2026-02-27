import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_backup_iam_policy_spanner_v1_args.dart';
import 'get_instance_backup_iam_policy_spanner_v1_result.dart';

/// Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.
Future<GetInstanceBackupIamPolicySpannerV1Result>
    getInstanceBackupIamPolicySpannerV1(
  GetInstanceBackupIamPolicySpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceBackupIamPolicySpannerV1Result.fromMap(result);
}
