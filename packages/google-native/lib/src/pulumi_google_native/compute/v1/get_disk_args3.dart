// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDisk.
class GetDiskArgs3 {
  final Input<String> disk;
  final Input<String>? project;
  final Input<String> zone;

  GetDiskArgs3({
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

  factory GetDiskArgs3.fromMap(Map<String, dynamic> map) {
    return GetDiskArgs3(
      disk: Input.asInput<String>(map['disk']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
