import 'package:pulumi/pulumi.dart' hide Config;
import 'get_note_args3.dart';
import 'get_note_result3.dart';

/// Gets the specified note.
Future<GetNoteResult3> getNote3(
  GetNoteArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1beta1:getNote',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNoteResult3.fromMap(result);
}
