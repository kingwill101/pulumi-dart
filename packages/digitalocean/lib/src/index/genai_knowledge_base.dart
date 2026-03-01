import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_knowledge_base_args.dart';
import 'genai_knowledge_base_last_indexing_job.dart';
import 'gradientai_knowledge_base_data_source.dart';

class GenaiKnowledgeBase extends pulumi.CustomResource {
  /// The time when the knowledge base was added to the agent.
  late final pulumi.Output<String?> addedToAgentAt;
  /// The time when the knowledge base was created.
  late final pulumi.Output<String> createdAt;
  /// The unique identifier of the DigitalOcean OpenSearch database this knowledge base will use
  late final pulumi.Output<String?> databaseId;
  /// Data sources for the knowledge base
  late final pulumi.Output<List<GradientaiKnowledgeBaseDataSource>> datasources;
  /// The unique identifier of the embedding model
  late final pulumi.Output<String> embeddingModelUuid;
  /// Indicates whether the knowledge base is public or private.
  late final pulumi.Output<bool?> isPublic;
  /// The last indexing job for the knowledge base.
  late final pulumi.Output<List<GenaiKnowledgeBaseLastIndexingJob>?> lastIndexingJobs;
  /// The name of the knowledge base.
  late final pulumi.Output<String> name;
  /// The unique identifier of the project to which the knowledge base belongs.
  late final pulumi.Output<String> projectId;
  late final pulumi.Output<String> region;
  late final pulumi.Output<List<String>?> tags;
  /// The unique identifier of the VPC to which the knowledge base belongs.
  late final pulumi.Output<String?> vpcUuid;

  /// Creates a new [GenaiKnowledgeBase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiKnowledgeBase]. {@macro pulumi_index_genai_knowledge_base_genai_knowledge_base_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiKnowledgeBase(
    String name, {
    GenaiKnowledgeBaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiKnowledgeBase:GenaiKnowledgeBase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addedToAgentAt = registerOutput<String?>('addedToAgentAt');
    this.createdAt = registerOutput<String>('createdAt');
    this.databaseId = registerOutput<String?>('databaseId');
    this.datasources = registerOutput<List<GradientaiKnowledgeBaseDataSource>>('datasources');
    this.embeddingModelUuid = registerOutput<String>('embeddingModelUuid');
    this.isPublic = registerOutput<bool?>('isPublic');
    this.lastIndexingJobs = registerOutput<List<GenaiKnowledgeBaseLastIndexingJob>?>('lastIndexingJobs');
    this.name = registerOutput<String>('name');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<List<String>?>('tags');
    this.vpcUuid = registerOutput<String?>('vpcUuid');
  }
}
