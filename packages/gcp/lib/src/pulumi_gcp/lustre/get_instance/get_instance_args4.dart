// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getInstance.
class GetInstanceArgs4 {
  /// The instance id of the Lustre instance.
  final Input<String> instanceId;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  final Input<String>? zone;

  GetInstanceArgs4({
    required this.instanceId,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceArgs4.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs4(
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
