import 'package:pulumi/pulumi.dart' as pulumi;
import '../management_organization_security_health_analytics_custom_module_custom_config/management_organization_security_health_analytics_custom_module_custom_config.dart';
import 'management_organization_security_health_analytics_custom_module_args.dart';

/// Represents an instance of a Security Health Analytics custom module, including
/// its full module name, display name, enablement state, and last updated time.
/// You can create a custom module at the organization, folder, or project level.
/// Custom modules that you create at the organization or folder level are inherited
/// by the child folders and projects.
///
///
/// To get more information about OrganizationSecurityHealthAnalyticsCustomModule, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/security-center-management/rest/v1/organizations.locations.securityHealthAnalyticsCustomModules)
/// * How-to Guides
/// * [Overview of custom modules for Security Health Analytics](https://cloud.google.com/security-command-center/docs/custom-modules-sha-overview)
///
/// ## Example Usage
///
/// ### Scc Management Organization Security Health Analytics Custom Module Basic
///
///
///
/// ### Scc Management Organization Security Health Analytics Custom Module Full
///
///
///
///
/// ## Import
///
/// OrganizationSecurityHealthAnalyticsCustomModule can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}`
///
/// * `{{organization}}/{{location}}/{{name}}`
///
/// When using the `pulumi import` command, OrganizationSecurityHealthAnalyticsCustomModule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementOrganizationSecurityHealthAnalyticsCustomModule:ManagementOrganizationSecurityHealthAnalyticsCustomModule default organizations/{{organization}}/locations/{{location}}/securityHealthAnalyticsCustomModules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/managementOrganizationSecurityHealthAnalyticsCustomModule:ManagementOrganizationSecurityHealthAnalyticsCustomModule default {{organization}}/{{location}}/{{name}}
/// ```
class ManagementOrganizationSecurityHealthAnalyticsCustomModule
    extends pulumi.CustomResource {
  /// If empty, indicates that the custom module was created in the organization, folder,
  /// or project in which you are viewing the custom module. Otherwise, ancestor_module
  /// specifies the organization or folder from which the custom module is inherited.
  late final pulumi.Output<String> ancestorModule;

  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  late final pulumi.Output<
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig?>
      customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  late final pulumi.Output<String?> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String?> enablementState;

  /// The editor that last updated the custom module.
  late final pulumi.Output<String> lastEditor;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  late final pulumi.Output<String?> location;

  /// The resource name of the custom module. Its format is "organizations/{organization}/locations/{location}/securityHealthAnalyticsCustomModules/{securityHealthAnalyticsCustomModule}".
  /// The id {securityHealthAnalyticsCustomModule} is server-generated and is not user settable. It will be a numeric id containing 1-20 digits.
  late final pulumi.Output<String> name;

  /// Numerical ID of the parent organization.
  late final pulumi.Output<String> organization;

  /// The time at which the custom module was last updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  ManagementOrganizationSecurityHealthAnalyticsCustomModule(
    String name, {
    ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/managementOrganizationSecurityHealthAnalyticsCustomModule:ManagementOrganizationSecurityHealthAnalyticsCustomModule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ancestorModule = registerOutput<String>('ancestorModule');
    this.customConfig = registerOutput<
            ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig?>(
        'customConfig');
    this.displayName = registerOutput<String?>('displayName');
    this.enablementState = registerOutput<String?>('enablementState');
    this.lastEditor = registerOutput<String>('lastEditor');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
