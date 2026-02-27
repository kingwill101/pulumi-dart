import 'package:pulumi/pulumi.dart';
import 'get_bucket_args.dart';
import 'get_bucket_result.dart';

/// Provides details about a specific S3 bucket.
///
/// This resource may prove useful when setting up a Route53 record, or an origin for a CloudFront
/// Distribution.
///
/// ## Example Usage
///
/// ### Route53 Record
///
///
///
/// ### CloudFront Origin
Future<GetBucketResult> getBucket(
  GetBucketArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucket:getBucket',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketResult.fromMap(result);
}
