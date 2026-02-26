import 'package:pulumi/pulumi.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';

/// Returns the specified Route resource.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}
