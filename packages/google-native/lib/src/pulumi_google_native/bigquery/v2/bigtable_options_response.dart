// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bigtable_column_family_response.dart';

class BigtableOptionsResponse {
  /// [Optional] List of column families to expose in the table schema along with their types. This list restricts the column families that can be referenced in queries and specifies their value types. You can use this list to do type conversions - see the 'type' field for more details. If you leave this list empty, all column families are present in the table schema and their values are read as BYTES. During a query only the column families referenced in that query are read from Bigtable.
  final List<BigtableColumnFamilyResponse> columnFamilies;

  /// [Optional] If field is true, then the column families that are not specified in columnFamilies list are not exposed in the table schema. Otherwise, they are read with BYTES type values. The default value is false.
  final bool ignoreUnspecifiedColumnFamilies;

  /// [Optional] If field is true, then the rowkey column families will be read and converted to string. Otherwise they are read with BYTES type values and users need to manually cast them with CAST if necessary. The default value is false.
  final bool readRowkeyAsString;

  BigtableOptionsResponse({
    required this.columnFamilies,
    required this.ignoreUnspecifiedColumnFamilies,
    required this.readRowkeyAsString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnFamilies'] = pulumi.Input.encodeList<
        BigtableColumnFamilyResponse,
        Map<String, dynamic>>(columnFamilies, (value) => value.toMap());
    map['ignoreUnspecifiedColumnFamilies'] = ignoreUnspecifiedColumnFamilies;
    map['readRowkeyAsString'] = readRowkeyAsString;
    return map;
  }

  factory BigtableOptionsResponse.fromMap(Map<String, dynamic> map) {
    return BigtableOptionsResponse(
      columnFamilies: pulumi.Input.decodeList<BigtableColumnFamilyResponse>(
          map['columnFamilies'],
          (value) => BigtableColumnFamilyResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      ignoreUnspecifiedColumnFamilies:
          map['ignoreUnspecifiedColumnFamilies'] as bool,
      readRowkeyAsString: map['readRowkeyAsString'] as bool,
    );
  }
}
