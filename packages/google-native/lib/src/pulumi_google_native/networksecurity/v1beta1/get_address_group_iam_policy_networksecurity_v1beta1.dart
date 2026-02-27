import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_iam_policy_networksecurity_v1beta1_args.dart';
import 'get_address_group_iam_policy_networksecurity_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAddressGroupIamPolicyNetworksecurityV1beta1Result>
    getAddressGroupIamPolicyNetworksecurityV1beta1(
  GetAddressGroupIamPolicyNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupIamPolicyNetworksecurityV1beta1Result.fromMap(result);
}
