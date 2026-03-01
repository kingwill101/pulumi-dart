// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_last_indexing_job.dart';

/// Result data returned by getGradientaiKnowledgeBase.
class GetGradientaiKnowledgeBaseResult {
  final String? addedToAgentAt;
  final String createdAt;
  final String? databaseId;
  final String? embeddingModelUuid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isPublic;
  final List<GetGradientaiKnowledgeBaseLastIndexingJob>? lastIndexingJobs;
  final String? name;
  final String? projectId;
  final String? region;
  final List<String>? tags;
  final String updatedAt;
  final String? userId;
  final String? uuid;

  /// Creates a new [GetGradientaiKnowledgeBaseResult].
  /// [addedToAgentAt] Optional.
  /// [createdAt] Required.
  /// [databaseId] Optional.
  /// [embeddingModelUuid] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isPublic] Optional.
  /// [lastIndexingJobs] Optional.
  /// [name] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [tags] Optional.
  /// [updatedAt] Required.
  /// [userId] Optional.
  /// [uuid] Optional.
  GetGradientaiKnowledgeBaseResult({
    this.addedToAgentAt,
    required this.createdAt,
    this.databaseId,
    this.embeddingModelUuid,
    required this.id,
    this.isPublic,
    this.lastIndexingJobs,
    this.name,
    this.projectId,
    this.region,
    this.tags,
    required this.updatedAt,
    this.userId,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': ?addedToAgentAt,
      'createdAt': createdAt,
      'databaseId': ?databaseId,
      'embeddingModelUuid': ?embeddingModelUuid,
      'id': id,
      'isPublic': ?isPublic,
      'lastIndexingJobs': ?lastIndexingJobs == null ? null : pulumi.Input.encodeList<GetGradientaiKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(lastIndexingJobs!, (value) => value.toMap()),
      'name': ?name,
      'projectId': ?projectId,
      'region': ?region,
      'tags': ?tags,
      'updatedAt': updatedAt,
      'userId': ?userId,
      'uuid': ?uuid,
    };
  }

  factory GetGradientaiKnowledgeBaseResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseResult(
      addedToAgentAt: map['addedToAgentAt'] == null ? null : map['addedToAgentAt'] as String,
      createdAt: map['createdAt'] as String,
      databaseId: map['databaseId'] == null ? null : map['databaseId'] as String,
      embeddingModelUuid: map['embeddingModelUuid'] == null ? null : map['embeddingModelUuid'] as String,
      id: map['id'] as String,
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGradientaiKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

