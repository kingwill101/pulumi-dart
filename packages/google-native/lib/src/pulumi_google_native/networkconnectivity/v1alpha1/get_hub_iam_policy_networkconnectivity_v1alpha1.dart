import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_iam_policy_networkconnectivity_v1alpha1_args.dart';
import 'get_hub_iam_policy_networkconnectivity_v1alpha1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetHubIamPolicyNetworkconnectivityV1alpha1Result>
    getHubIamPolicyNetworkconnectivityV1alpha1(
  GetHubIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHubIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubIamPolicyNetworkconnectivityV1alpha1Result.fromMap(result);
}
