// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiKnowledgeBaseIndexingJobsJob {
  /// Number of datasources indexed completed
  final int completedDatasources;
  /// Creation timestamp
  final String createdAt;
  /// List of data source UUIDs
  final List<String> dataSourceUuids;
  /// Finish timestamp
  final String finishedAt;
  /// Knowledge base UUID
  final String knowledgeBaseUuid;
  /// Current phase of the batch job
  final String phase;
  /// Start timestamp
  final String startedAt;
  /// Status of the indexing job
  final String status;
  /// Number of tokens
  final int tokens;
  /// Total number of datasources being indexed
  final int totalDatasources;
  /// Total items failed
  final String totalItemsFailed;
  /// Total items indexed
  final String totalItemsIndexed;
  /// Total items skipped
  final String totalItemsSkipped;
  /// Last update timestamp
  final String updatedAt;
  /// Unique identifier of the indexing job
  final String uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsJob].
  /// [completedDatasources] Number of datasources indexed completed
  /// [createdAt] Creation timestamp
  /// [dataSourceUuids] List of data source UUIDs
  /// [finishedAt] Finish timestamp
  /// [knowledgeBaseUuid] Knowledge base UUID
  /// [phase] Current phase of the batch job
  /// [startedAt] Start timestamp
  /// [status] Status of the indexing job
  /// [tokens] Number of tokens
  /// [totalDatasources] Total number of datasources being indexed
  /// [totalItemsFailed] Total items failed
  /// [totalItemsIndexed] Total items indexed
  /// [totalItemsSkipped] Total items skipped
  /// [updatedAt] Last update timestamp
  /// [uuid] Unique identifier of the indexing job
  GetGradientaiKnowledgeBaseIndexingJobsJob({
    required this.completedDatasources,
    required this.createdAt,
    required this.dataSourceUuids,
    required this.finishedAt,
    required this.knowledgeBaseUuid,
    required this.phase,
    required this.startedAt,
    required this.status,
    required this.tokens,
    required this.totalDatasources,
    required this.totalItemsFailed,
    required this.totalItemsIndexed,
    required this.totalItemsSkipped,
    required this.updatedAt,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedDatasources': completedDatasources,
      'createdAt': createdAt,
      'dataSourceUuids': dataSourceUuids,
      'finishedAt': finishedAt,
      'knowledgeBaseUuid': knowledgeBaseUuid,
      'phase': phase,
      'startedAt': startedAt,
      'status': status,
      'tokens': tokens,
      'totalDatasources': totalDatasources,
      'totalItemsFailed': totalItemsFailed,
      'totalItemsIndexed': totalItemsIndexed,
      'totalItemsSkipped': totalItemsSkipped,
      'updatedAt': updatedAt,
      'uuid': uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsJob.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsJob(
      completedDatasources: map['completedDatasources'] as int,
      createdAt: map['createdAt'] as String,
      dataSourceUuids: (map['dataSourceUuids'] as List).cast<String>(),
      finishedAt: map['finishedAt'] as String,
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
      phase: map['phase'] as String,
      startedAt: map['startedAt'] as String,
      status: map['status'] as String,
      tokens: map['tokens'] as int,
      totalDatasources: map['totalDatasources'] as int,
      totalItemsFailed: map['totalItemsFailed'] as String,
      totalItemsIndexed: map['totalItemsIndexed'] as String,
      totalItemsSkipped: map['totalItemsSkipped'] as String,
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

