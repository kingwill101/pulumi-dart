import 'package:pulumi/pulumi.dart';
import 'get_bucket_iam_policy_args.dart';
import 'get_bucket_iam_policy_result.dart';

/// Returns an IAM policy for the specified bucket.
Future<GetBucketIamPolicyResult> getBucketIamPolicy(
  GetBucketIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getBucketIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBucketIamPolicyResult.fromMap(result);
}
