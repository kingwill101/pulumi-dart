import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_iam_policy_domains_v1alpha2_args.dart';
import 'get_registration_iam_policy_domains_v1alpha2_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegistrationIamPolicyDomainsV1alpha2Result>
    getRegistrationIamPolicyDomainsV1alpha2(
  GetRegistrationIamPolicyDomainsV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistrationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyDomainsV1alpha2Result.fromMap(result);
}
