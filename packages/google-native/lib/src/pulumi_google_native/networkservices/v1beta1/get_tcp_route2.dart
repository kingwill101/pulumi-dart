import 'package:pulumi/pulumi.dart';
import 'get_tcp_route_args2.dart';
import 'get_tcp_route_result2.dart';

/// Gets details of a single TcpRoute.
Future<GetTcpRouteResult2> getTcpRoute2(
  GetTcpRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTcpRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteResult2.fromMap(result);
}
