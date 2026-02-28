// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_instance_get_database_instance_args_doc}
/// Arguments for getDatabaseInstance.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_instance_get_database_instance_args_doc}
class GetDatabaseInstanceArgs {
  /// The name of the instance.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseInstanceArgs].
  /// [name] The name of the instance.
  /// [project] The ID of the project in which the resource belongs.
  GetDatabaseInstanceArgs({
    required String name,
    String? project,
  })  : name = pulumi.Input.asInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
