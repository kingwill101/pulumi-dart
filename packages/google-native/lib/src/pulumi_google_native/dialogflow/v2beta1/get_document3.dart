import 'package:pulumi/pulumi.dart' hide Config;
import 'get_document_args3.dart';
import 'get_document_result3.dart';

/// Retrieves the specified document. Note: The `projects.agent.knowledgeBases.documents` resource is deprecated; only use `projects.knowledgeBases.documents`.
Future<GetDocumentResult3> getDocument3(
  GetDocumentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDocumentResult3.fromMap(result);
}
