// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_index_document_metadata_configuration_update_relevance.dart';
import 'get_index_document_metadata_configuration_update_search.dart';

class GetIndexDocumentMetadataConfigurationUpdate {
  /// Name of the index field. Minimum length of 1. Maximum length of 30.
  final pulumi.Input<String> name;
  /// Block that provides manual tuning parameters to determine how the field affects the search results. Documented below.
  final pulumi.Input<List<GetIndexDocumentMetadataConfigurationUpdateRelevance>> relevances;
  /// Block that provides information about how the field is used during a search. Documented below.
  final pulumi.Input<List<GetIndexDocumentMetadataConfigurationUpdateSearch>> searches;
  /// Data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetIndexDocumentMetadataConfigurationUpdate].
  /// [name] Name of the index field. Minimum length of 1. Maximum length of 30.
  /// [relevances] Block that provides manual tuning parameters to determine how the field affects the search results. Documented below.
  /// [searches] Block that provides information about how the field is used during a search. Documented below.
  /// [type] Data type of the index field. Valid values are `STRING_VALUE`, `STRING_LIST_VALUE`, `LONG_VALUE`, `DATE_VALUE`.
  GetIndexDocumentMetadataConfigurationUpdate({
    required this.name,
    required this.relevances,
    required this.searches,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'relevances': pulumi.Input.mapInputValue<List<GetIndexDocumentMetadataConfigurationUpdateRelevance>, List<Map<String, dynamic>>>(relevances, (value) => pulumi.Input.encodeList<GetIndexDocumentMetadataConfigurationUpdateRelevance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searches': pulumi.Input.mapInputValue<List<GetIndexDocumentMetadataConfigurationUpdateSearch>, List<Map<String, dynamic>>>(searches, (value) => pulumi.Input.encodeList<GetIndexDocumentMetadataConfigurationUpdateSearch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetIndexDocumentMetadataConfigurationUpdate.fromMap(Map<String, dynamic> map) {
    return GetIndexDocumentMetadataConfigurationUpdate(
      name: (map['name'] as String).input(),
      relevances: (pulumi.Input.decodeList<GetIndexDocumentMetadataConfigurationUpdateRelevance>(map['relevances'], (value) => GetIndexDocumentMetadataConfigurationUpdateRelevance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      searches: (pulumi.Input.decodeList<GetIndexDocumentMetadataConfigurationUpdateSearch>(map['searches'], (value) => GetIndexDocumentMetadataConfigurationUpdateSearch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

