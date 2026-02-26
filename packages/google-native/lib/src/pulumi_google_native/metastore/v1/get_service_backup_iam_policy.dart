import 'package:pulumi/pulumi.dart';
import 'get_service_backup_iam_policy_args.dart';
import 'get_service_backup_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBackupIamPolicyResult> getServiceBackupIamPolicy(
  GetServiceBackupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1:getServiceBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyResult.fromMap(result);
}
