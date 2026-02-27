import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_grpc_proxy_compute_beta_args.dart';
import 'get_target_grpc_proxy_compute_beta_result.dart';

/// Returns the specified TargetGrpcProxy resource in the given scope.
Future<GetTargetGrpcProxyComputeBetaResult> getTargetGrpcProxyComputeBeta(
  GetTargetGrpcProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyComputeBetaResult.fromMap(result);
}
