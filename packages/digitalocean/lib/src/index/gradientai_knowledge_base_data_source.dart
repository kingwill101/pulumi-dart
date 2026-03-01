// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_knowledge_base_data_source_file_upload_data_source.dart';
import 'gradientai_knowledge_base_data_source_last_indexing_job.dart';
import 'gradientai_knowledge_base_data_source_spaces_data_source.dart';
import 'gradientai_knowledge_base_data_source_web_crawler_data_source.dart';

class GradientaiKnowledgeBaseDataSource {
  /// Created At timestamp for the Knowledge Base
  final String? createdAt;
  /// File upload data source configuration
  final List<GradientaiKnowledgeBaseDataSourceFileUploadDataSource>? fileUploadDataSources;
  /// Last indexing job for the data source
  final List<GradientaiKnowledgeBaseDataSourceLastIndexingJob>? lastIndexingJobs;
  /// Spaces data source configuration
  final List<GradientaiKnowledgeBaseDataSourceSpacesDataSource>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final String? updatedAt;
  /// UUID of the Knowledge Base
  final String? uuid;
  /// Web crawler data source configuration
  final List<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>? webCrawlerDataSources;

  /// Creates a new [GradientaiKnowledgeBaseDataSource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  GradientaiKnowledgeBaseDataSource({
    this.createdAt,
    this.fileUploadDataSources,
    this.lastIndexingJobs,
    this.spacesDataSources,
    this.updatedAt,
    this.uuid,
    this.webCrawlerDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'fileUploadDataSources': ?fileUploadDataSources == null ? null : pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSourceFileUploadDataSource, Map<String, dynamic>>(fileUploadDataSources!, (value) => value.toMap()),
      'lastIndexingJobs': ?lastIndexingJobs == null ? null : pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSourceLastIndexingJob, Map<String, dynamic>>(lastIndexingJobs!, (value) => value.toMap()),
      'spacesDataSources': ?spacesDataSources == null ? null : pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSourceSpacesDataSource, Map<String, dynamic>>(spacesDataSources!, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?webCrawlerDataSources == null ? null : pulumi.Input.encodeList<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSources!, (value) => value.toMap()),
    };
  }

  factory GradientaiKnowledgeBaseDataSource.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSource(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      fileUploadDataSources: map['fileUploadDataSources'] == null ? null : pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSourceFileUploadDataSource>(map['fileUploadDataSources'], (value) => GradientaiKnowledgeBaseDataSourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>())),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSourceLastIndexingJob>(map['lastIndexingJobs'], (value) => GradientaiKnowledgeBaseDataSourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      spacesDataSources: map['spacesDataSources'] == null ? null : pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSourceSpacesDataSource>(map['spacesDataSources'], (value) => GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      webCrawlerDataSources: map['webCrawlerDataSources'] == null ? null : pulumi.Input.decodeList<GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource>(map['webCrawlerDataSources'], (value) => GradientaiKnowledgeBaseDataSourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

