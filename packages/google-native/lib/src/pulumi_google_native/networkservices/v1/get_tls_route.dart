import 'package:pulumi/pulumi.dart' hide Config;
import 'get_tls_route_args.dart';
import 'get_tls_route_result.dart';

/// Gets details of a single TlsRoute.
Future<GetTlsRouteResult> getTlsRoute(
  GetTlsRouteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTlsRoute',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteResult.fromMap(result);
}
