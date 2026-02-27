// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDisk.
class GetDiskComputeBetaArgs {
  final pulumi.Input<String> disk;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetDiskComputeBetaArgs({
    required this.disk,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskComputeBetaArgs(
      disk: pulumi.Input.asInput<String>(map['disk']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
