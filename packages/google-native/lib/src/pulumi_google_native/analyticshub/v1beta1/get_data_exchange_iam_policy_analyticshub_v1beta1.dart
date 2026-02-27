import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_iam_policy_analyticshub_v1beta1_args.dart';
import 'get_data_exchange_iam_policy_analyticshub_v1beta1_result.dart';

/// Gets the IAM policy.
Future<GetDataExchangeIamPolicyAnalyticshubV1beta1Result>
    getDataExchangeIamPolicyAnalyticshubV1beta1(
  GetDataExchangeIamPolicyAnalyticshubV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyAnalyticshubV1beta1Result.fromMap(result);
}
