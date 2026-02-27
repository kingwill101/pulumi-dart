import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_grpc_proxy_compute_v1_args.dart';
import 'get_target_grpc_proxy_compute_v1_result.dart';

/// Returns the specified TargetGrpcProxy resource in the given scope.
Future<GetTargetGrpcProxyComputeV1Result> getTargetGrpcProxyComputeV1(
  GetTargetGrpcProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyComputeV1Result.fromMap(result);
}
