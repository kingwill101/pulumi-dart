import 'package:pulumi/pulumi.dart';
import 'get_directory_buckets_args.dart';
import 'get_directory_buckets_result.dart';

/// Lists Amazon S3 Express directory buckets.
Future<GetDirectoryBucketsResult> getDirectoryBuckets(
  GetDirectoryBucketsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getDirectoryBuckets:getDirectoryBuckets',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDirectoryBucketsResult.fromMap(result);
}
