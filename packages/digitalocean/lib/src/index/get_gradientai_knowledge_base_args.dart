// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_last_indexing_job.dart';

/// {@template pulumi_index_get_gradientai_knowledge_base_get_gradientai_knowledge_base_args_doc}
/// Arguments for getGradientaiKnowledgeBase.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_knowledge_base_get_gradientai_knowledge_base_args_doc}
class GetGradientaiKnowledgeBaseArgs {
  final pulumi.Input<String>? addedToAgentAt;
  final pulumi.Input<String>? databaseId;
  final pulumi.Input<String>? embeddingModelUuid;
  final pulumi.Input<bool>? isPublic;
  final pulumi.Input<List<GetGradientaiKnowledgeBaseLastIndexingJob>>? lastIndexingJobs;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? region;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<String>? userId;
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseArgs].
  /// [addedToAgentAt] Optional.
  /// [databaseId] Optional.
  /// [embeddingModelUuid] Optional.
  /// [isPublic] Optional.
  /// [lastIndexingJobs] Optional.
  /// [name] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [userId] Optional.
  /// [uuid] Optional.
  GetGradientaiKnowledgeBaseArgs({
    String? addedToAgentAt,
    String? databaseId,
    String? embeddingModelUuid,
    bool? isPublic,
    List<GetGradientaiKnowledgeBaseLastIndexingJob>? lastIndexingJobs,
    String? name,
    String? projectId,
    String? region,
    List<String>? tags,
    String? userId,
    String? uuid,
  }) :
      addedToAgentAt = pulumi.Input.asOptionalInput<String>(addedToAgentAt),
      databaseId = pulumi.Input.asOptionalInput<String>(databaseId),
      embeddingModelUuid = pulumi.Input.asOptionalInput<String>(embeddingModelUuid),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      lastIndexingJobs = pulumi.Input.asOptionalInput<List<GetGradientaiKnowledgeBaseLastIndexingJob>>(lastIndexingJobs),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiKnowledgeBaseLastIndexingJob>, List<Map<String, dynamic>>>(lastIndexingJobs, (value) => pulumi.Input.encodeList<GetGradientaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseArgs(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : map['addedToAgentAt'] as String,
      databaseId: map['databaseId'] == null ? null : map['databaseId'] as String,
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : map['embeddingModelUuid'] as String,
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGradientaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      userId: map['userId'] == null ? null : map['userId'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

