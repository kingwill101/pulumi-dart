import 'package:pulumi/pulumi.dart';
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_result.dart';

/// Returns the specified BackendBucket resource.
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}
