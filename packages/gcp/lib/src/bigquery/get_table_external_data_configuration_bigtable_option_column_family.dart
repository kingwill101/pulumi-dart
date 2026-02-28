// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_external_data_configuration_bigtable_option_column_family_column.dart';

class GetTableExternalDataConfigurationBigtableOptionColumnFamily {
  /// A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field
  final List<GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn>
      columns;

  /// The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  final String encoding;

  /// Identifier of the column family.
  final String familyId;

  /// If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  final bool onlyReadLatest;

  /// The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  final String type;

  /// Creates a new [GetTableExternalDataConfigurationBigtableOptionColumnFamily].
  /// [columns] A List of columns that should be exposed as individual fields as opposed to a list of (column name, value) pairs. All columns whose qualifier matches a qualifier in this list can be accessed as Other columns can be accessed as a list through column field
  /// [encoding] The encoding of the values when the type is not STRING. Acceptable encoding values are: TEXT - indicates values are alphanumeric text strings. BINARY - indicates values are encoded using HBase Bytes.toBytes family of functions. This can be overridden for a specific column by listing that column in 'columns' and specifying an encoding for it.
  /// [familyId] Identifier of the column family.
  /// [onlyReadLatest] If this is set only the latest version of value are exposed for all columns in this column family. This can be overridden for a specific column by listing that column in 'columns' and specifying a different setting for that column.
  /// [type] The type to convert the value in cells of this column family. The values are expected to be encoded using HBase Bytes.toBytes function when using the BINARY encoding value. Following BigQuery types are allowed (case-sensitive): "BYTES", "STRING", "INTEGER", "FLOAT", "BOOLEAN", "JSON". Default type is BYTES. This can be overridden for a specific column by listing that column in 'columns' and specifying a type for it.
  GetTableExternalDataConfigurationBigtableOptionColumnFamily({
    required this.columns,
    required this.encoding,
    required this.familyId,
    required this.onlyReadLatest,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columns'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn,
        Map<String, dynamic>>(columns, (value) => value.toMap());
    map['encoding'] = encoding;
    map['familyId'] = familyId;
    map['onlyReadLatest'] = onlyReadLatest;
    map['type'] = type;
    return map;
  }

  factory GetTableExternalDataConfigurationBigtableOptionColumnFamily.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationBigtableOptionColumnFamily(
      columns: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn>(
          map['columns'],
          (value) =>
              GetTableExternalDataConfigurationBigtableOptionColumnFamilyColumn
                  .fromMap((value as Map).cast<String, dynamic>())),
      encoding: map['encoding'] as String,
      familyId: map['familyId'] as String,
      onlyReadLatest: map['onlyReadLatest'] as bool,
      type: map['type'] as String,
    );
  }
}
