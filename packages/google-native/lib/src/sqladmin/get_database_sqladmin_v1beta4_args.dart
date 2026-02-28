// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_get_database_sqladmin_v1beta4_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_get_database_sqladmin_v1beta4_args_doc}
class GetDatabaseSqladminV1beta4Args {
  final pulumi.Input<String> database;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseSqladminV1beta4Args].
  /// [database] Required.
  /// [instance] Required.
  /// [project] Optional.
  GetDatabaseSqladminV1beta4Args({
    required String database,
    required String instance,
    String? project,
  })  : database = pulumi.Input.asInput<String>(database),
        instance = pulumi.Input.asInput<String>(instance),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSqladminV1beta4Args(
      database: map['database'] as String,
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
