// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
/// Arguments for getOrganizationEventThreatDetectionSettingCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
class GetOrganizationEventThreatDetectionSettingCustomModuleArgs {
  final pulumi.Input<String> customModuleId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationEventThreatDetectionSettingCustomModuleArgs].
  /// [customModuleId] Required.
  /// [organizationId] Required.
  GetOrganizationEventThreatDetectionSettingCustomModuleArgs({
    required String customModuleId,
    required String organizationId,
  })  : customModuleId = pulumi.Input.asInput<String>(customModuleId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customModuleId'] = customModuleId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationEventThreatDetectionSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationEventThreatDetectionSettingCustomModuleArgs(
      customModuleId: map['customModuleId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
