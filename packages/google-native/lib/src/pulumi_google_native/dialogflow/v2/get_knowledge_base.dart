import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_knowledge_base_args.dart';
import 'get_knowledge_base_result.dart';

/// Retrieves the specified knowledge base.
Future<GetKnowledgeBaseResult> getKnowledgeBase(
  GetKnowledgeBaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getKnowledgeBase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeBaseResult.fromMap(result);
}
