import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_iam_policy_args.dart';
import 'get_data_exchange_iam_policy_result.dart';

/// Retrieves the current IAM policy data for dataexchange
Future<GetDataExchangeIamPolicyResult> getDataExchangeIamPolicy(
  GetDataExchangeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigqueryanalyticshub/getDataExchangeIamPolicy:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult.fromMap(result);
}
