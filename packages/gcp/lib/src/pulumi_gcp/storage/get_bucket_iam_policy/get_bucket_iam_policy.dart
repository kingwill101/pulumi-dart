import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_iam_policy_args.dart';
import 'get_bucket_iam_policy_result.dart';

/// Retrieves the current IAM policy data for bucket
Future<GetBucketIamPolicyResult> getBucketIamPolicy(
  GetBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:storage/getBucketIamPolicy:getBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketIamPolicyResult.fromMap(result);
}
