import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tcp_route_networkservices_v1beta1_args.dart';
import 'get_tcp_route_networkservices_v1beta1_result.dart';

/// Gets details of a single TcpRoute.
Future<GetTcpRouteNetworkservicesV1beta1Result>
    getTcpRouteNetworkservicesV1beta1(
  GetTcpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTcpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTcpRouteNetworkservicesV1beta1Result.fromMap(result);
}
