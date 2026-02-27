import 'package:pulumi/pulumi.dart' hide Config;
import 'get_policy_based_route_args.dart';
import 'get_policy_based_route_result.dart';

/// Gets details of a single policy-based route.
Future<GetPolicyBasedRouteResult> getPolicyBasedRoute(
  GetPolicyBasedRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1:getPolicyBasedRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyBasedRouteResult.fromMap(result);
}
