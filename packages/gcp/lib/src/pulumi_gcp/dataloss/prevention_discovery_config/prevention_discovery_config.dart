import 'package:pulumi/pulumi.dart';
import '../prevention_discovery_config_action/prevention_discovery_config_action.dart';
import '../prevention_discovery_config_error/prevention_discovery_config_error.dart';
import '../prevention_discovery_config_org_config/prevention_discovery_config_org_config.dart';
import '../prevention_discovery_config_other_cloud_starting_location/prevention_discovery_config_other_cloud_starting_location.dart';
import '../prevention_discovery_config_target/prevention_discovery_config_target.dart';
import 'prevention_discovery_config_args.dart';

/// Configuration for discovery to scan resources for profile generation. Only one discovery configuration may exist per organization, folder, or project.
///
///
/// To get more information about DiscoveryConfig, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.locations.discoveryConfigs)
/// * How-to Guides
/// * [Schedule inspection scan](https://cloud.google.com/dlp/docs/schedule-inspection-scan)
///
/// ## Example Usage
///
/// ## Import
///
/// DiscoveryConfig can be imported using any of these accepted formats:
///
/// * `{{parent}}/discoveryConfigs/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, DiscoveryConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig default {{parent}}/discoveryConfigs/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig default {{parent}}/{{name}}
/// ```
class PreventionDiscoveryConfig extends CustomResource {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  late final Output<List<PreventionDiscoveryConfigAction>?> actions;

  /// Output only. The creation timestamp of a DiscoveryConfig.
  late final Output<String> createTime;

  /// Display Name (max 1000 Chars)
  late final Output<String?> displayName;

  /// Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// Structure is documented below.
  late final Output<List<PreventionDiscoveryConfigError>> errors;

  /// Detection logic for profile generation
  late final Output<List<String>?> inspectTemplates;

  /// Output only. The timestamp of the last time this config was executed
  late final Output<String> lastRunTime;

  /// Location to create the discovery config in.
  late final Output<String> location;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  late final Output<String> name;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<PreventionDiscoveryConfigOrgConfig?> orgConfig;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<PreventionDiscoveryConfigOtherCloudStartingLocation?>
      otherCloudStartingLocation;

  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final Output<String> parent;

  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  late final Output<String?> status;

  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  late final Output<List<PreventionDiscoveryConfigTarget>?> targets;

  /// Output only. The last update timestamp of a DiscoveryConfig.
  late final Output<String> updateTime;

  PreventionDiscoveryConfig(
    String name, {
    PreventionDiscoveryConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actions =
        Output.createUnknown<List<PreventionDiscoveryConfigAction>?>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String?>();
    this.errors = Output.createUnknown<List<PreventionDiscoveryConfigError>>();
    this.inspectTemplates = Output.createUnknown<List<String>?>();
    this.lastRunTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.orgConfig =
        Output.createUnknown<PreventionDiscoveryConfigOrgConfig?>();
    this.otherCloudStartingLocation = Output.createUnknown<
        PreventionDiscoveryConfigOtherCloudStartingLocation?>();
    this.parent = Output.createUnknown<String>();
    this.status = Output.createUnknown<String?>();
    this.targets =
        Output.createUnknown<List<PreventionDiscoveryConfigTarget>?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
