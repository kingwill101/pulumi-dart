import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directory_buckets_args.dart';
import 'get_directory_buckets_result.dart';

/// Lists Amazon S3 Express directory buckets.
Future<GetDirectoryBucketsResult> getDirectoryBuckets(
  GetDirectoryBucketsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getDirectoryBuckets:getDirectoryBuckets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDirectoryBucketsResult.fromMap(result);
}
