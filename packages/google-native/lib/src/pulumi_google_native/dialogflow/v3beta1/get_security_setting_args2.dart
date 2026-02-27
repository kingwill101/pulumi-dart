// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecuritySetting.
class GetSecuritySettingArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> securitySettingId;

  GetSecuritySettingArgs2({
    required this.location,
    this.project,
    required this.securitySettingId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['securitySettingId'] = securitySettingId;
    return map;
  }

  factory GetSecuritySettingArgs2.fromMap(Map<String, dynamic> map) {
    return GetSecuritySettingArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      securitySettingId: Input.asInput<String>(map['securitySettingId']),
    );
  }
}
