import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_knowledge_base_dialogflow_v2beta1_args.dart';
import 'get_knowledge_base_dialogflow_v2beta1_result.dart';

/// Retrieves the specified knowledge base. Note: The `projects.agent.knowledgeBases` resource is deprecated; only use `projects.knowledgeBases`.
Future<GetKnowledgeBaseDialogflowV2beta1Result>
    getKnowledgeBaseDialogflowV2beta1(
  GetKnowledgeBaseDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeBaseDialogflowV2beta1Result.fromMap(result);
}
