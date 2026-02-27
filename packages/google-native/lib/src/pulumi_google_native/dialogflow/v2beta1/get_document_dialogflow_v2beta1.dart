import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_document_dialogflow_v2beta1_args.dart';
import 'get_document_dialogflow_v2beta1_result.dart';

/// Retrieves the specified document. Note: The `projects.agent.knowledgeBases.documents` resource is deprecated; only use `projects.knowledgeBases.documents`.
Future<GetDocumentDialogflowV2beta1Result> getDocumentDialogflowV2beta1(
  GetDocumentDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDocumentDialogflowV2beta1Result.fromMap(result);
}
