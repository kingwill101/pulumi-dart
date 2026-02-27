import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_iam_policy_args.dart';
import 'get_backend_bucket_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetBackendBucketIamPolicyResult> getBackendBucketIamPolicy(
  GetBackendBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyResult.fromMap(result);
}
