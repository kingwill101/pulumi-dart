import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_containeranalysis_v1beta1_args.dart';
import 'get_note_containeranalysis_v1beta1_result.dart';

/// Gets the specified note.
Future<GetNoteContaineranalysisV1beta1Result> getNoteContaineranalysisV1beta1(
  GetNoteContaineranalysisV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteContaineranalysisV1beta1Result.fromMap(result);
}
