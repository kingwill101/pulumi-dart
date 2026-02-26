import 'package:pulumi/pulumi.dart';
import 'get_note_args2.dart';
import 'get_note_result2.dart';

/// Returns the requested `Note`.
Future<GetNoteResult2> getNote2(
  GetNoteArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:containeranalysis/v1alpha1:getNote',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNoteResult2.fromMap(result);
}
