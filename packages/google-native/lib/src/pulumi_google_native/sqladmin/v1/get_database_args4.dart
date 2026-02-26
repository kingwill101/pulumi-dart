// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabase.
class GetDatabaseArgs4 {
  final Input<String> database;
  final Input<String> instance;
  final Input<String>? project;

  GetDatabaseArgs4({
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

  factory GetDatabaseArgs4.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs4(
      database: Input.asInput<String>(map['database']),
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
