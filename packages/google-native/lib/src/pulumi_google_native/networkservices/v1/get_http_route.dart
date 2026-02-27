import 'package:pulumi/pulumi.dart' hide Config;
import 'get_http_route_args.dart';
import 'get_http_route_result.dart';

/// Gets details of a single HttpRoute.
Future<GetHttpRouteResult> getHttpRoute(
  GetHttpRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getHttpRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteResult.fromMap(result);
}
