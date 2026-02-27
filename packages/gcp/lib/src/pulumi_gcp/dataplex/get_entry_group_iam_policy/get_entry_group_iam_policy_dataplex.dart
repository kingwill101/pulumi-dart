import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_iam_policy_dataplex_args.dart';
import 'get_entry_group_iam_policy_dataplex_result.dart';

/// Retrieves the current IAM policy data for entrygroup
Future<GetEntryGroupIamPolicyDataplexResult> getEntryGroupIamPolicyDataplex(
  GetEntryGroupIamPolicyDataplexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyDataplexResult.fromMap(result);
}
