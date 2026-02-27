// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../database_hive_options/database_hive_options.dart';

/// The set of arguments for Database.
class DatabaseArgs {
  /// The parent catalog.
  final pulumi.Input<String> catalog;

  /// Options of a Hive database.
  /// Structure is documented below.
  final pulumi.Input<DatabaseHiveOptions> hiveOptions;

  /// The name of the database.
  final pulumi.Input<String>? name;

  /// The database type.
  final pulumi.Input<String> type;

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
        pulumi.Input.mapInputValue<DatabaseHiveOptions, Map<String, dynamic>>(
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
      catalog: pulumi.Input.asInput<String>(map['catalog']),
      hiveOptions:
          pulumi.Input.asInput<DatabaseHiveOptions>(map['hiveOptions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
