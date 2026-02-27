import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_backup_iam_policy_managedidentities_v1alpha1_args.dart';
import 'get_domain_backup_iam_policy_managedidentities_v1alpha1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDomainBackupIamPolicyManagedidentitiesV1alpha1Result>
    getDomainBackupIamPolicyManagedidentitiesV1alpha1(
  GetDomainBackupIamPolicyManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomainBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainBackupIamPolicyManagedidentitiesV1alpha1Result.fromMap(
      result);
}
