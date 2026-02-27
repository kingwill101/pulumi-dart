import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tls_route_networkservices_v1beta1_args.dart';
import 'get_tls_route_networkservices_v1beta1_result.dart';

/// Gets details of a single TlsRoute.
Future<GetTlsRouteNetworkservicesV1beta1Result>
    getTlsRouteNetworkservicesV1beta1(
  GetTlsRouteNetworkservicesV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getTlsRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTlsRouteNetworkservicesV1beta1Result.fromMap(result);
}
