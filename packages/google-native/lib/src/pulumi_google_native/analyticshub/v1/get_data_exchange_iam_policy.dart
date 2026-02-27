import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_iam_policy_args.dart';
import 'get_data_exchange_iam_policy_result.dart';

/// Gets the IAM policy.
Future<GetDataExchangeIamPolicyResult> getDataExchangeIamPolicy(
  GetDataExchangeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult.fromMap(result);
}
