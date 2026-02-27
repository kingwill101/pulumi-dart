// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getV2AcceleratorTypes.
class GetV2AcceleratorTypesArgs {
  /// The project to list types for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The zone to list types for. If it
  /// is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  GetV2AcceleratorTypesArgs({
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetV2AcceleratorTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetV2AcceleratorTypesArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
