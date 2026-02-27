import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_note_args.dart';
import 'get_note_result.dart';

/// Gets the specified note.
Future<GetNoteResult> getNote(
  GetNoteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNote',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNoteResult.fromMap(result);
}
