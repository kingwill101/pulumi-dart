import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_instance_group_manager_all_instances_config/region_instance_group_manager_all_instances_config.dart';
import '../region_instance_group_manager_auto_healing_policies/region_instance_group_manager_auto_healing_policies.dart';
import '../region_instance_group_manager_instance_flexibility_policy/region_instance_group_manager_instance_flexibility_policy.dart';
import '../region_instance_group_manager_instance_lifecycle_policy/region_instance_group_manager_instance_lifecycle_policy.dart';
import '../region_instance_group_manager_named_port/region_instance_group_manager_named_port.dart';
import '../region_instance_group_manager_params/region_instance_group_manager_params.dart';
import '../region_instance_group_manager_standby_policy/region_instance_group_manager_standby_policy.dart';
import '../region_instance_group_manager_stateful_disk/region_instance_group_manager_stateful_disk.dart';
import '../region_instance_group_manager_stateful_external_ip/region_instance_group_manager_stateful_external_ip.dart';
import '../region_instance_group_manager_stateful_internal_ip/region_instance_group_manager_stateful_internal_ip.dart';
import '../region_instance_group_manager_status/region_instance_group_manager_status.dart';
import '../region_instance_group_manager_update_policy/region_instance_group_manager_update_policy.dart';
import '../region_instance_group_manager_version/region_instance_group_manager_version.dart';
import 'region_instance_group_manager_args.dart';

/// The Google Compute Engine Regional Instance Group Manager API creates and manages pools
/// of homogeneous Compute Engine virtual machine instances from a common instance
/// template.
///
/// To get more information about regionInstanceGroupManagers, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/latest/regionInstanceGroupManagers)
/// * How-to Guides
/// * [Regional Instance Groups Guide](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups)
///
/// > **Note:** Use [gcp.compute.InstanceGroupManager](https://www.terraform.io/docs/providers/google/r/compute_instance_group_manager.html) to create a zonal instance group manager.
///
/// ## Example Usage
///
/// ### With Top Level Instance Template (`Google` Provider)
///
///
///
///
/// ### With Multiple Versions
///
///
/// ### With Standby Policy (`Google` Provider)
///
///
/// ## Import
///
/// Instance group managers can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance group managers can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionInstanceGroupManager:RegionInstanceGroupManager default {{name}}
/// ```
class RegionInstanceGroupManager extends pulumi.CustomResource {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  late final pulumi.Output<RegionInstanceGroupManagerAllInstancesConfig?>
      allInstancesConfig;

  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  late final pulumi.Output<RegionInstanceGroupManagerAutoHealingPolicies?>
      autoHealingPolicies;

  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  late final pulumi.Output<String> baseInstanceName;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional textual description of the instance
  /// group manager.
  late final pulumi.Output<String?> description;

  /// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  late final pulumi.Output<String> distributionPolicyTargetShape;

  /// The distribution policy for this managed instance
  /// group. You can specify one or more values. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups#selectingzones).
  late final pulumi.Output<List<String>> distributionPolicyZones;

  /// The fingerprint of the instance group manager.
  late final pulumi.Output<String> fingerprint;

  /// The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// - - -
  late final pulumi.Output<RegionInstanceGroupManagerInstanceFlexibilityPolicy?>
      instanceFlexibilityPolicy;

  /// The full URL of the instance group created by the manager.
  late final pulumi.Output<String> instanceGroup;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> instanceGroupManagerId;

  /// The instance lifecycle policy for this managed instance group.
  late final pulumi.Output<RegionInstanceGroupManagerInstanceLifecyclePolicy>
      instanceLifecyclePolicy;

  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  late final pulumi.Output<String?> listManagedInstancesResults;

  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> name;

  /// The named port configuration. See the section below
  /// for details on configuration.
  late final pulumi.Output<List<RegionInstanceGroupManagerNamedPort>?>
      namedPorts;

  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  late final pulumi.Output<RegionInstanceGroupManagerParams?> params;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The region where the managed instance group resides. If not provided, the provider region is used.
  ///
  /// - - -
  late final pulumi.Output<String> region;

