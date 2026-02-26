// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_hive_options/table_hive_options.dart';

/// The set of arguments for Table.
class TableArgs {
  /// The id of the parent database.
  final Input<String>? database;

  /// Options of a Hive table.
  /// Structure is documented below.
  final Input<TableHiveOptions>? hiveOptions;

  /// Output only. The name of the Table. Format:
  /// projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}
  final Input<String>? name;

  /// The database type.
  /// Possible values are: `HIVE`.
  final Input<String>? type;

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
      map['hiveOptions'] =
          Input.mapOptionalInputValue<TableHiveOptions, Map<String, dynamic>>(
              hiveOptionsValue, (value) => value.toMap());
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
      database: Input.asOptionalInput<String>(map['database']),
      hiveOptions: Input.asOptionalInput<TableHiveOptions>(map['hiveOptions']),
      name: Input.asOptionalInput<String>(map['name']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
