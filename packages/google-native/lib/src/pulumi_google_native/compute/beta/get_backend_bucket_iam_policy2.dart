import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backend_bucket_iam_policy_args2.dart';
import 'get_backend_bucket_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetBackendBucketIamPolicyResult2> getBackendBucketIamPolicy2(
  GetBackendBucketIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendBucketIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyResult2.fromMap(result);
}
