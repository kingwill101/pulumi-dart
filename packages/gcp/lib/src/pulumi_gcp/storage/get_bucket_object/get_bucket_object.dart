import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';

/// Gets an existing object inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
///
/// ## Example Usage
///
/// Example picture stored within a folder.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObject:getBucketObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}
