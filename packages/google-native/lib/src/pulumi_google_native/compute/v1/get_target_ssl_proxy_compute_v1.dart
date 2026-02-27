import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_ssl_proxy_compute_v1_args.dart';
import 'get_target_ssl_proxy_compute_v1_result.dart';

/// Returns the specified TargetSslProxy resource.
Future<GetTargetSslProxyComputeV1Result> getTargetSslProxyComputeV1(
  GetTargetSslProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetSslProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyComputeV1Result.fromMap(result);
}
