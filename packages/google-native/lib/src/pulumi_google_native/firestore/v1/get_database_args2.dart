// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabase.
class GetDatabaseArgs2 {
  final Input<String> databaseId;
  final Input<String>? project;

  GetDatabaseArgs2({
    required this.databaseId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseArgs2.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs2(
      databaseId: Input.asInput<String>(map['databaseId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
