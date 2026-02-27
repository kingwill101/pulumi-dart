// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationEventThreatDetectionSettingCustomModule.
class GetOrganizationEventThreatDetectionSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> organizationId;

  GetOrganizationEventThreatDetectionSettingCustomModuleArgs({
    required this.customModuleId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customModuleId'] = customModuleId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationEventThreatDetectionSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationEventThreatDetectionSettingCustomModuleArgs(
      customModuleId: pulumi.Input.asInput<String>(map['customModuleId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
