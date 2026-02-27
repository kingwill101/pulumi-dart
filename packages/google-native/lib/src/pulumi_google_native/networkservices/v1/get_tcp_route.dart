import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tcp_route_args.dart';
import 'get_tcp_route_result.dart';

/// Gets details of a single TcpRoute.
Future<GetTcpRouteResult> getTcpRoute(
  GetTcpRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTcpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteResult.fromMap(result);
}
