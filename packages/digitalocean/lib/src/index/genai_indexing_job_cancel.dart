import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_indexing_job_cancel_args.dart';

class GenaiIndexingJobCancel extends pulumi.CustomResource {
  /// Number of data sources that were completed before cancellation.
  late final pulumi.Output<int> completedDatasources;
  /// When the indexing job was created.
  late final pulumi.Output<String> createdAt;
  /// List of data source UUIDs associated with this indexing job.
  late final pulumi.Output<List<String>> dataSourceUuids;
  /// When the indexing job was finished.
  late final pulumi.Output<String> finishedAt;
  /// The UUID of the knowledge base associated with this indexing job.
  late final pulumi.Output<String> knowledgeBaseUuid;
  /// Current phase of the indexing job.
  late final pulumi.Output<String> phase;
  /// When the indexing job was started.
  late final pulumi.Output<String> startedAt;
  /// The status of the indexing job after cancellation.
  late final pulumi.Output<String> status;
  /// Number of tokens processed before cancellation.
  late final pulumi.Output<int> tokens;
  /// Total number of data sources in the indexing job.
  late final pulumi.Output<int> totalDatasources;
  /// Total number of items that failed during indexing.
  late final pulumi.Output<int> totalItemsFailed;
  /// Total number of items that were successfully indexed.
  late final pulumi.Output<int> totalItemsIndexed;
  /// Total number of items that were skipped during indexing.
  late final pulumi.Output<int> totalItemsSkipped;
  /// When the indexing job was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The UUID of the indexing job to cancel.
  late final pulumi.Output<String> uuid;

  /// Creates a new [GenaiIndexingJobCancel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiIndexingJobCancel]. {@macro pulumi_index_genai_indexing_job_cancel_genai_indexing_job_cancel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiIndexingJobCancel(
    String name, {
    GenaiIndexingJobCancelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiIndexingJobCancel:GenaiIndexingJobCancel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.completedDatasources = registerOutput<int>('completedDatasources');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataSourceUuids = registerOutput<List<String>>('dataSourceUuids');
    this.finishedAt = registerOutput<String>('finishedAt');
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
    this.phase = registerOutput<String>('phase');
    this.startedAt = registerOutput<String>('startedAt');
    this.status = registerOutput<String>('status');
    this.tokens = registerOutput<int>('tokens');
    this.totalDatasources = registerOutput<int>('totalDatasources');
    this.totalItemsFailed = registerOutput<int>('totalItemsFailed');
    this.totalItemsIndexed = registerOutput<int>('totalItemsIndexed');
    this.totalItemsSkipped = registerOutput<int>('totalItemsSkipped');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.uuid = registerOutput<String>('uuid');
  }
}
