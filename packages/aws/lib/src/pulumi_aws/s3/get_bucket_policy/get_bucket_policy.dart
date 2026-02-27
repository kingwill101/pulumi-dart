import 'package:pulumi/pulumi.dart';
import 'get_bucket_policy_args.dart';
import 'get_bucket_policy_result.dart';

/// The bucket policy data source returns IAM policy of an S3 bucket.
///
/// ## Example Usage
///
/// The following example retrieves IAM policy of a specified S3 bucket.
Future<GetBucketPolicyResult> getBucketPolicy(
  GetBucketPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketPolicy:getBucketPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketPolicyResult.fromMap(result);
}
