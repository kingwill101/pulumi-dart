// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_data_configuration_bigtable_options_column_family_column.dart';

class TableExternalDataConfigurationBigtableOptionsColumnFamily {
  /// A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field.  Structure is documented below.
  final List<TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn>?
      columns;

  /// The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  final String? encoding;

  /// Identifier of the column family.
  final String? familyId;

  /// If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  final bool? onlyReadLatest;

  /// The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  final String? type;

  /// Creates a new [TableExternalDataConfigurationBigtableOptionsColumnFamily].
  /// [columns] A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field.  Structure is documented below.
  /// [encoding] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  /// [familyId] Identifier of the column family.
  /// [onlyReadLatest] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  /// [type] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  TableExternalDataConfigurationBigtableOptionsColumnFamily({
    this.columns,
    this.encoding,
    this.familyId,
    this.onlyReadLatest,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnsValue = columns;
    if (columnsValue != null) {
      map['columns'] = pulumi.Input.encodeList<
          TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn,
          Map<String, dynamic>>(columnsValue, (value) => value.toMap());
    }
    final encodingValue = encoding;
    if (encodingValue != null) {
      map['encoding'] = encodingValue;
    }
    final familyIdValue = familyId;
    if (familyIdValue != null) {
      map['familyId'] = familyIdValue;
    }
    final onlyReadLatestValue = onlyReadLatest;
    if (onlyReadLatestValue != null) {
      map['onlyReadLatest'] = onlyReadLatestValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationBigtableOptionsColumnFamily.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationBigtableOptionsColumnFamily(
      columns: map['columns'] == null
          ? null
          : pulumi.Input.decodeList<
                  TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn>(
              map['columns'],
              (value) =>
                  TableExternalDataConfigurationBigtableOptionsColumnFamilyColumn
                      .fromMap((value as Map).cast<String, dynamic>())),
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      familyId: map['familyId'] == null ? null : map['familyId'] as String,
      onlyReadLatest:
          map['onlyReadLatest'] == null ? null : map['onlyReadLatest'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
