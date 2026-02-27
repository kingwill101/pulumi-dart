import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_iam_policy_args.dart';
import 'get_note_iam_policy_result.dart';

/// Retrieves the current IAM policy data for note
Future<GetNoteIamPolicyResult> getNoteIamPolicy(
  GetNoteIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:containeranalysis/getNoteIamPolicy:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyResult.fromMap(result);
}
