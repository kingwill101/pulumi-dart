// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_event_threat_detection_setting_custom_module_enablement_state.dart';

/// The set of arguments for OrganizationEventThreatDetectionSettingCustomModule.
class OrganizationEventThreatDetectionSettingCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<Map<String, String>>? config;

  /// The description for the module.
  final pulumi.Input<String>? description;

  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  final pulumi.Input<
          OrganizationEventThreatDetectionSettingCustomModuleEnablementState>?
      enablementState;

  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;

  OrganizationEventThreatDetectionSettingCustomModuleArgs({
    this.config,
    this.description,
    this.displayName,
    this.enablementState,
    this.name,
    required this.organizationId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enablementStateValue = enablementState;
    if (enablementStateValue != null) {
      map['enablementState'] = pulumi.Input.mapOptionalInputValue<
          OrganizationEventThreatDetectionSettingCustomModuleEnablementState,
          String>(enablementStateValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory OrganizationEventThreatDetectionSettingCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationEventThreatDetectionSettingCustomModuleArgs(
      config: pulumi.Input.asOptionalInput<Map<String, String>>(map['config']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState: pulumi.Input.asOptionalInput<
              OrganizationEventThreatDetectionSettingCustomModuleEnablementState>(
          map['enablementState']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
