import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_iam_policy_networkmanagement_v1beta1_args.dart';
import 'get_connectivity_test_iam_policy_networkmanagement_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetConnectivityTestIamPolicyNetworkmanagementV1beta1Result>
    getConnectivityTestIamPolicyNetworkmanagementV1beta1(
  GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkmanagement/v1beta1:getConnectivityTestIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityTestIamPolicyNetworkmanagementV1beta1Result.fromMap(
      result);
}
