import 'package:pulumi/pulumi.dart' hide Config;
import 'get_note_iam_policy_args3.dart';
import 'get_note_iam_policy_result3.dart';

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
Future<GetNoteIamPolicyResult3> getNoteIamPolicy3(
  GetNoteIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNoteIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyResult3.fromMap(result);
}
