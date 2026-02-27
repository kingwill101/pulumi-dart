import 'package:pulumi/pulumi.dart' as pulumi;
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
class PreventionDiscoveryConfig extends pulumi.CustomResource {
  /// Actions to execute at the completion of scanning
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigAction>?> actions;

  /// Output only. The creation timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> createTime;

  /// Display Name (max 1000 Chars)
  late final pulumi.Output<String?> displayName;

  /// Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigError>> errors;

  /// Detection logic for profile generation
  late final pulumi.Output<List<String>?> inspectTemplates;

  /// Output only. The timestamp of the last time this config was executed
  late final pulumi.Output<String> lastRunTime;

  /// Location to create the discovery config in.
  late final pulumi.Output<String> location;

  /// Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created.
  late final pulumi.Output<String> name;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<PreventionDiscoveryConfigOrgConfig?> orgConfig;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<PreventionDiscoveryConfigOtherCloudStartingLocation?>
      otherCloudStartingLocation;

  /// The parent of the discovery config in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;

  /// Required. A status for this configuration
  /// Possible values are: `RUNNING`, `PAUSED`.
  late final pulumi.Output<String?> status;

  /// Target to match against for determining what to scan and how frequently
  /// Structure is documented below.
  late final pulumi.Output<List<PreventionDiscoveryConfigTarget>?> targets;

  /// Output only. The last update timestamp of a DiscoveryConfig.
  late final pulumi.Output<String> updateTime;

  PreventionDiscoveryConfig(
    String name, {
    PreventionDiscoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataloss/preventionDiscoveryConfig:PreventionDiscoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions =
        registerOutput<List<PreventionDiscoveryConfigAction>?>('actions');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.errors =
        registerOutput<List<PreventionDiscoveryConfigError>>('errors');
    this.inspectTemplates = registerOutput<List<String>?>('inspectTemplates');
    this.lastRunTime = registerOutput<String>('lastRunTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.orgConfig =
        registerOutput<PreventionDiscoveryConfigOrgConfig?>('orgConfig');
    this.otherCloudStartingLocation =
        registerOutput<PreventionDiscoveryConfigOtherCloudStartingLocation?>(
            'otherCloudStartingLocation');
    this.parent = registerOutput<String>('parent');
    this.status = registerOutput<String?>('status');
    this.targets =
        registerOutput<List<PreventionDiscoveryConfigTarget>?>('targets');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
