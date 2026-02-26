// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_index_document_metadata_configuration_update_relevance/get_index_document_metadata_configuration_update_relevance.dart';
import '../get_index_document_metadata_configuration_update_search/get_index_document_metadata_configuration_update_search.dart';

class GetIndexDocumentMetadataConfigurationUpdate {
  /// Name of the index field. Minimum length of 1. Maximum length of 30.
  final String name;

  /// Block that provides manual tuning parameters to determine how the field affects the search results. Documented below.
  final List<GetIndexDocumentMetadataConfigurationUpdateRelevance> relevances;

  /// Block that provides information about how the field is used during a search. Documented below.
  final List<GetIndexDocumentMetadataConfigurationUpdateSearch> searches;

  /// Data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  final String type;

  GetIndexDocumentMetadataConfigurationUpdate({
    required this.name,
    required this.relevances,
    required this.searches,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['relevances'] = Input.encodeList<
        GetIndexDocumentMetadataConfigurationUpdateRelevance,
        Map<String, dynamic>>(relevances, (value) => value.toMap());
    map['searches'] = Input.encodeList<
        GetIndexDocumentMetadataConfigurationUpdateSearch,
        Map<String, dynamic>>(searches, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory GetIndexDocumentMetadataConfigurationUpdate.fromMap(
      Map<String, dynamic> map) {
    return GetIndexDocumentMetadataConfigurationUpdate(
      name: map['name'] as String,
      relevances: Input.decodeList<
              GetIndexDocumentMetadataConfigurationUpdateRelevance>(
          map['relevances'],
          (value) =>
              GetIndexDocumentMetadataConfigurationUpdateRelevance.fromMap(
                  (value as Map).cast<String, dynamic>())),
      searches:
          Input.decodeList<GetIndexDocumentMetadataConfigurationUpdateSearch>(
              map['searches'],
              (value) =>
                  GetIndexDocumentMetadataConfigurationUpdateSearch.fromMap(
                      (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
