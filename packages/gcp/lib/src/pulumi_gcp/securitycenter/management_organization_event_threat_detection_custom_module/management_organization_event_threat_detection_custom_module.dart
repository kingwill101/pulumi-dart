import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_event_threat_detection_custom_module_args.dart';

/// Represents an instance of an Event Threat Detection custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization level only.
///
///
/// To get more information about OrganizationEventThreatDetectionCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/security-center-management/rest/v1/organizations.locations.eventThreatDetectionCustomModules)
/// * How-to Guides
/// * [Overview of custom modules for Event Threat Detection](https://cloud.google.com/security-command-center/docs/custom-modules-etd-overview)
///
/// ## Example Usage
///
/// ### Scc Management Organization Event Threat Detection Custom Module
///
///
///
///
/// ## Import
///
/// OrganizationEventThreatDetectionCustomModule can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/eventThreatDetectionCustomModules/{{name}}`
///
/// * `{{organization}}/{{location}}/{{name}}`
///
/// When using the `pulumi import` command, OrganizationEventThreatDetectionCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule default organizations/{{organization}}/locations/{{location}}/eventThreatDetectionCustomModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule default {{organization}}/{{location}}/{{name}}
/// ```
class ManagementOrganizationEventThreatDetectionCustomModule
    extends pulumi.CustomResource {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  late final pulumi.Output<String?> config;

  /// The human readable name to be displayed for the module.
  late final pulumi.Output<String?> displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String?> enablementState;

  /// The editor that last updated the custom module
  late final pulumi.Output<String> lastEditor;

  /// Location ID of the parent organization. Only global is supported at the moment.
  late final pulumi.Output<String?> location;

  /// The resource name of the Event Threat Detection custom module.
  /// Its format is "organizations/{organization}/locations/{location}/eventThreatDetectionCustomModules/{eventThreatDetectionCustomModule}".
  late final pulumi.Output<String> name;

  /// Numerical ID of the parent organization.
  late final pulumi.Output<String> organization;

  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  late final pulumi.Output<String?> type;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  ManagementOrganizationEventThreatDetectionCustomModule(
    String name, {
    ManagementOrganizationEventThreatDetectionCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/managementOrganizationEventThreatDetectionCustomModule:ManagementOrganizationEventThreatDetectionCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.config = registerOutput<String?>('config');
    this.displayName = registerOutput<String?>('displayName');
    this.enablementState = registerOutput<String?>('enablementState');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String?>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
