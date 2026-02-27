import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_compute_v1_args.dart';
import 'get_backend_bucket_compute_v1_result.dart';

/// Returns the specified BackendBucket resource.
Future<GetBackendBucketComputeV1Result> getBackendBucketComputeV1(
  GetBackendBucketComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketComputeV1Result.fromMap(result);
}
