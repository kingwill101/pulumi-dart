// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_hive_options/table_hive_options.dart';

/// The set of arguments for Table.
class TableArgs {
  /// The id of the parent database.
  final pulumi.Input<String>? database;

  /// Options of a Hive table.
  /// Structure is documented below.
  final pulumi.Input<TableHiveOptions>? hiveOptions;

  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  final pulumi.Input<String>? name;

  /// The database type.
  /// Possible values are: `HIVE`.
  final pulumi.Input<String>? type;

  TableArgs({
    this.database,
    this.hiveOptions,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final hiveOptionsValue = hiveOptions;
    if (hiveOptionsValue != null) {
      map['hiveOptions'] = pulumi.Input.mapOptionalInputValue<TableHiveOptions,
          Map<String, dynamic>>(hiveOptionsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory TableArgs.fromMap(Map<String, dynamic> map) {
    return TableArgs(
      database: pulumi.Input.asOptionalInput<String>(map['database']),
      hiveOptions:
          pulumi.Input.asOptionalInput<TableHiveOptions>(map['hiveOptions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
