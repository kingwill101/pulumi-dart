import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_target_http_proxy_compute_v1_args.dart';
import 'get_target_http_proxy_compute_v1_result.dart';

/// Returns the specified TargetHttpProxy resource.
Future<GetTargetHttpProxyComputeV1Result> getTargetHttpProxyComputeV1(
  GetTargetHttpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyComputeV1Result.fromMap(result);
}
