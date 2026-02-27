import 'package:pulumi/pulumi.dart' hide Config;
import 'get_image_iam_policy_args.dart';
import 'get_image_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetImageIamPolicyResult> getImageIamPolicy(
  GetImageIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getImageIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyResult.fromMap(result);
}
