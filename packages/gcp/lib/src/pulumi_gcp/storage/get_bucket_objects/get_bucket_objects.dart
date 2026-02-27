import 'package:pulumi/pulumi.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';

/// Gets existing objects inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and [API](https://cloud.google.com/storage/docs/json_api/v1/objects/list).
///
/// ## Example Usage
///
/// Example files stored within a bucket.
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}
