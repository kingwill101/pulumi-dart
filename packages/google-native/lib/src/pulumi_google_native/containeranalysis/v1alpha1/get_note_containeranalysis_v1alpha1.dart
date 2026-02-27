import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_containeranalysis_v1alpha1_args.dart';
import 'get_note_containeranalysis_v1alpha1_result.dart';

/// Returns the requested `Note`.
Future<GetNoteContaineranalysisV1alpha1Result> getNoteContaineranalysisV1alpha1(
  GetNoteContaineranalysisV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteContaineranalysisV1alpha1Result.fromMap(result);
}
