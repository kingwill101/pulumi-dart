// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_get_database_iam_policy_get_database_iam_policy_args_doc}
/// Arguments for getDatabaseIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_spanner_get_database_iam_policy_get_database_iam_policy_args_doc}
class GetDatabaseIamPolicyArgs {
  /// The name of the Spanner database.
  final pulumi.Input<String> database;

  /// The name of the Spanner instance the database belongs to.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabaseIamPolicyArgs].
  /// [database] The name of the Spanner database.
  /// [instance] The name of the Spanner instance the database belongs to.
  /// [project] The ID of the project in which the resource belongs. If it
  GetDatabaseIamPolicyArgs({
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

  factory GetDatabaseIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseIamPolicyArgs(
      database: map['database'] as String,
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
