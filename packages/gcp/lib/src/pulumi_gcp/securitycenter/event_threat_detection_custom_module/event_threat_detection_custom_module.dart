import 'package:pulumi/pulumi.dart';
import 'event_threat_detection_custom_module_args.dart';

/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, andlast updated time.
/// You can create a custom module at the organization level only.
///
///
/// To get more information about EventThreatDetectionCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v1/organizations.eventThreatDetectionSettings.customModules)
/// * How-to Guides
/// * [Overview of custom modules for Event Threat Detection](https://cloud.google.com/security-command-center/docs/custom-modules-etd-overview)
///
/// ## Example Usage
///
/// ### Scc Event Threat Detection Custom Module
///
///
///
///
/// ## Import
///
/// EventThreatDetectionCustomModule can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/eventThreatDetectionSettings/customModules/{{name}}`
///
/// * `{{organization}}/{{name}}`
///
/// When using the `pulumi import` command, EventThreatDetectionCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule default organizations/{{organization}}/eventThreatDetectionSettings/customModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule default {{organization}}/{{name}}
/// ```
class EventThreatDetectionCustomModule extends CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  late final Output<String> config;

  /// The human readable name to be displayed for the module.
  late final Output<String?> displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final Output<String> enablementState;

  /// The editor that last updated the custom module
  late final Output<String> lastEditor;

  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}".
  late final Output<String> name;

  /// Numerical ID of the parent organization.
  late final Output<String> organization;

  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final Output<String> type;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  EventThreatDetectionCustomModule(
    String name, {
    EventThreatDetectionCustomModuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/eventThreatDetectionCustomModule:EventThreatDetectionCustomModule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.config = registerOutput<String>('config');
    this.displayName = registerOutput<String?>('displayName');
    this.enablementState = registerOutput<String>('enablementState');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
