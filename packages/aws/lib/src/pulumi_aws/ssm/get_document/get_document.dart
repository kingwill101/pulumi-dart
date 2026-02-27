import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_args.dart';
import 'get_document_result.dart';

/// Gets the contents of the specified Systems Manager document.
///
/// ## Example Usage
///
/// To get the contents of the document owned by AWS.
///
///
///
/// To get the contents of the custom document.
Future<GetDocumentResult> getDocument(
  GetDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getDocument:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult.fromMap(result);
}
