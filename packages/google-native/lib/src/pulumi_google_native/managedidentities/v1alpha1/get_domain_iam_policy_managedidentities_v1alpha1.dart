import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_iam_policy_managedidentities_v1alpha1_args.dart';
import 'get_domain_iam_policy_managedidentities_v1alpha1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetDomainIamPolicyManagedidentitiesV1alpha1Result>
    getDomainIamPolicyManagedidentitiesV1alpha1(
  GetDomainIamPolicyManagedidentitiesV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:managedidentities/v1alpha1:getDomainIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainIamPolicyManagedidentitiesV1alpha1Result.fromMap(result);
}
