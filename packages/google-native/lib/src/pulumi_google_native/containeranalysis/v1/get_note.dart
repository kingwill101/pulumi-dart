import 'package:pulumi/pulumi.dart' hide Config;
import 'get_note_args.dart';
import 'get_note_result.dart';

/// Gets the specified note.
Future<GetNoteResult> getNote(
  GetNoteArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1:getNote',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNoteResult.fromMap(result);
}
