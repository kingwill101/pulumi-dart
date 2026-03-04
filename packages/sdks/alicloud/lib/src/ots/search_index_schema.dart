// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_schema_field_schema.dart';
import 'search_index_schema_index_setting.dart';
import 'search_index_schema_index_sort.dart';

class SearchIndexSchema {
  /// A list of field schemas. See `field_schema` below.
  final pulumi.Input<List<SearchIndexSchemaFieldSchema>> fieldSchemas;

  /// The settings of the search index, including routingFields. See `index_setting` below.
  final pulumi.Input<List<SearchIndexSchemaIndexSetting>>? indexSettings;

  /// The presorting settings of the search index, including sorters. If no value is specified for the indexSort parameter, field values are sorted by primary key by default. See `index_sort` below.
  final pulumi.Input<List<SearchIndexSchemaIndexSort>>? indexSorts;

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
      'fieldSchemas':
          pulumi.Input.mapInputValue<
            List<SearchIndexSchemaFieldSchema>,
            List<Map<String, dynamic>>
          >(
            fieldSchemas,
            (value) =>
                pulumi.Input.encodeList<
                  SearchIndexSchemaFieldSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'indexSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<SearchIndexSchemaIndexSetting>,
            List<Map<String, dynamic>>
          >(
            indexSettings,
            (value) =>
                pulumi.Input.encodeList<
                  SearchIndexSchemaIndexSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'indexSorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<SearchIndexSchemaIndexSort>,
            List<Map<String, dynamic>>
          >(
            indexSorts,
            (value) =>
                pulumi.Input.encodeList<
                  SearchIndexSchemaIndexSort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SearchIndexSchema.fromMap(Map<String, dynamic> map) {
    return SearchIndexSchema(
      fieldSchemas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SearchIndexSchemaFieldSchema>(
          map['fieldSchemas']!,
          (value) => SearchIndexSchemaFieldSchema.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      indexSettings: (() {
        final guardedValue = map['indexSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SearchIndexSchemaIndexSetting>(
            guardedValue,
            (value) => SearchIndexSchemaIndexSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      indexSorts: (() {
        final guardedValue = map['indexSorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SearchIndexSchemaIndexSort>(
            guardedValue,
            (value) => SearchIndexSchemaIndexSort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
