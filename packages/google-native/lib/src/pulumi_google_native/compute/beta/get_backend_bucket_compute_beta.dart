import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_compute_beta_args.dart';
import 'get_backend_bucket_compute_beta_result.dart';

/// Returns the specified BackendBucket resource.
Future<GetBackendBucketComputeBetaResult> getBackendBucketComputeBeta(
  GetBackendBucketComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketComputeBetaResult.fromMap(result);
}
