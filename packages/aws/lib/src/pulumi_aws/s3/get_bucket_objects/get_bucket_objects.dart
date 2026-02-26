import 'package:pulumi/pulumi.dart';
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';

/// > **NOTE:** The <span pulumi-lang-nodejs="`aws.s3.getBucketObjects`" pulumi-lang-dotnet="`aws.s3.getBucketObjects`" pulumi-lang-go="`s3.getBucketObjects`" pulumi-lang-python="`s3_get_bucket_objects`" pulumi-lang-yaml="`aws.s3.getBucketObjects`" pulumi-lang-java="`aws.s3.getBucketObjects`">`aws.s3.getBucketObjects`</span> data source is DEPRECATED and will be removed in a future version! Use <span pulumi-lang-nodejs="`aws.s3.getObjects`" pulumi-lang-dotnet="`aws.s3.getObjects`" pulumi-lang-go="`s3.getObjects`" pulumi-lang-python="`s3_get_objects`" pulumi-lang-yaml="`aws.s3.getObjects`" pulumi-lang-java="`aws.s3.getObjects`">`aws.s3.getObjects`</span> instead, where new features and fixes will be added.
///
/// > **NOTE on <span pulumi-lang-nodejs="`maxKeys`" pulumi-lang-dotnet="`MaxKeys`" pulumi-lang-go="`maxKeys`" pulumi-lang-python="`max_keys`" pulumi-lang-yaml="`maxKeys`" pulumi-lang-java="`maxKeys`">`max_keys`</span>:** Retrieving very large numbers of keys can adversely affect this provider's performance.
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
