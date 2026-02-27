import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_https_proxy_compute_v1_args.dart';
import 'get_target_https_proxy_compute_v1_result.dart';

/// Returns the specified TargetHttpsProxy resource.
Future<GetTargetHttpsProxyComputeV1Result> getTargetHttpsProxyComputeV1(
  GetTargetHttpsProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyComputeV1Result.fromMap(result);
}
