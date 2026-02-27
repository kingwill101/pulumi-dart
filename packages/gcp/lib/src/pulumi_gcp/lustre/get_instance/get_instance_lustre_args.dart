// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceLustreArgs {
  /// The instance id of the Lustre instance.
  final pulumi.Input<String> instanceId;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the zone in which the resource belongs. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  GetInstanceLustreArgs({
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

  factory GetInstanceLustreArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceLustreArgs(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
