import 'package:pulumi/pulumi.dart' hide Config;
import 'get_model_iam_policy_args2.dart';
import 'get_model_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetModelIamPolicyResult2> getModelIamPolicy2(
  GetModelIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModelIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetModelIamPolicyResult2.fromMap(result);
}
