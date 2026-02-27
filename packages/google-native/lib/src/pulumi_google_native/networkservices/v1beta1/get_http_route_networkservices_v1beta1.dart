import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_route_networkservices_v1beta1_args.dart';
import 'get_http_route_networkservices_v1beta1_result.dart';

/// Gets details of a single HttpRoute.
Future<GetHttpRouteNetworkservicesV1beta1Result>
    getHttpRouteNetworkservicesV1beta1(
  GetHttpRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getHttpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteNetworkservicesV1beta1Result.fromMap(result);
}
