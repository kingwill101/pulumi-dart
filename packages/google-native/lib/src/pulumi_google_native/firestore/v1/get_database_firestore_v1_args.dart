// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabase.
class GetDatabaseFirestoreV1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String>? project;

  GetDatabaseFirestoreV1Args({
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

  factory GetDatabaseFirestoreV1Args.fromMap(Map<String, dynamic> map) {
    return GetDatabaseFirestoreV1Args(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
