import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_compute_v1_args.dart';
import 'get_route_compute_v1_result.dart';

/// Returns the specified Route resource.
Future<GetRouteComputeV1Result> getRouteComputeV1(
  GetRouteComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteComputeV1Result.fromMap(result);
}
