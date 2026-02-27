import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_backup_iam_policy_args3.dart';
import 'get_service_backup_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBackupIamPolicyResult3> getServiceBackupIamPolicy3(
  GetServiceBackupIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyResult3.fromMap(result);
}
