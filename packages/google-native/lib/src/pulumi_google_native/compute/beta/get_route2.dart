import 'package:pulumi/pulumi.dart';
import 'get_route_args2.dart';
import 'get_route_result2.dart';

/// Returns the specified Route resource.
Future<GetRouteResult2> getRoute2(
  GetRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRouteResult2.fromMap(result);
}
