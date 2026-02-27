import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_compute_environment_args.dart';
import 'get_compute_environment_result.dart';

/// The Batch Compute Environment data source allows access to details of a specific
/// compute environment within AWS Batch.
Future<GetComputeEnvironmentResult> getComputeEnvironment(
  GetComputeEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getComputeEnvironment:getComputeEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetComputeEnvironmentResult.fromMap(result);
}
