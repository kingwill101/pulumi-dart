// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabase.
class GetDatabaseArgs2 {
  /// The name of the Cloud SQL database instance in which the database belongs.
  final Input<String> instance;

  /// The name of the database.
  final Input<String> name;

  /// The ID of the project in which the instance belongs.
  final Input<String>? project;

  GetDatabaseArgs2({
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

  factory GetDatabaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs2(
      instance: Input.asInput<String>(map['instance']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
