import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_knowledge_base_attachment_args.dart';

class GenaiAgentKnowledgeBaseAttachment extends pulumi.CustomResource {
  /// A unique identifier for an agent.
  late final pulumi.Output<String> agentUuid;
  /// A unique identifier for a knowledge base.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Creates a new [GenaiAgentKnowledgeBaseAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiAgentKnowledgeBaseAttachment]. {@macro pulumi_index_genai_agent_knowledge_base_attachment_genai_agent_knowledge_base_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiAgentKnowledgeBaseAttachment(
    String name, {
    GenaiAgentKnowledgeBaseAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgentKnowledgeBaseAttachment:GenaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentUuid = registerOutput<String>('agentUuid');
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }
}
