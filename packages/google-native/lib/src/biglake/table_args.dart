// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hive_table_options.dart';
import 'table_type.dart';

/// {@template pulumi_biglake_v1_table_args_doc}
/// The set of arguments for Table.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_table_args_doc}
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

  /// Creates a new [TableArgs].
  /// [catalogId] Required.
  /// [databaseId] Required.
  /// [etag] The checksum of a table object computed by the server based on the value of other fields. It may be sent on update requests to ensure the client has an up-to-date value before proceeding. It is only checked for update table operations.
  /// [hiveOptions] Options of a Hive table.
  /// [location] Optional.
  /// [project] Optional.
  /// [tableId] Required. The ID to use for the table, which will become the final component of the table's resource name.
  /// [type] The table type.
  TableArgs({
    required String catalogId,
    required String databaseId,
    String? etag,
    HiveTableOptions? hiveOptions,
    String? location,
    String? project,
    required String tableId,
    TableType? type,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      databaseId = pulumi.Input.asInput<String>(databaseId),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      hiveOptions = pulumi.Input.asOptionalInput<HiveTableOptions>(hiveOptions),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tableId = pulumi.Input.asInput<String>(tableId),
      type = pulumi.Input.asOptionalInput<TableType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseId': databaseId,
      'etag': ?etag,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<HiveTableOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'tableId': tableId,
      'type': ?pulumi.Input.mapOptionalInputValue<TableType, String>(type, (value) => value.value),
    };
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      catalogId: map['catalogId'] as String,
      databaseId: map['databaseId'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      hiveOptions: map['hiveOptions'] == null ? null : HiveTableOptions.fromMap((map['hiveOptions'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tableId: map['tableId'] as String,
      type: map['type'] == null ? null : TableType.fromValue(map['type'] as String),
    );
  }
}

