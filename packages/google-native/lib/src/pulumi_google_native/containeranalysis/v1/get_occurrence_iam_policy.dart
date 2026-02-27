import 'package:pulumi/pulumi.dart' hide Config;
import 'get_occurrence_iam_policy_args.dart';
import 'get_occurrence_iam_policy_result.dart';

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
Future<GetOccurrenceIamPolicyResult> getOccurrenceIamPolicy(
  GetOccurrenceIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getOccurrenceIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyResult.fromMap(result);
}
