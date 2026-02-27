import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_http_route_args.dart';
import 'get_http_route_result.dart';

/// Gets details of a single HttpRoute.
Future<GetHttpRouteResult> getHttpRoute(
  GetHttpRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getHttpRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteResult.fromMap(result);
}
