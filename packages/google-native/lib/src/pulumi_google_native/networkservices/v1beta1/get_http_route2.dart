import 'package:pulumi/pulumi.dart';
import 'get_http_route_args2.dart';
import 'get_http_route_result2.dart';

/// Gets details of a single HttpRoute.
Future<GetHttpRouteResult2> getHttpRoute2(
  GetHttpRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getHttpRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHttpRouteResult2.fromMap(result);
}
