import 'package:pulumi/pulumi.dart';
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_result.dart';

/// Get information about a BackendBucket.
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendBucket:getBackendBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}
