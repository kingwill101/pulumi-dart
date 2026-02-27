// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_table_external_data_configuration_bigtable_option_column_family/get_table_external_data_configuration_bigtable_option_column_family.dart';

class GetTableExternalDataConfigurationBigtableOption {
  /// A list of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  final List<GetTableExternalDataConfigurationBigtableOptionColumnFamily>
      columnFamilies;

  /// If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final bool ignoreUnspecifiedColumnFamilies;

  /// If field is true, then each column family will be read as a single JSON column. Otherwise they are read as a repeated cell structure containing timestamp/value tuples. The default value is false.
  final bool outputColumnFamiliesAsJson;

  /// If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final bool readRowkeyAsString;

  GetTableExternalDataConfigurationBigtableOption({
    required this.columnFamilies,
    required this.ignoreUnspecifiedColumnFamilies,
    required this.outputColumnFamiliesAsJson,
    required this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnFamilies'] = pulumi.Input.encodeList<
        GetTableExternalDataConfigurationBigtableOptionColumnFamily,
        Map<String, dynamic>>(columnFamilies, (value) => value.toMap());
    map['ignoreUnspecifiedColumnFamilies'] = ignoreUnspecifiedColumnFamilies;
    map['outputColumnFamiliesAsJson'] = outputColumnFamiliesAsJson;
    map['readRowkeyAsString'] = readRowkeyAsString;
    return map;
  }

  factory GetTableExternalDataConfigurationBigtableOption.fromMap(
      Map<String, dynamic> map) {
    return GetTableExternalDataConfigurationBigtableOption(
      columnFamilies: pulumi.Input.decodeList<
              GetTableExternalDataConfigurationBigtableOptionColumnFamily>(
          map['columnFamilies'],
          (value) => GetTableExternalDataConfigurationBigtableOptionColumnFamily
              .fromMap((value as Map).cast<String, dynamic>())),
      ignoreUnspecifiedColumnFamilies:
          map['ignoreUnspecifiedColumnFamilies'] as bool,
      outputColumnFamiliesAsJson: map['outputColumnFamiliesAsJson'] as bool,
      readRowkeyAsString: map['readRowkeyAsString'] as bool,
    );
  }
}
