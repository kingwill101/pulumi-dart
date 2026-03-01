// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_knowledge_base_data_sources_datasource.dart';

/// Result data returned by getGenaiKnowledgeBaseDataSources.
class GetGenaiKnowledgeBaseDataSourcesResult {
  final List<GetGenaiKnowledgeBaseDataSourcesDatasource> datasources;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String knowledgeBaseUuid;

  /// Creates a new [GetGenaiKnowledgeBaseDataSourcesResult].
  /// [datasources] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [knowledgeBaseUuid] Required.
  GetGenaiKnowledgeBaseDataSourcesResult({
    required this.datasources,
    required this.id,
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasources': pulumi.Input.encodeList<GetGenaiKnowledgeBaseDataSourcesDatasource, Map<String, dynamic>>(datasources, (value) => value.toMap()),
      'id': id,
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GetGenaiKnowledgeBaseDataSourcesResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseDataSourcesResult(
      datasources: pulumi.Input.decodeList<GetGenaiKnowledgeBaseDataSourcesDatasource>(map['datasources'], (value) => GetGenaiKnowledgeBaseDataSourcesDatasource.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      knowledgeBaseUuid: map['knowledgeBaseUuid'] as String,
    );
  }
}

