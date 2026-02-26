// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstance.
class GetInstanceArgs23 {
  final Input<String>? fieldMask;
  final Input<String> instanceId;
  final Input<String>? project;

  GetInstanceArgs23({
    this.fieldMask,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldMaskValue = fieldMask;
    if (fieldMaskValue != null) {
      map['fieldMask'] = fieldMaskValue;
    }
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetInstanceArgs23.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs23(
      fieldMask: Input.asOptionalInput<String>(map['fieldMask']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