  /// The URL of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  late final pulumi.Output<RegionInstanceGroupManagerStandbyPolicy>
      standbyPolicy;

  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `update_policy`.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulDisk>?>
      statefulDisks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulExternalIp>?>
      statefulExternalIps;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatefulInternalIp>?>
      statefulInternalIps;

  /// The status of this managed instance group.
  late final pulumi.Output<List<RegionInstanceGroupManagerStatus>> statuses;

  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  late final pulumi.Output<List<String>?> targetPools;

  /// The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  late final pulumi.Output<int> targetSize;

  /// The target number of stopped instances for this managed instance group.
  late final pulumi.Output<int> targetStoppedSize;

  /// The target number of suspended instances for this managed instance group.
  late final pulumi.Output<int> targetSuspendedSize;

  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  late final pulumi.Output<RegionInstanceGroupManagerUpdatePolicy> updatePolicy;

  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionInstanceGroupManagerVersion>> versions;

  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, the provider will
  /// continue trying until it times out.
  late final pulumi.Output<bool?> waitForInstances;

  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  late final pulumi.Output<String?> waitForInstancesStatus;

  RegionInstanceGroupManager(
    String name, {
    RegionInstanceGroupManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionInstanceGroupManager:RegionInstanceGroupManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allInstancesConfig =
        registerOutput<RegionInstanceGroupManagerAllInstancesConfig?>(
            'allInstancesConfig');
    this.autoHealingPolicies =
        registerOutput<RegionInstanceGroupManagerAutoHealingPolicies?>(
            'autoHealingPolicies');
    this.baseInstanceName = registerOutput<String>('baseInstanceName');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.distributionPolicyTargetShape =
        registerOutput<String>('distributionPolicyTargetShape');
    this.distributionPolicyZones =
        registerOutput<List<String>>('distributionPolicyZones');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.instanceFlexibilityPolicy =
        registerOutput<RegionInstanceGroupManagerInstanceFlexibilityPolicy?>(
            'instanceFlexibilityPolicy');
    this.instanceGroup = registerOutput<String>('instanceGroup');
    this.instanceGroupManagerId = registerOutput<int>('instanceGroupManagerId');
    this.instanceLifecyclePolicy =
        registerOutput<RegionInstanceGroupManagerInstanceLifecyclePolicy>(
            'instanceLifecyclePolicy');
    this.listManagedInstancesResults =
        registerOutput<String?>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    this.namedPorts =
        registerOutput<List<RegionInstanceGroupManagerNamedPort>?>(
            'namedPorts');
    this.params = registerOutput<RegionInstanceGroupManagerParams?>('params');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.standbyPolicy =
        registerOutput<RegionInstanceGroupManagerStandbyPolicy>(
            'standbyPolicy');
    this.statefulDisks =
        registerOutput<List<RegionInstanceGroupManagerStatefulDisk>?>(
            'statefulDisks');
    this.statefulExternalIps =
        registerOutput<List<RegionInstanceGroupManagerStatefulExternalIp>?>(
            'statefulExternalIps');
    this.statefulInternalIps =
        registerOutput<List<RegionInstanceGroupManagerStatefulInternalIp>?>(
            'statefulInternalIps');
    this.statuses =
        registerOutput<List<RegionInstanceGroupManagerStatus>>('statuses');
    this.targetPools = registerOutput<List<String>?>('targetPools');
    this.targetSize = registerOutput<int>('targetSize');
    this.targetStoppedSize = registerOutput<int>('targetStoppedSize');
    this.targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    this.updatePolicy =
        registerOutput<RegionInstanceGroupManagerUpdatePolicy>('updatePolicy');
    this.versions =
        registerOutput<List<RegionInstanceGroupManagerVersion>>('versions');
    this.waitForInstances = registerOutput<bool?>('waitForInstances');
    this.waitForInstancesStatus =
        registerOutput<String?>('waitForInstancesStatus');
  }
}
