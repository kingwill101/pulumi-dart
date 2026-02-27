import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_tcp_proxy_compute_v1_args.dart';
import 'get_target_tcp_proxy_compute_v1_result.dart';

/// Returns the specified TargetTcpProxy resource.
Future<GetTargetTcpProxyComputeV1Result> getTargetTcpProxyComputeV1(
  GetTargetTcpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyComputeV1Result.fromMap(result);
}
