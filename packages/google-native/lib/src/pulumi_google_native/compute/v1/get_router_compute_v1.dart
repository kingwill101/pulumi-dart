import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_router_compute_v1_args.dart';
import 'get_router_compute_v1_result.dart';

/// Returns the specified Router resource.
Future<GetRouterComputeV1Result> getRouterComputeV1(
  GetRouterComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterComputeV1Result.fromMap(result);
}
