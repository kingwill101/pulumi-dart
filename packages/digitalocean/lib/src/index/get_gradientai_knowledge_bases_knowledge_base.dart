// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_bases_knowledge_base_last_indexing_job.dart';

class GetGradientaiKnowledgeBasesKnowledgeBase {
  /// Timestamp when the Knowledge Base was added to the Agent
  final String addedToAgentAt;
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// Database ID of the Knowledge Base
  final String databaseId;
  /// Embedding model UUID for the Knowledge Base
  final String embeddingModelUuid;
  /// Indicates if the Knowledge Base is public
  final bool isPublic;
  /// Last indexing job for the Knowledge Base
  final List<GetGradientaiKnowledgeBasesKnowledgeBaseLastIndexingJob> lastIndexingJobs;
  /// Name of the Knowledge Base
  final String name;
  /// Project ID of the Knowledge Base
  final String projectId;
  /// Region of the Knowledge Base
  final String region;
  /// List of tags
  final List<String> tags;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// User ID of the Knowledge Base
  final String userId;
  /// UUID of the Knowledge Base
  final String uuid;

  /// Creates a new [GetGradientaiKnowledgeBasesKnowledgeBase].
  /// [addedToAgentAt] Timestamp when the Knowledge Base was added to the Agent
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [databaseId] Database ID of the Knowledge Base
  /// [embeddingModelUuid] Embedding model UUID for the Knowledge Base
  /// [isPublic] Indicates if the Knowledge Base is public
  /// [lastIndexingJobs] Last indexing job for the Knowledge Base
  /// [name] Name of the Knowledge Base
  /// [projectId] Project ID of the Knowledge Base
  /// [region] Region of the Knowledge Base
  /// [tags] List of tags
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [userId] User ID of the Knowledge Base
  /// [uuid] UUID of the Knowledge Base
  GetGradientaiKnowledgeBasesKnowledgeBase({
    required this.addedToAgentAt,
    required this.createdAt,
    required this.databaseId,
    required this.embeddingModelUuid,
    required this.isPublic,
    required this.lastIndexingJobs,
    required this.name,
    required this.projectId,
    required this.region,
    required this.tags,
    required this.updatedAt,
    required this.userId,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addedToAgentAt': addedToAgentAt,
      'createdAt': createdAt,
      'databaseId': databaseId,
      'embeddingModelUuid': embeddingModelUuid,
      'isPublic': isPublic,
      'lastIndexingJobs': pulumi.Input.encodeList<GetGradientaiKnowledgeBasesKnowledgeBaseLastIndexingJob, Map<String, dynamic>>(lastIndexingJobs, (value) => value.toMap()),
      'name': name,
      'projectId': projectId,
      'region': region,
      'tags': tags,
      'updatedAt': updatedAt,
      'userId': userId,
      'uuid': uuid,
    };
  }

  factory GetGradientaiKnowledgeBasesKnowledgeBase.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBasesKnowledgeBase(
      addedToAgentAt: map['addedToAgentAt'] as String,
      createdAt: map['createdAt'] as String,
      databaseId: map['databaseId'] as String,
      embeddingModelUuid: map['embeddingModelUuid'] as String,
      isPublic: map['isPublic'] as bool,
      lastIndexingJobs: pulumi.Input.decodeList<GetGradientaiKnowledgeBasesKnowledgeBaseLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGradientaiKnowledgeBasesKnowledgeBaseLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

