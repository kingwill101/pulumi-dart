import 'package:pulumi/pulumi.dart';
import 'get_document_args.dart';
import 'get_document_result.dart';

/// Reads a document from a Firestore database.
/// See [the official documentation](https://cloud.google.com/firestore/native/docs/)
/// and
/// [API](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents/get/).
///
///
/// ## Example Usage
///
/// Retrieve a document from the Firestore database.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firestore/getDocument:getDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}
