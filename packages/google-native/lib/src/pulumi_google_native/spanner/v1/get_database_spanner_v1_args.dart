// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabase.
class GetDatabaseSpannerV1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  GetDatabaseSpannerV1Args({
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

  factory GetDatabaseSpannerV1Args.fromMap(Map<String, dynamic> map) {
    return GetDatabaseSpannerV1Args(
      databaseId: pulumi.Input.asInput<String>(map['databaseId']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
