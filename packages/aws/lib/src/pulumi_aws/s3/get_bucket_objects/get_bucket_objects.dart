import 'package:pulumi/pulumi.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';

/// > **NOTE:** The `aws.s3.getBucketObjects` data source is DEPRECATED and will be removed in a future version! Use `aws.s3.getObjects` instead, where new features and fixes will be added.
///
/// > **NOTE on `max_keys`:** Retrieving very large numbers of keys can adversely affect this provider's performance.
///
/// The objects data source returns keys (i.e., file names) and other metadata about objects in an S3 bucket.
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}
