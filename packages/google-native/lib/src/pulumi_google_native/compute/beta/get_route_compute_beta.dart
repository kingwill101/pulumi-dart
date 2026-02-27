import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_compute_beta_args.dart';
import 'get_route_compute_beta_result.dart';

/// Returns the specified Route resource.
Future<GetRouteComputeBetaResult> getRouteComputeBeta(
  GetRouteComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteComputeBetaResult.fromMap(result);
}
