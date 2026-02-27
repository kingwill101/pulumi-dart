// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionDisk.
class GetRegionDiskArgs3 {
  final Input<String> disk;
  final Input<String>? project;
  final Input<String> region;

  GetRegionDiskArgs3({
    required this.disk,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disk'] = disk;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionDiskArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskArgs3(
      disk: Input.asInput<String>(map['disk']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
