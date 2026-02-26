// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../database_hive_options/database_hive_options.dart';

/// The set of arguments for Database.
class DatabaseArgs {
  /// The parent catalog.
  final Input<String> catalog;

  /// Options of a Hive database.
  /// Structure is documented below.
  final Input<DatabaseHiveOptions> hiveOptions;

  /// The name of the database.
  final Input<String>? name;

  /// The database type.
  final Input<String> type;

  DatabaseArgs({
    required this.catalog,
    required this.hiveOptions,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalog'] = catalog;
    map['hiveOptions'] =
        Input.mapInputValue<DatabaseHiveOptions, Map<String, dynamic>>(
            hiveOptions, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['type'] = type;
    return map;
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      catalog: Input.asInput<String>(map['catalog']),
      hiveOptions: Input.asInput<DatabaseHiveOptions>(map['hiveOptions']),
      name: Input.asOptionalInput<String>(map['name']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
