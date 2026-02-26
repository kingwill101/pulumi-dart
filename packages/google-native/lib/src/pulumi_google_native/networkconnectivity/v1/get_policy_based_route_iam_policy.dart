import 'package:pulumi/pulumi.dart';
import 'get_policy_based_route_iam_policy_args.dart';
import 'get_policy_based_route_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPolicyBasedRouteIamPolicyResult> getPolicyBasedRouteIamPolicy(
  GetPolicyBasedRouteIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRouteIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyBasedRouteIamPolicyResult.fromMap(result);
}
