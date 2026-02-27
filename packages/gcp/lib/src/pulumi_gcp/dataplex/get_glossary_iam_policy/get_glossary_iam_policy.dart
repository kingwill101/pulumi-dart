import 'package:pulumi/pulumi.dart';
import 'get_glossary_iam_policy_args.dart';
import 'get_glossary_iam_policy_result.dart';

/// Retrieves the current IAM policy data for glossary
Future<GetGlossaryIamPolicyResult> getGlossaryIamPolicy(
  GetGlossaryIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getGlossaryIamPolicy:getGlossaryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlossaryIamPolicyResult.fromMap(result);
}
