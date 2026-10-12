// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_document_metadata_configuration_update_relevance.dart';
import 'index_document_metadata_configuration_update_search.dart';

class IndexDocumentMetadataConfigurationUpdate {
  /// Name of the index field. Minimum length of 1. Maximum length of 30.
  final pulumi.Input<String> name;
  /// Block that provides manual tuning parameters to determine how the field affects the search results. Detailed below
  final pulumi.Input<IndexDocumentMetadataConfigurationUpdateRelevance?>? relevance;
  /// Block that provides information about how the field is used during a search. Detailed below
  final pulumi.Input<IndexDocumentMetadataConfigurationUpdateSearch?>? search;
  /// Data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  final pulumi.Input<String> type;

  /// Creates a new [IndexDocumentMetadataConfigurationUpdate].
  /// [name] Name of the index field. Minimum length of 1. Maximum length of 30.
  /// [relevance] Block that provides manual tuning parameters to determine how the field affects the search results. Detailed below
  /// [search] Block that provides information about how the field is used during a search. Detailed below
  /// [type] Data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  const IndexDocumentMetadataConfigurationUpdate({
    required this.name,
    this.relevance,
    this.search,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'relevance': ?pulumi.Input.mapOptionalInputValue<IndexDocumentMetadataConfigurationUpdateRelevance, Map<String, dynamic>>(relevance, (value) => value.toMap()),
      'search': ?pulumi.Input.mapOptionalInputValue<IndexDocumentMetadataConfigurationUpdateSearch, Map<String, dynamic>>(search, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IndexDocumentMetadataConfigurationUpdate.fromMap(Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdate(
      name: pulumi.Input.fromValue(map['name'] as String),
      relevance: (() { final guardedValue = map['relevance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDocumentMetadataConfigurationUpdateRelevance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexDocumentMetadataConfigurationUpdateSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
