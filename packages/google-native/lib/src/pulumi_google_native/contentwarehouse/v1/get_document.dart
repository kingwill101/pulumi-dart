import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_args.dart';
import 'get_document_result.dart';

/// Gets a document. Returns NOT_FOUND if the document does not exist.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contentwarehouse/v1:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}
