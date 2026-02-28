// ignore_for_file: unused_element, unnecessary_cast

import 'index_document_metadata_configuration_update_relevance.dart';
import 'index_document_metadata_configuration_update_search.dart';

class IndexDocumentMetadataConfigurationUpdate {
  /// The name of the index field. Minimum length of 1. Maximum length of 30.
  final String name;

  /// A block that provides manual tuning parameters to determine how the field affects the search results. Detailed below
  final IndexDocumentMetadataConfigurationUpdateRelevance? relevance;

  /// A block that provides information about how the field is used during a search. Documented below. Detailed below
  final IndexDocumentMetadataConfigurationUpdateSearch? search;

  /// The data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  final String type;

  /// Creates a new [IndexDocumentMetadataConfigurationUpdate].
  /// [name] The name of the index field. Minimum length of 1. Maximum length of 30.
  /// [relevance] A block that provides manual tuning parameters to determine how the field affects the search results. Detailed below
  /// [search] A block that provides information about how the field is used during a search. Documented below. Detailed below
  /// [type] The data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  IndexDocumentMetadataConfigurationUpdate({
    required this.name,
    this.relevance,
    this.search,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final relevanceValue = relevance;
    if (relevanceValue != null) {
      map['relevance'] = relevanceValue.toMap();
    }
    final searchValue = search;
    if (searchValue != null) {
      map['search'] = searchValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory IndexDocumentMetadataConfigurationUpdate.fromMap(
      Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdate(
      name: map['name'] as String,
      relevance: map['relevance'] == null
          ? null
          : IndexDocumentMetadataConfigurationUpdateRelevance.fromMap(
              (map['relevance'] as Map).cast<String, dynamic>()),
      search: map['search'] == null
          ? null
          : IndexDocumentMetadataConfigurationUpdateSearch.fromMap(
              (map['search'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
