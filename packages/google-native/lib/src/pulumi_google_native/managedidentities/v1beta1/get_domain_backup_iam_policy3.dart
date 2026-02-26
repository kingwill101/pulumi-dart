import 'package:pulumi/pulumi.dart';
import 'get_domain_backup_iam_policy_args3.dart';
import 'get_domain_backup_iam_policy_result3.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDomainBackupIamPolicyResult3> getDomainBackupIamPolicy3(
  GetDomainBackupIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1beta1:getDomainBackupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyResult3.fromMap(result);
}
