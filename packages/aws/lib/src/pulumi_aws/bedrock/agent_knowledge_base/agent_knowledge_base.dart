import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_knowledge_base_knowledge_base_configuration/agent_knowledge_base_knowledge_base_configuration.dart';
import '../agent_knowledge_base_storage_configuration/agent_knowledge_base_storage_configuration.dart';
import '../agent_knowledge_base_timeouts/agent_knowledge_base_timeouts.dart';
import 'agent_knowledge_base_args.dart';

/// Resource for managing an AWS Agents for Amazon Bedrock Knowledge Base.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Kendra Knowledge Base
///
///
///
/// ### Structured Data Store
///
///
///
/// ### OpenSearch Managed Cluster Configuration
///
///
///
/// ### With Supplemental Data Storage Configuration
///
///
///
/// ### S3 Vectors Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Agents for Amazon Bedrock Knowledge Base using the knowledge base ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase example EMDPPAYPZI
/// ```
class AgentKnowledgeBase extends pulumi.CustomResource {
  /// ARN of the knowledge base.
  late final pulumi.Output<String> arn;

  /// Time at which the knowledge base was created.
  late final pulumi.Output<String> createdAt;

  /// Description of the knowledge base.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<List<String>> failureReasons;

  /// Details about the embeddings configuration of the knowledge base. See `knowledge_base_configuration` block for details.
  late final pulumi.Output<AgentKnowledgeBaseKnowledgeBaseConfiguration>
      knowledgeBaseConfiguration;

  /// Name of the knowledge base.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role with permissions to invoke API operations on the knowledge base.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;

  /// Details about the storage configuration of the knowledge base. See `storage_configuration` block for details.
  late final pulumi.Output<AgentKnowledgeBaseStorageConfiguration?>
      storageConfiguration;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AgentKnowledgeBaseTimeouts?> timeouts;

  /// Time at which the knowledge base was last updated.
  late final pulumi.Output<String> updatedAt;

  AgentKnowledgeBase(
    String name, {
    AgentKnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentKnowledgeBase:AgentKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.description = registerOutput<String?>('description');
    this.failureReasons = registerOutput<List<String>>('failureReasons');
    this.knowledgeBaseConfiguration =
        registerOutput<AgentKnowledgeBaseKnowledgeBaseConfiguration>(
            'knowledgeBaseConfiguration');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.storageConfiguration =
        registerOutput<AgentKnowledgeBaseStorageConfiguration?>(
            'storageConfiguration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentKnowledgeBaseTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
