import 'package:pulumi/pulumi.dart';
import 'get_document_args5.dart';
import 'get_document_result5.dart';

/// Gets a Document.
Future<GetDocumentResult5> getDocument5(
  GetDocumentArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult5.fromMap(result);
}
