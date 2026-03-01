// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_stored_info_type_large_custom_dictionary_big_query_field_field.dart';
import 'prevention_stored_info_type_large_custom_dictionary_big_query_field_table.dart';

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField {
  /// Designated field in the BigQuery table.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField field;

  /// Field in a BigQuery table where each cell represents a dictionary phrase.
  /// Structure is documented below.
  final PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable table;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField].
  /// [field] Designated field in the BigQuery table.
  /// [table] Field in a BigQuery table where each cell represents a dictionary phrase.
  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField({
    required this.field,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': field.toMap(), 'table': table.toMap()};
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryField(
      field:
          PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField.fromMap(
            (map['field'] as Map).cast<String, dynamic>(),
          ),
      table:
          PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable.fromMap(
            (map['table'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
