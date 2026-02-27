// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSource.
class GetSourceVmmigrationV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  GetSourceVmmigrationV1Args({
    required this.location,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    return map;
  }

  factory GetSourceVmmigrationV1Args.fromMap(Map<String, dynamic> map) {
    return GetSourceVmmigrationV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceId: pulumi.Input.asInput<String>(map['sourceId']),
    );
  }
}
