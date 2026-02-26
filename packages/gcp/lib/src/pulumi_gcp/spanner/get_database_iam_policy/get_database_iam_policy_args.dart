// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabaseIamPolicy.
class GetDatabaseIamPolicyArgs {
  /// The name of the Spanner database.
  final Input<String> database;

  /// The name of the Spanner instance the database belongs to.
  final Input<String> instance;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  GetDatabaseIamPolicyArgs({
    required this.database,
    required this.instance,
    this.project,
  });

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

  factory GetDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyArgs(
      database: Input.asInput<String>(map['database']),
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
