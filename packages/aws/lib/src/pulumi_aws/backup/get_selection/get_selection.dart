import 'package:pulumi/pulumi.dart';
import 'get_selection_args.dart';
import 'get_selection_result.dart';

/// Use this data source to get information on an existing backup selection.
Future<GetSelectionResult> getSelection(
  GetSelectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:backup/getSelection:getSelection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSelectionResult.fromMap(result);
}
