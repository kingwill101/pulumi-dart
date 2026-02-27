// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabase.
class GetDatabaseSqladminV1beta4Args {
  final pulumi.Input<String> database;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  GetDatabaseSqladminV1beta4Args({
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

  factory GetDatabaseSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSqladminV1beta4Args(
      database: pulumi.Input.asInput<String>(map['database']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
