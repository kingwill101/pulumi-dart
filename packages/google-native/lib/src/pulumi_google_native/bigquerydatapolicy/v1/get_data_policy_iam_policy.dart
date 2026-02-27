import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_policy_iam_policy_args.dart';
import 'get_data_policy_iam_policy_result.dart';

/// Gets the IAM policy for the specified data policy.
Future<GetDataPolicyIamPolicyResult> getDataPolicyIamPolicy(
  GetDataPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigquerydatapolicy/v1:getDataPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataPolicyIamPolicyResult.fromMap(result);
}
