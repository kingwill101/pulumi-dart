import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_occurrence_iam_policy_containeranalysis_v1alpha1_args.dart';
import 'get_occurrence_iam_policy_containeranalysis_v1alpha1_result.dart';

/// Gets the access control policy for a note or an `Occurrence` resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. Attempting to call this method on a resource without the required permission will result in a `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and projects/{PROJECT_ID}/notes/{NOTE_ID} for notes
Future<GetOccurrenceIamPolicyContaineranalysisV1alpha1Result>
    getOccurrenceIamPolicyContaineranalysisV1alpha1(
  GetOccurrenceIamPolicyContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getOccurrenceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOccurrenceIamPolicyContaineranalysisV1alpha1Result.fromMap(result);
}
