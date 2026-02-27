import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datapolicyv2_data_policy_iam_policy_args.dart';
import 'get_datapolicyv2_data_policy_iam_policy_result.dart';

/// Retrieves the current IAM policy data for datapolicy
Future<GetDatapolicyv2DataPolicyIamPolicyResult>
    getDatapolicyv2DataPolicyIamPolicy(
  GetDatapolicyv2DataPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDatapolicyv2DataPolicyIamPolicy:getDatapolicyv2DataPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatapolicyv2DataPolicyIamPolicyResult.fromMap(result);
}
