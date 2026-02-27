// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabaseIamPolicy.
class GetDatabaseIamPolicyArgs {
  /// The name of the Spanner database.
  final pulumi.Input<String> database;

  /// The name of the Spanner instance the database belongs to.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

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
      database: pulumi.Input.asInput<String>(map['database']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
