// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetInstance.
class GetTargetInstanceArgs2 {
  final Input<String>? project;
  final Input<String> targetInstance;
  final Input<String> zone;

  GetTargetInstanceArgs2({
    this.project,
    required this.targetInstance,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetInstance'] = targetInstance;
    map['zone'] = zone;
    return map;
  }

  factory GetTargetInstanceArgs2.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      targetInstance: Input.asInput<String>(map['targetInstance']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
