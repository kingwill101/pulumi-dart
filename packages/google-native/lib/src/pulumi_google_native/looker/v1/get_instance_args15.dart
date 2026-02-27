// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstance.
class GetInstanceArgs15 {
  final Input<String> instanceId;
  final Input<String> location;
  final Input<String>? project;

  GetInstanceArgs15({
    required this.instanceId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs15.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs15(
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
