// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_knowledge_base_data_sources_datasource_file_upload_data_source.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_last_indexing_job.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_spaces_data_source.dart';
import 'get_gradientai_knowledge_base_data_sources_datasource_web_crawler_data_source.dart';

class GetGradientaiKnowledgeBaseDataSourcesDatasource {
  /// Created At timestamp for the Knowledge Base
  final String createdAt;
  /// File upload data source configuration
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>? fileUploadDataSources;
  /// Last indexing job for the data source
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>? lastIndexingJobs;
  /// Spaces data source configuration
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>? spacesDataSources;
  /// Timestamp when the Knowledge Base was updated
  final String updatedAt;
  /// UUID of the Knowledge Base
  final String? uuid;
  /// Web crawler data source configuration
  final List<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>? webCrawlerDataSources;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesDatasource].
  /// [createdAt] Created At timestamp for the Knowledge Base
  /// [fileUploadDataSources] File upload data source configuration
  /// [lastIndexingJobs] Last indexing job for the data source
  /// [spacesDataSources] Spaces data source configuration
  /// [updatedAt] Timestamp when the Knowledge Base was updated
  /// [uuid] UUID of the Knowledge Base
  /// [webCrawlerDataSources] Web crawler data source configuration
  GetGradientaiKnowledgeBaseDataSourcesDatasource({
    required this.createdAt,
    this.fileUploadDataSources,
    this.lastIndexingJobs,
    this.spacesDataSources,
    required this.updatedAt,
    this.uuid,
    this.webCrawlerDataSources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'fileUploadDataSources': ?fileUploadDataSources == null ? null : pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource, Map<String, dynamic>>(fileUploadDataSources!, (value) => value.toMap()),
      'lastIndexingJobs': ?lastIndexingJobs == null ? null : pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob, Map<String, dynamic>>(lastIndexingJobs!, (value) => value.toMap()),
      'spacesDataSources': ?spacesDataSources == null ? null : pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource, Map<String, dynamic>>(spacesDataSources!, (value) => value.toMap()),
      'updatedAt': updatedAt,
      'uuid': ?uuid,
      'webCrawlerDataSources': ?webCrawlerDataSources == null ? null : pulumi.Input.encodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource, Map<String, dynamic>>(webCrawlerDataSources!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesDatasource.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesDatasource(
      createdAt: map['createdAt'] as String,
      fileUploadDataSources: map['fileUploadDataSources'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource>(map['fileUploadDataSources'], (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceFileUploadDataSource.fromMap((value as Map).cast<String, dynamic>())),
      lastIndexingJobs: map['lastIndexingJobs'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob>(map['lastIndexingJobs'], (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceLastIndexingJob.fromMap((value as Map).cast<String, dynamic>())),
      spacesDataSources: map['spacesDataSources'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource>(map['spacesDataSources'], (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource.fromMap((value as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      webCrawlerDataSources: map['webCrawlerDataSources'] == null ? null : pulumi.Input.decodeList<GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource>(map['webCrawlerDataSources'], (value) => GetGradientaiKnowledgeBaseDataSourcesDatasourceWebCrawlerDataSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

