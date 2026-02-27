import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_route_args.dart';
import 'get_tls_route_result.dart';

/// Gets details of a single TlsRoute.
Future<GetTlsRouteResult> getTlsRoute(
  GetTlsRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getTlsRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteResult.fromMap(result);
}
