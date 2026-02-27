import 'package:pulumi/pulumi.dart';
import '../resource_policy_disk_consistency_group_policy/resource_policy_disk_consistency_group_policy.dart';
import '../resource_policy_group_placement_policy/resource_policy_group_placement_policy.dart';
import '../resource_policy_instance_schedule_policy/resource_policy_instance_schedule_policy.dart';
import '../resource_policy_snapshot_schedule_policy/resource_policy_snapshot_schedule_policy.dart';
import '../resource_policy_workload_policy/resource_policy_workload_policy.dart';
import 'resource_policy_args.dart';

/// A policy that can be attached to a resource to specify or schedule actions on that resource.
///
///
/// To get more information about ResourcePolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies)
///
/// ## Example Usage
///
/// ### Resource Policy Basic
///
///
///
/// ### Resource Policy Full
///
///
///
/// ### Resource Policy Placement Policy
///
///
///
/// ### Resource Policy Placement Policy Max Distance
///
///
///
/// ### Resource Policy Instance Schedule Policy
///
///
///
/// ### Resource Policy Snapshot Schedule Chain Name
///
///
///
/// ### Resource Policy Consistency Group
///
///
///
/// ### Resource Policy Workload Policy
///
///
///
/// ### Resource Policy Workload Policy Accelerator Topology
///
///
///
/// ### Resource Policy Workload Policy Max Topology Distance
///
///
///
/// ### Resource Policy Placement Policy Gpu Topology
///
///
///
/// ### Resource Policy Placement Policy Tpu Topology
///
///
///
///
/// ## Import
///
/// ResourcePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/resourcePolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ResourcePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default projects/{{project}}/regions/{{region}}/resourcePolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{name}}
/// ```
class ResourcePolicy extends CustomResource {
  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Replication consistency group for asynchronous disk replication.
  /// Structure is documented below.
  late final Output<ResourcePolicyDiskConsistencyGroupPolicy?>
      diskConsistencyGroupPolicy;

  /// Resource policy for instances used for placement configuration.
  /// Structure is documented below.
  late final Output<ResourcePolicyGroupPlacementPolicy?> groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  /// Structure is documented below.
  late final Output<ResourcePolicyInstanceSchedulePolicy?>
      instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating
  /// the resource. The resource name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z`? which means the
  /// first character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last character,
  /// which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where resource policy resides.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Policy for creating snapshots of persistent disks.
  /// Structure is documented below.
  late final Output<ResourcePolicySnapshotSchedulePolicy?>
      snapshotSchedulePolicy;

  /// Represents the workload policy.
  /// Structure is documented below.
  late final Output<ResourcePolicyWorkloadPolicy?> workloadPolicy;

  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.diskConsistencyGroupPolicy =
        registerOutput<ResourcePolicyDiskConsistencyGroupPolicy?>(
            'diskConsistencyGroupPolicy');
    this.groupPlacementPolicy =
        registerOutput<ResourcePolicyGroupPlacementPolicy?>(
            'groupPlacementPolicy');
    this.instanceSchedulePolicy =
        registerOutput<ResourcePolicyInstanceSchedulePolicy?>(
            'instanceSchedulePolicy');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.snapshotSchedulePolicy =
        registerOutput<ResourcePolicySnapshotSchedulePolicy?>(
            'snapshotSchedulePolicy');
    this.workloadPolicy =
        registerOutput<ResourcePolicyWorkloadPolicy?>('workloadPolicy');
  }
}
