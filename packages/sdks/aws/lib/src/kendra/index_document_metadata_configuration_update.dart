// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'index_document_metadata_configuration_update_relevance.dart';
import 'index_document_metadata_configuration_update_search.dart';

class IndexDocumentMetadataConfigurationUpdate {
  /// The name of the index field. Minimum length of 1. Maximum length of 30.
  final pulumi.Input<String> name;
  /// A block that provides manual tuning parameters to determine how the field affects the search results. Detailed below
  final pulumi.Input<IndexDocumentMetadataConfigurationUpdateRelevance>? relevance;
  /// A block that provides information about how the field is used during a search. Documented below. Detailed below
  final pulumi.Input<IndexDocumentMetadataConfigurationUpdateSearch>? search;
  /// The data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  final pulumi.Input<String> type;

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
    return <String, dynamic>{
      'name': name,
      'relevance': ?pulumi.Input.mapOptionalInputValue<IndexDocumentMetadataConfigurationUpdateRelevance, Map<String, dynamic>>(relevance, (value) => value.toMap()),
      'search': ?pulumi.Input.mapOptionalInputValue<IndexDocumentMetadataConfigurationUpdateSearch, Map<String, dynamic>>(search, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IndexDocumentMetadataConfigurationUpdate.fromMap(Map<String, dynamic> map) {
    return IndexDocumentMetadataConfigurationUpdate(
      name: (map['name'] as String).input(),
      relevance: map['relevance'] == null ? null : (IndexDocumentMetadataConfigurationUpdateRelevance.fromMap((map['relevance'] as Map).cast<String, dynamic>())).input(),
      search: map['search'] == null ? null : (IndexDocumentMetadataConfigurationUpdateSearch.fromMap((map['search'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

