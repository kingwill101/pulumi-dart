import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_spoke_iam_policy_networkconnectivity_v1alpha1_args.dart';
import 'get_spoke_iam_policy_networkconnectivity_v1alpha1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSpokeIamPolicyNetworkconnectivityV1alpha1Result>
    getSpokeIamPolicyNetworkconnectivityV1alpha1(
  GetSpokeIamPolicyNetworkconnectivityV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getSpokeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpokeIamPolicyNetworkconnectivityV1alpha1Result.fromMap(result);
}
