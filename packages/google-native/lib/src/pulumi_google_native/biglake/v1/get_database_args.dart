// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDatabase.
class GetDatabaseArgs {
  final Input<String> catalogId;
  final Input<String> databaseId;
  final Input<String> location;
  final Input<String>? project;

  GetDatabaseArgs({
    required this.catalogId,
    required this.databaseId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['databaseId'] = databaseId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
