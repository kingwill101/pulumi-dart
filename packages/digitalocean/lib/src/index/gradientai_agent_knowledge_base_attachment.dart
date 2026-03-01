import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_knowledge_base_attachment_args.dart';

class GradientaiAgentKnowledgeBaseAttachment extends pulumi.CustomResource {
  /// A unique identifier for an agent.
  late final pulumi.Output<String> agentUuid;
  /// A unique identifier for a knowledge base.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Creates a new [GradientaiAgentKnowledgeBaseAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgentKnowledgeBaseAttachment]. {@macro pulumi_index_gradientai_agent_knowledge_base_attachment_gradientai_agent_knowledge_base_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgentKnowledgeBaseAttachment(
    String name, {
    GradientaiAgentKnowledgeBaseAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentKnowledgeBaseAttachment:GradientaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentUuid = registerOutput<String>('agentUuid');
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }
}
