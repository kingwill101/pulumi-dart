import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_compute_args.dart';
import 'get_instance_compute_result.dart';

/// Get information about a VM instance resource within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/instances)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/instances).
Future<GetInstanceComputeResult> getInstanceCompute(
  GetInstanceComputeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeResult.fromMap(result);
}
