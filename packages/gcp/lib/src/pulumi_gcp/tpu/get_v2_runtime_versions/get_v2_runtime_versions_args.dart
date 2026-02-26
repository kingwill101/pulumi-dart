// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getV2RuntimeVersions.
class GetV2RuntimeVersionsArgs {
  /// The project to list versions for. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The zone to list versions for. If it
  /// is not provided, the provider zone is used.
  final Input<String>? zone;

  GetV2RuntimeVersionsArgs({
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

  factory GetV2RuntimeVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetV2RuntimeVersionsArgs(
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
