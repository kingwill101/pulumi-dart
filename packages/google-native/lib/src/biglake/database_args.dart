// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type.dart';
import 'hive_database_options.dart';

/// {@template pulumi_biglake_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_database_args_doc}
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

  /// Creates a new [DatabaseArgs].
  /// [catalogId] Required.
  /// [databaseId] Required. The ID to use for the database, which will become the final component of the database's resource name.
  /// [hiveOptions] Options of a Hive database.
  /// [location] Optional.
  /// [project] Optional.
  /// [type] The database type.
  DatabaseArgs({
    required String catalogId,
    required String databaseId,
    HiveDatabaseOptions? hiveOptions,
    String? location,
    String? project,
    DatabaseType? type,
  })  : catalogId = pulumi.Input.asInput<String>(catalogId),
        databaseId = pulumi.Input.asInput<String>(databaseId),
        hiveOptions =
            pulumi.Input.asOptionalInput<HiveDatabaseOptions>(hiveOptions),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asOptionalInput<DatabaseType>(type);

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
      catalogId: map['catalogId'] as String,
      databaseId: map['databaseId'] as String,
      hiveOptions: map['hiveOptions'] == null
          ? null
          : HiveDatabaseOptions.fromMap(
              (map['hiveOptions'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null
          ? null
          : DatabaseType.fromValue(map['type'] as String),
    );
  }
}
