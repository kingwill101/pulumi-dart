// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTarget.
class GetTargetArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> targetId;

  GetTargetArgs({
    required this.location,
    this.project,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetId'] = targetId;
    return map;
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      targetId: Input.asInput<String>(map['targetId']),
    );
  }
}
