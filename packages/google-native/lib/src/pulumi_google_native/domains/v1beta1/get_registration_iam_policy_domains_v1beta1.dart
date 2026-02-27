import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_iam_policy_domains_v1beta1_args.dart';
import 'get_registration_iam_policy_domains_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRegistrationIamPolicyDomainsV1beta1Result>
    getRegistrationIamPolicyDomainsV1beta1(
  GetRegistrationIamPolicyDomainsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistrationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyDomainsV1beta1Result.fromMap(result);
}
