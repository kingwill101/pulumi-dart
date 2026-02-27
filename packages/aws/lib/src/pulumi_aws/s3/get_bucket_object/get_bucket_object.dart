import 'package:pulumi/pulumi.dart';
import 'get_bucket_object_args.dart';
import 'get_bucket_object_result.dart';

/// > **NOTE:** The `aws.s3.BucketObject` data source is DEPRECATED and will be removed in a future version! Use `aws.s3.BucketObjectv2` instead, where new features and fixes will be added.
///
/// The S3 object data source allows access to the metadata and
/// _optionally_ (see below) content of an object stored inside S3 bucket.
///
/// > **Note:** The content of an object (`body` field) is available only for objects which have a human-readable `Content-Type`:
///
/// * `text/*`
/// * `application/json`
/// * `application/ld+json`
/// * `application/x-httpd-php`
/// * `application/xhtml+xml`
/// * `application/x-csh`
/// * `application/x-sh`
/// * `application/xml`
/// * `application/atom+xml`
/// * `application/x-sql`
///
/// This is to prevent printing unsafe characters and potentially downloading large amount of data which would be thrown away in favor of metadata.
///
/// ## Example Usage
///
/// The following example retrieves a text object (which must have a `Content-Type`
/// value starting with `text/`) and uses it as the `user_data` for an EC2 instance:
///
///
///
/// The following, more-complex example retrieves only the metadata for a zip
/// file stored in S3, which is then used to pass the most recent `version_id`
/// to AWS Lambda for use as a function implementation. More information about
/// Lambda functions is available in the documentation for
/// `aws.lambda.Function`.
Future<GetBucketObjectResult> getBucketObject(
  GetBucketObjectArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketObject:getBucketObject',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectResult.fromMap(result);
}
