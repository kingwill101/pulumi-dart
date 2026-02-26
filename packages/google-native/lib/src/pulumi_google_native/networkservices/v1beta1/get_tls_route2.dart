import 'package:pulumi/pulumi.dart';
import 'get_tls_route_args2.dart';
import 'get_tls_route_result2.dart';

/// Gets details of a single TlsRoute.
Future<GetTlsRouteResult2> getTlsRoute2(
  GetTlsRouteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTlsRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteResult2.fromMap(result);
}
