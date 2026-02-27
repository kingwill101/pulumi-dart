import 'package:pulumi/pulumi.dart';
import 'get_image_iam_policy_args.dart';
import 'get_image_iam_policy_result.dart';

/// Retrieves the current IAM policy data for image
Future<GetImageIamPolicyResult> getImageIamPolicy(
  GetImageIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getImageIamPolicy:getImageIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyResult.fromMap(result);
}
