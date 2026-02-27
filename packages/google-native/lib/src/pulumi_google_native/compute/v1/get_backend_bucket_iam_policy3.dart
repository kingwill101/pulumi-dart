import 'package:pulumi/pulumi.dart' hide Config;
import 'get_backend_bucket_iam_policy_args3.dart';
import 'get_backend_bucket_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetBackendBucketIamPolicyResult3> getBackendBucketIamPolicy3(
  GetBackendBucketIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucketIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyResult3.fromMap(result);
}
