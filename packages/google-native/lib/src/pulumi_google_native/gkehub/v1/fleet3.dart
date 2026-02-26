import 'package:pulumi/pulumi.dart';
import 'default_cluster_config_response.dart';
import 'fleet_args.dart';
import 'fleet_lifecycle_state_response.dart';

/// Creates a fleet.
/// Auto-naming is currently not supported for this resource.
class Fleet3 extends CustomResource {
  /// When the Fleet was created.
  late final Output<String> createTime;

  /// Optional. The default cluster configurations to apply across the fleet.
  late final Output<DefaultClusterConfigResponse> defaultClusterConfig;

  /// When the Fleet was deleted.
  late final Output<String> deleteTime;

  /// Optional. A user-assigned display name of the Fleet. When present, it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `Production Fleet`
  late final Output<String> displayName;

  /// Optional. Labels for this Fleet.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The full, unique resource name of this fleet in the format of `projects/{project}/locations/{location}/fleets/{fleet}`. Each Google Cloud project can have at most one fleet resource, named "default".
  late final Output<String> name;
  late final Output<String> project;

  /// State of the namespace resource.
  late final Output<FleetLifecycleStateResponse> state;

  /// Google-generated UUID for this resource. This is unique across all Fleet resources. If a Fleet resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the Fleet was last updated.
  late final Output<String> updateTime;

  Fleet3(
    String name, {
    FleetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1:Fleet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.defaultClusterConfig =
        registerOutput<DefaultClusterConfigResponse>('defaultClusterConfig');
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
