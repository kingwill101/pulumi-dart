import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_result.dart';

/// Get information about a BackendBucket.
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendBucket:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}
