// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_options.dart';
import 'table_type.dart';

/// The set of arguments for Table.
class TableArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> databaseId;

  /// The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  final pulumi.Input<String>? etag;

  /// Options of a Hive table.
  final pulumi.Input<HiveTableOptions>? hiveOptions;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the table, which will become the final component of the table's resource name.
  final pulumi.Input<String> tableId;

  /// The table type.
  final pulumi.Input<TableType>? type;

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
      map['hiveOptions'] = pulumi.Input.mapOptionalInputValue<HiveTableOptions,
          Map<String, dynamic>>(hiveOptionsValue, (value) => value.toMap());
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
      map['type'] = pulumi.Input.mapOptionalInputValue<TableType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      hiveOptions:
          pulumi.Input.asOptionalInput<HiveTableOptions>(map['hiveOptions']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tableId: pulumi.Input.asInput<String>(map['tableId']),
      type: pulumi.Input.asOptionalInput<TableType>(map['type']),
    );
  }
}
