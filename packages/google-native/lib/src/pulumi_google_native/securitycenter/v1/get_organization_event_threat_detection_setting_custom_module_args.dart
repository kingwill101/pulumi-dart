// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationEventThreatDetectionSettingCustomModule.
class GetOrganizationEventThreatDetectionSettingCustomModuleArgs {
  final Input<String> customModuleId;
  final Input<String> organizationId;

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
      customModuleId: Input.asInput<String>(map['customModuleId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
