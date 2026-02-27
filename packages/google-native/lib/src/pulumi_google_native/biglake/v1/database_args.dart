// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type.dart';
import 'hive_database_options.dart';

/// The set of arguments for Database.
class DatabaseArgs {
  final pulumi.Input<String> catalogId;

  /// Required. The ID to use for the database, which will become the final component of the database's resource name.
  final pulumi.Input<String> databaseId;

  /// Options of a Hive database.
  final pulumi.Input<HiveDatabaseOptions>? hiveOptions;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The database type.
  final pulumi.Input<DatabaseType>? type;

  DatabaseArgs({
    required this.catalogId,
    required this.databaseId,
    this.hiveOptions,
    this.location,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseId'] = databaseId;
    final hiveOptionsValue = hiveOptions;
    if (hiveOptionsValue != null) {
      map['hiveOptions'] = pulumi.Input.mapOptionalInputValue<
          HiveDatabaseOptions,
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<DatabaseType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      hiveOptions:
          pulumi.Input.asOptionalInput<HiveDatabaseOptions>(map['hiveOptions']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<DatabaseType>(map['type']),
    );
  }
}
