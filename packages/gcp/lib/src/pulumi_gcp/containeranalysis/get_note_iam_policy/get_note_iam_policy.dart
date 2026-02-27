import 'package:pulumi/pulumi.dart';
import 'get_note_iam_policy_args.dart';
import 'get_note_iam_policy_result.dart';

/// Retrieves the current IAM policy data for note
Future<GetNoteIamPolicyResult> getNoteIamPolicy(
  GetNoteIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:containeranalysis/getNoteIamPolicy:getNoteIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyResult.fromMap(result);
}
