import 'package:pulumi/pulumi.dart';
import 'get_domain_backup_iam_policy_args2.dart';
import 'get_domain_backup_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDomainBackupIamPolicyResult2> getDomainBackupIamPolicy2(
  GetDomainBackupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomainBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyResult2.fromMap(result);
}
