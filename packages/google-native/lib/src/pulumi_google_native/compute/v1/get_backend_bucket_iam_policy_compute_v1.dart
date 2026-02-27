import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_bucket_iam_policy_compute_v1_args.dart';
import 'get_backend_bucket_iam_policy_compute_v1_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetBackendBucketIamPolicyComputeV1Result>
    getBackendBucketIamPolicyComputeV1(
  GetBackendBucketIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyComputeV1Result.fromMap(result);
}
