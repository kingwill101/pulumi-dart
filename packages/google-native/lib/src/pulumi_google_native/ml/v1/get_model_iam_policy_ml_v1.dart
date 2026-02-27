import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_iam_policy_ml_v1_args.dart';
import 'get_model_iam_policy_ml_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetModelIamPolicyMlV1Result> getModelIamPolicyMlV1(
  GetModelIamPolicyMlV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getModelIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelIamPolicyMlV1Result.fromMap(result);
}
