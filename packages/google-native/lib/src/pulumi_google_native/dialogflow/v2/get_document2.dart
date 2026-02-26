import 'package:pulumi/pulumi.dart';
import 'get_document_args2.dart';
import 'get_document_result2.dart';

/// Retrieves the specified document.
Future<GetDocumentResult2> getDocument2(
  GetDocumentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult2.fromMap(result);
}
