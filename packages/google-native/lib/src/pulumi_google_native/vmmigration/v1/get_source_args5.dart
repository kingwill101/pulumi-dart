// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSource.
class GetSourceArgs5 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sourceId;

  GetSourceArgs5({
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

  factory GetSourceArgs5.fromMap(Map<String, dynamic> map) {
    return GetSourceArgs5(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceId: Input.asInput<String>(map['sourceId']),
    );
  }
}
