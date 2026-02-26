// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabases.
class GetDatabasesArgs {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final Input<String> instance;

  /// The ID of the project in which the instance belongs.
  ///
  /// > **Note** This datasource performs client-side sorting to provide consistent ordering of the databases.
  final Input<String>? project;

  GetDatabasesArgs({
    required this.instance,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabasesArgs(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
