import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entry_group_iam_policy_dataplex_v1_args.dart';
import 'get_entry_group_iam_policy_dataplex_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEntryGroupIamPolicyDataplexV1Result> getEntryGroupIamPolicyDataplexV1(
  GetEntryGroupIamPolicyDataplexV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyDataplexV1Result.fromMap(result);
}
