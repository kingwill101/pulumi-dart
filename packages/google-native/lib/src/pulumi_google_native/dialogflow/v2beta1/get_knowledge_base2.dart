import 'package:pulumi/pulumi.dart';
import 'get_knowledge_base_args2.dart';
import 'get_knowledge_base_result2.dart';

/// Retrieves the specified knowledge base. Note: The `projects.agent.knowledgeBases` resource is deprecated; only use `projects.knowledgeBases`.
Future<GetKnowledgeBaseResult2> getKnowledgeBase2(
  GetKnowledgeBaseArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getKnowledgeBase',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeBaseResult2.fromMap(result);
}
