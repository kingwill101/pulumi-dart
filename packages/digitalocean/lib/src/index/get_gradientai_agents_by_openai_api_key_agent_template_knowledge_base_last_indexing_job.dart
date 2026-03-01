// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBaseLastIndexingJob {
  /// Number of completed datasources in the last indexing job
  final int? completedDatasources;
  /// Created At timestamp for the last indexing job
  final String createdAt;
  /// Datasource UUIDs for the last indexing job
  final List<String>? dataSourceUuids;
  /// Timestamp when the last indexing job finished
  final String finishedAt;
  /// UUID  of the Knowledge Base for the last indexing job
  final String knowledgeBaseUuid;
  /// Phase of the last indexing job
  final String? phase;
  /// Timestamp when the last indexing job started
  final String startedAt;
  /// Number of tokens processed in the last indexing job
  final int? tokens;
  /// Total number of datasources in the last indexing job
  final int? totalDatasources;
  /// Timestamp when the last indexing job updated
  final String updatedAt;
  /// UUID  of the last indexing job
  final String? uuid;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBaseLastIndexingJob].
  /// [completedDatasources] Number of completed datasources in the last indexing job
  /// [createdAt] Created At timestamp for the last indexing job
  /// [dataSourceUuids] Datasource UUIDs for the last indexing job
  /// [finishedAt] Timestamp when the last indexing job finished
  /// [knowledgeBaseUuid] UUID  of the Knowledge Base for the last indexing job
  /// [phase] Phase of the last indexing job
  /// [startedAt] Timestamp when the last indexing job started
  /// [tokens] Number of tokens processed in the last indexing job
  /// [totalDatasources] Total number of datasources in the last indexing job
  /// [updatedAt] Timestamp when the last indexing job updated
  /// [uuid] UUID  of the last indexing job
  GetGradientaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBaseLastIndexingJob({
    this.completedDatasources,
    required this.createdAt,
    this.dataSourceUuids,
    required this.finishedAt,
    required this.knowledgeBaseUuid,
    this.phase,
    required this.startedAt,
    this.tokens,
    this.totalDatasources,
    required this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatasources': ?completedDatasources,
      'createdAt': createdAt,
      'dataSourceUuids': ?dataSourceUuids,
      'finishedAt': finishedAt,
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'phase': ?phase,
      'startedAt': startedAt,
      'tokens': ?tokens,
      'totalDatasources': ?totalDatasources,
      'updatedAt': updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBaseLastIndexingJob.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentTemplateKnowledgeBaseLastIndexingJob(
      completedDatasources: map['completedDatasources'] == null ? null : map['completedDatasources'] as int,
      createdAt: map['createdAt'] as String,
      dataSourceUuids: map['dataSourceUuids'] == null ? null : (map['dataSourceUuids'] as List).cast<String>(),
      finishedAt: map['finishedAt'] as String,
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
      phase: map['phase'] == null ? null : map['phase'] as String,
      startedAt: map['startedAt'] as String,
      tokens: map['tokens'] == null ? null : map['tokens'] as int,
      totalDatasources: map['totalDatasources'] == null ? null : map['totalDatasources'] as int,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

