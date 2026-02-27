import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_iam_policy_containeranalysis_v1beta1_args.dart';
import 'get_note_iam_policy_containeranalysis_v1beta1_result.dart';

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
Future<GetNoteIamPolicyContaineranalysisV1beta1Result>
    getNoteIamPolicyContaineranalysisV1beta1(
  GetNoteIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNoteIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteIamPolicyContaineranalysisV1beta1Result.fromMap(result);
}
