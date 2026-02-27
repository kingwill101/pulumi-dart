import 'package:pulumi/pulumi.dart';
import '../feature_fleet_default_member_config/feature_fleet_default_member_config.dart';
import '../feature_resource_state/feature_resource_state.dart';
import '../feature_spec/feature_spec.dart';
import '../feature_state/feature_state.dart';
import 'feature_args.dart';

/// Feature represents the settings and status of any Hub Feature.
///
///
/// To get more information about Feature, see:
///
/// * [API documentation](https://cloud.google.com/anthos/fleet-management/docs/reference/rest/v1/projects.locations.features)
/// * How-to Guides
/// * [Registering a Cluster](https://cloud.google.com/anthos/multicluster-management/connect/registering-a-cluster#register_cluster)
///
/// ## Example Usage
///
/// ### Gkehub Feature Multi Cluster Ingress
///
///
///
/// ### Gkehub Feature Multi Cluster Service Discovery
///
///
///
/// ### Gkehub Feature Anthos Service Mesh
///
///
///
/// ### Enable Fleet Observability For Default Logs With Copy
///
///
///
/// ### Enable Fleet Observability For Scope Logs With Move
///
///
///
/// ### Enable Fleet Observability For Both Default And Scope Logs
///
///
///
/// ### Enable Fleet Default Member Config Service Mesh
///
///
///
/// ### Enable Fleet Default Member Config Configmanagement
///
///
///
/// ### Enable Fleet Default Member Config Policycontroller
///
///
///
/// ### Enable Fleet Default Member Config Policycontroller Full
///
///
///
/// ### Enable Fleet Default Member Config Policycontroller Minimal
///
///
///
/// ### Gkehub Feature Clusterupgrade
///
///
///
/// ### Gkehub Feature Rbacrolebinding Actuation
///
///
///
///
/// ## Import
///
/// Feature can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/features/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Feature can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/feature:Feature default projects/{{project}}/locations/{{location}}/features/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/feature:Feature default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkehub/feature:Feature default {{location}}/{{name}}
/// ```
class Feature extends CustomResource {
  /// Output only. When the Feature resource was created.
  late final Output<String> createTime;

  /// Output only. When the Feature resource was deleted.
  late final Output<String> deleteTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Fleet Default Membership Configuration.
  /// Structure is documented below.
  late final Output<FeatureFleetDefaultMemberConfig?> fleetDefaultMemberConfig;

  /// GCP labels for this Feature.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// The full, unique name of this Feature resource
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// State of the Feature resource itself.
  /// Structure is documented below.
  late final Output<List<FeatureResourceState>> resourceStates;

  /// Optional. Hub-wide Feature configuration. If this Feature does not support any Hub-wide configuration, this field may be unused.
  /// Structure is documented below.
  late final Output<FeatureSpec?> spec;

  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  late final Output<List<FeatureState>> states;

  /// (Output)
  /// The time this status and any related Feature-specific details were updated. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> updateTime;

  Feature(
    String name, {
    FeatureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/feature:Feature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.fleetDefaultMemberConfig =
        registerOutput<FeatureFleetDefaultMemberConfig?>(
            'fleetDefaultMemberConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceStates =
        registerOutput<List<FeatureResourceState>>('resourceStates');
    this.spec = registerOutput<FeatureSpec?>('spec');
    this.states = registerOutput<List<FeatureState>>('states');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
