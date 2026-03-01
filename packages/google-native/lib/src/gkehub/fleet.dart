import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_cluster_config_response.dart';
import 'fleet_args.dart';
import 'fleet_lifecycle_state_response.dart';

/// Creates a fleet.
/// Auto-naming is currently not supported for this resource.
class Fleet extends pulumi.CustomResource {
  /// When the Fleet was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The default cluster configurations to apply across the fleet.
  late final pulumi.Output<DefaultClusterConfigResponse> defaultClusterConfig;

  /// When the Fleet was deleted.
  late final pulumi.Output<String> deleteTime;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  late final pulumi.Output<String> displayName;

  /// Optional. Labels for this Fleet.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// State of the namespace resource.
  late final pulumi.Output<FleetLifecycleStateResponse> state;

  /// Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  late final pulumi.Output<String> uid;

  /// When the Fleet was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Fleet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fleet]. {@macro pulumi_gkehub_v1_fleet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fleet(String name, {FleetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:gkehub/v1:Fleet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.createTime = registerOutput<String>('createTime');
    this.defaultClusterConfig = registerOutput<DefaultClusterConfigResponse>(
      'defaultClusterConfig',
    );
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String>('displayName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<FleetLifecycleStateResponse>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
