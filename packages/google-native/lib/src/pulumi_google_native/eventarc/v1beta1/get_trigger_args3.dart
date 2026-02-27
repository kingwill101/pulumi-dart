// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTrigger.
class GetTriggerArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> triggerId;

  GetTriggerArgs3({
    required this.location,
    this.project,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['triggerId'] = triggerId;
    return map;
  }

  factory GetTriggerArgs3.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      triggerId: Input.asInput<String>(map['triggerId']),
    );
  }
}
