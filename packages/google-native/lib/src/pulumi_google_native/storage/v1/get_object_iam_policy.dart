import 'package:pulumi/pulumi.dart' hide Config;
import 'get_object_iam_policy_args.dart';
import 'get_object_iam_policy_result.dart';

/// Returns an IAM policy for the specified object.
Future<GetObjectIamPolicyResult> getObjectIamPolicy(
  GetObjectIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:storage/v1:getObjectIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetObjectIamPolicyResult.fromMap(result);
}
