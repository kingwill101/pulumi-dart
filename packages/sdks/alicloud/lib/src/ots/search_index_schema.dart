// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_schema_field_schema.dart';
import 'search_index_schema_index_setting.dart';
import 'search_index_schema_index_sort.dart';

class SearchIndexSchema {
  /// A list of field schemas. See `field_schema` below.
  final List<SearchIndexSchemaFieldSchema> fieldSchemas;
  /// The settings of the search index, including routingFields. See `index_setting` below.
  final List<SearchIndexSchemaIndexSetting>? indexSettings;
  /// The presorting settings of the search index, including sorters. If no value is specified for the indexSort parameter, field values are sorted by primary key by default. See `index_sort` below.
  final List<SearchIndexSchemaIndexSort>? indexSorts;

  /// Creates a new [SearchIndexSchema].
  /// [fieldSchemas] A list of field schemas. See `field_schema` below.
  /// [indexSettings] The settings of the search index, including routingFields. See `index_setting` below.
  /// [indexSorts] The presorting settings of the search index, including sorters. If no value is specified for the indexSort parameter, field values are sorted by primary key by default. See `index_sort` below.
  SearchIndexSchema({
    required this.fieldSchemas,
    this.indexSettings,
    this.indexSorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldSchemas': pulumi.Input.encodeList<SearchIndexSchemaFieldSchema, Map<String, dynamic>>(fieldSchemas, (value) => value.toMap()),
      'indexSettings': ?indexSettings == null ? null : pulumi.Input.encodeList<SearchIndexSchemaIndexSetting, Map<String, dynamic>>(indexSettings!, (value) => value.toMap()),
      'indexSorts': ?indexSorts == null ? null : pulumi.Input.encodeList<SearchIndexSchemaIndexSort, Map<String, dynamic>>(indexSorts!, (value) => value.toMap()),
    };
  }

  factory SearchIndexSchema.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchema(
      fieldSchemas: pulumi.Input.decodeList<SearchIndexSchemaFieldSchema>(map['fieldSchemas'], (value) => SearchIndexSchemaFieldSchema.fromMap((value as Map).cast<String, dynamic>())),
      indexSettings: map['indexSettings'] == null ? null : pulumi.Input.decodeList<SearchIndexSchemaIndexSetting>(map['indexSettings'], (value) => SearchIndexSchemaIndexSetting.fromMap((value as Map).cast<String, dynamic>())),
      indexSorts: map['indexSorts'] == null ? null : pulumi.Input.decodeList<SearchIndexSchemaIndexSort>(map['indexSorts'], (value) => SearchIndexSchemaIndexSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

