// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'hive_table_options.dart';
import 'table_type.dart';

/// The set of arguments for Table.
class TableArgs {
  final Input<String> catalogId;
  final Input<String> databaseId;

  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  final Input<String>? etag;

  /// Options of a Hive table.
  final Input<HiveTableOptions>? hiveOptions;
  final Input<String>? location;
  final Input<String>? project;

  /// Required. The ID to use for the table, which will become the final component of the table's resource name.
  final Input<String> tableId;

  /// The table type.
  final Input<TableType>? type;

  TableArgs({
    required this.catalogId,
    required this.databaseId,
    this.etag,
    this.hiveOptions,
    this.location,
    this.project,
    required this.tableId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseId'] = databaseId;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final hiveOptionsValue = hiveOptions;
    if (hiveOptionsValue != null) {
      map['hiveOptions'] =
          Input.mapOptionalInputValue<HiveTableOptions, Map<String, dynamic>>(
              hiveOptionsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tableId'] = tableId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<TableType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      etag: Input.asOptionalInput<String>(map['etag']),
      hiveOptions: Input.asOptionalInput<HiveTableOptions>(map['hiveOptions']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tableId: Input.asInput<String>(map['tableId']),
      type: Input.asOptionalInput<TableType>(map['type']),
    );
  }
}
