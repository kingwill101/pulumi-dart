// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_databases_get_databases_args_doc}
/// Arguments for getDatabases.
/// {@endtemplate}
/// {@macro pulumi_sql_get_databases_get_databases_args_doc}
class GetDatabasesArgs {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final pulumi.Input<String> instance;

  /// The ID of the project in which the instance belongs.
  ///
  /// > **Note** This datasource performs client-side sorting to provide consistent ordering of the databases.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDatabasesArgs].
  /// [instance] The name of the Cloud SQL database instance in which the database belongs.
  /// [project] The ID of the project in which the instance belongs.
  GetDatabasesArgs({required String instance, String? project})
    : instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'instance': instance, 'project': ?project};
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
