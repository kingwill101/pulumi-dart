import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_backup_iam_policy_args2.dart';
import 'get_service_backup_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBackupIamPolicyResult2> getServiceBackupIamPolicy2(
  GetServiceBackupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyResult2.fromMap(result);
}
