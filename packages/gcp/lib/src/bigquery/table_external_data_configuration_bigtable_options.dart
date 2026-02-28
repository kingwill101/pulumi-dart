// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_external_data_configuration_bigtable_options_column_family.dart';

class TableExternalDataConfigurationBigtableOptions {
  /// A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.  Structure is documented below.
  final List<TableExternalDataConfigurationBigtableOptionsColumnFamily>?
      columnFamilies;

  /// If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final bool? ignoreUnspecifiedColumnFamilies;

  /// If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  final bool? outputColumnFamiliesAsJson;

  /// If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final bool? readRowkeyAsString;

  /// Creates a new [TableExternalDataConfigurationBigtableOptions].
  /// [columnFamilies] A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.  Structure is documented below.
  /// [ignoreUnspecifiedColumnFamilies] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  /// [outputColumnFamiliesAsJson] If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  /// [readRowkeyAsString] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  TableExternalDataConfigurationBigtableOptions({
    this.columnFamilies,
    this.ignoreUnspecifiedColumnFamilies,
    this.outputColumnFamiliesAsJson,
    this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnFamiliesValue = columnFamilies;
    if (columnFamiliesValue != null) {
      map['columnFamilies'] = pulumi.Input.encodeList<
          TableExternalDataConfigurationBigtableOptionsColumnFamily,
          Map<String, dynamic>>(columnFamiliesValue, (value) => value.toMap());
    }
    final ignoreUnspecifiedColumnFamiliesValue =
        ignoreUnspecifiedColumnFamilies;
    if (ignoreUnspecifiedColumnFamiliesValue != null) {
      map['ignoreUnspecifiedColumnFamilies'] =
          ignoreUnspecifiedColumnFamiliesValue;
    }
    final outputColumnFamiliesAsJsonValue = outputColumnFamiliesAsJson;
    if (outputColumnFamiliesAsJsonValue != null) {
      map['outputColumnFamiliesAsJson'] = outputColumnFamiliesAsJsonValue;
    }
    final readRowkeyAsStringValue = readRowkeyAsString;
    if (readRowkeyAsStringValue != null) {
      map['readRowkeyAsString'] = readRowkeyAsStringValue;
    }
    return map;
  }

  factory TableExternalDataConfigurationBigtableOptions.fromMap(
      Map<String, dynamic> map) {
    return TableExternalDataConfigurationBigtableOptions(
      columnFamilies: map['columnFamilies'] == null
          ? null
          : pulumi.Input.decodeList<
                  TableExternalDataConfigurationBigtableOptionsColumnFamily>(
              map['columnFamilies'],
              (value) =>
                  TableExternalDataConfigurationBigtableOptionsColumnFamily
                      .fromMap((value as Map).cast<String, dynamic>())),
      ignoreUnspecifiedColumnFamilies:
          map['ignoreUnspecifiedColumnFamilies'] == null
              ? null
              : map['ignoreUnspecifiedColumnFamilies'] as bool,
      outputColumnFamiliesAsJson: map['outputColumnFamiliesAsJson'] == null
          ? null
          : map['outputColumnFamiliesAsJson'] as bool,
      readRowkeyAsString: map['readRowkeyAsString'] == null
          ? null
          : map['readRowkeyAsString'] as bool,
    );
  }
}
