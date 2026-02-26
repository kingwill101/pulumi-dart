import 'package:pulumi/pulumi.dart';
import 'organization_event_threat_detection_setting_custom_module_args.dart';

/// Creates an Event Threat Detection custom module.
/// Auto-naming is currently not supported for this resource.
class OrganizationEventThreatDetectionSettingCustomModule
    extends CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  late final Output<Map<String, String>> config;

  /// The description for the module.
  late final Output<String> description;

  /// The human readable name to be displayed for the module.
  late final Output<String> displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  late final Output<String> enablementState;

  /// The editor the module was last updated by.
  late final Output<String> lastEditor;

  /// Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final Output<String> type;

  /// The time the module was last updated.
  late final Output<String> updateTime;

  OrganizationEventThreatDetectionSettingCustomModule(
    String name, {
    OrganizationEventThreatDetectionSettingCustomModuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationEventThreatDetectionSettingCustomModule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = Output.createUnknown<Map<String, String>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enablementState = Output.createUnknown<String>();
    this.lastEditor = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
