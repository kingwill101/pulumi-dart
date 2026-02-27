import 'package:pulumi/pulumi.dart';
import '../region_per_instance_config_preserved_state/region_per_instance_config_preserved_state.dart';
import 'region_per_instance_config_args.dart';

/// A config defined for a single managed instance that belongs to an instance group manager. It preserves the instance name
/// across instance group manager operations and can define stateful disks or metadata that are unique to the instance.
/// This resource works with regional instance group managers.
///
///
/// To get more information about RegionPerInstanceConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/instance-groups/stateful-migs#per-instance_configs)
///
/// ## Example Usage
///
/// ### Stateful Rigm
///
///
///
///
/// ## Import
///
/// RegionPerInstanceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{region_instance_group_manager}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{region_instance_group_manager}}/{{name}}`
///
/// * `{{region}}/{{region_instance_group_manager}}/{{name}}`
///
/// * `{{region_instance_group_manager}}/{{name}}`
///
/// When using the `pulumi import` command, RegionPerInstanceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default projects/{{project}}/regions/{{region}}/instanceGroupManagers/{{region_instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{project}}/{{region}}/{{region_instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{region}}/{{region_instance_group_manager}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig default {{region_instance_group_manager}}/{{name}}
/// ```
class RegionPerInstanceConfig extends CustomResource {
  /// The minimal action to perform on the instance during an update.
  /// Default is `NONE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final Output<String?> minimalAction;

  /// The most disruptive action to perform on the instance during an update.
  /// Default is `REPLACE`. Possible values are:
  /// * REPLACE
  /// * RESTART
  /// * REFRESH
  /// * NONE
  late final Output<String?> mostDisruptiveAllowedAction;

  /// The name for this per-instance config and its corresponding instance.
  late final Output<String> name;

  /// The preserved state for this instance.
  /// Structure is documented below.
  late final Output<RegionPerInstanceConfigPreservedState?> preservedState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the containing instance group manager is located
  late final Output<String> region;

  /// The region instance group manager this instance config is part of.
  late final Output<String> regionInstanceGroupManager;

  /// When true, deleting this config will immediately remove the underlying instance.
  /// When false, deleting this config will use the behavior as determined by remove_instance_on_destroy.
  late final Output<bool?> removeInstanceOnDestroy;

  /// When true, deleting this config will immediately remove any specified state from the underlying instance.
  /// When false, deleting this config will *not* immediately remove any state from the underlying instance.
  /// State will be removed on the next instance recreation or update.
  late final Output<bool?> removeInstanceStateOnDestroy;

  RegionPerInstanceConfig(
    String name, {
    RegionPerInstanceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionPerInstanceConfig:RegionPerInstanceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.minimalAction = registerOutput<String?>('minimalAction');
    this.mostDisruptiveAllowedAction =
        registerOutput<String?>('mostDisruptiveAllowedAction');
    this.name = registerOutput<String>('name');
    this.preservedState =
        registerOutput<RegionPerInstanceConfigPreservedState?>(
            'preservedState');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.regionInstanceGroupManager =
        registerOutput<String>('regionInstanceGroupManager');
    this.removeInstanceOnDestroy =
        registerOutput<bool?>('removeInstanceOnDestroy');
    this.removeInstanceStateOnDestroy =
        registerOutput<bool?>('removeInstanceStateOnDestroy');
  }
}
