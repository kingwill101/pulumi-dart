import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_occurrence_iam_policy_containeranalysis_v1beta1_args.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1beta1_result.dart';

/// Gets the access control policy for a note or an occurrence resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. The resource takes the format `projects/[PROJECT_ID]/notes/[NOTE_ID]` for notes and `projects/[PROJECT_ID]/occurrences/[OCCURRENCE_ID]` for occurrences.
Future<GetOccurrenceIamPolicyContaineranalysisV1beta1Result>
    getOccurrenceIamPolicyContaineranalysisV1beta1(
  GetOccurrenceIamPolicyContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getOccurrenceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyContaineranalysisV1beta1Result.fromMap(result);
}
