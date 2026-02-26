// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabase.
class GetDatabaseArgs3 {
  final Input<String> databaseId;
  final Input<String> instanceId;
  final Input<String>? project;

  GetDatabaseArgs3({
    required this.databaseId,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseArgs3.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs3(
      databaseId: Input.asInput<String>(map['databaseId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
