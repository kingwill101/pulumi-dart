import 'package:pulumi/pulumi.dart';
import 'get_tcp_route_args.dart';
import 'get_tcp_route_result.dart';

/// Gets details of a single TcpRoute.
Future<GetTcpRouteResult> getTcpRoute(
  GetTcpRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTcpRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteResult.fromMap(result);
}
