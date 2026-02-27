import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_content_args.dart';
import 'get_bucket_object_content_result.dart';

/// Gets an existing object content inside an existing bucket in Google Cloud Storage service (GCS).
/// See [the official documentation](https://cloud.google.com/storage/docs/key-terms#objects)
/// and
/// [API](https://cloud.google.com/storage/docs/json_api/v1/objects).
///
/// > **Warning:** The object content will be saved in the state, and visible to everyone who has access to the state file.
///
/// ## Example Usage
///
/// Example file object  stored within a folder.
Future<GetBucketObjectContentResult> getBucketObjectContent(
  GetBucketObjectContentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketObjectContent:getBucketObjectContent',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectContentResult.fromMap(result);
}
