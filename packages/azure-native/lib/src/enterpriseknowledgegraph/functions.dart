import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_enterprise_knowledge_graph_args.dart';
import 'get_enterprise_knowledge_graph_result.dart';

/// Returns a EnterpriseKnowledgeGraph service specified by the parameters.
///
/// Uses Azure REST API version 2018-12-03.
/// [args] Arguments passed to this invoke. {@macro pulumi_enterpriseknowledgegraph_get_enterprise_knowledge_graph_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnterpriseKnowledgeGraphResult> getEnterpriseKnowledgeGraph(
  GetEnterpriseKnowledgeGraphArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:enterpriseknowledgegraph:getEnterpriseKnowledgeGraph',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnterpriseKnowledgeGraphResult.fromMap(result);
}
