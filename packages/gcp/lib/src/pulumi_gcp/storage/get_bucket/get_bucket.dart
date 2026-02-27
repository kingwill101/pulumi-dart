import 'package:pulumi/pulumi.dart';
import 'get_bucket_args.dart';
import 'get_bucket_result.dart';

/// Gets an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#buckets)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/buckets).
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucket:getBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}
