import 'package:pulumi/pulumi.dart';
import 'get_backend_bucket_args2.dart';
import 'get_backend_bucket_result2.dart';

/// Returns the specified BackendBucket resource.
Future<GetBackendBucketResult2> getBackendBucket2(
  GetBackendBucketArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult2.fromMap(result);
}
