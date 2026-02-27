// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProjectSecurityHealthAnalyticsSettingCustomModule.
class GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs {
  final Input<String> customModuleId;
  final Input<String>? project;

  GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs({
    required this.customModuleId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customModuleId'] = customModuleId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs(
      customModuleId: Input.asInput<String>(map['customModuleId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
