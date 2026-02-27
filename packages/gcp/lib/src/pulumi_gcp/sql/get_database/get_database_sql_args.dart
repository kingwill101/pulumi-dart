// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabase.
class GetDatabaseSqlArgs {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final pulumi.Input<String> instance;

  /// The name of the database.
  final pulumi.Input<String> name;

  /// The ID of the project in which the instance belongs.
  final pulumi.Input<String>? project;

  GetDatabaseSqlArgs({
    required this.instance,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseSqlArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSqlArgs(
      instance: pulumi.Input.asInput<String>(map['instance']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
