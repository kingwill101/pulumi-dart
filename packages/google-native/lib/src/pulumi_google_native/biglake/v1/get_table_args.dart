// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTable.
class GetTableArgs {
  final Input<String> catalogId;
  final Input<String> databaseId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tableId;

  GetTableArgs({
    required this.catalogId,
    required this.databaseId,
    required this.location,
    this.project,
    required this.tableId,
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
    map['tableId'] = tableId;
    return map;
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tableId: Input.asInput<String>(map['tableId']),
    );
  }
}
