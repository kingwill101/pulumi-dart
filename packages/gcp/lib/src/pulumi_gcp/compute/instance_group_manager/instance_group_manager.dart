import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_group_manager_all_instances_config/instance_group_manager_all_instances_config.dart';
import '../instance_group_manager_auto_healing_policies/instance_group_manager_auto_healing_policies.dart';
import '../instance_group_manager_instance_lifecycle_policy/instance_group_manager_instance_lifecycle_policy.dart';
import '../instance_group_manager_named_port/instance_group_manager_named_port.dart';
import '../instance_group_manager_params/instance_group_manager_params.dart';
import '../instance_group_manager_resource_policies/instance_group_manager_resource_policies.dart';
import '../instance_group_manager_standby_policy/instance_group_manager_standby_policy.dart';
import '../instance_group_manager_stateful_disk/instance_group_manager_stateful_disk.dart';
import '../instance_group_manager_stateful_external_ip/instance_group_manager_stateful_external_ip.dart';
import '../instance_group_manager_stateful_internal_ip/instance_group_manager_stateful_internal_ip.dart';
import '../instance_group_manager_status/instance_group_manager_status.dart';
import '../instance_group_manager_update_policy/instance_group_manager_update_policy.dart';
import '../instance_group_manager_version/instance_group_manager_version.dart';
import 'instance_group_manager_args.dart';

/// The Google Compute Engine Instance Group Manager API creates and manages pools
/// of homogeneous Compute Engine virtual machine instances from a common instance
/// template. For more information, see [the official documentation](https://cloud.google.com/compute/docs/instance-groups/manager)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers)
///
/// > **Note:** Use [gcp.compute.RegionInstanceGroupManager](https://www.terraform.io/docs/providers/google/r/compute_region_instance_group_manager.html) to create a regional (multi-zone) instance group manager.
///
/// ## Example Usage
///
/// ### With Top Level Instance Template (`Google` Provider)
///
///
///
///
/// ### With Multiple Versions (`Google-Beta` Provider)
///
///
///
/// ### With Standby Policy (`Google` Provider)
///
///
///
/// ### With Resource Policies (`Google` Provider)
///
///
/// ## Import
///
/// Instance group managers can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, instance group managers can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupManager:InstanceGroupManager default projects/{{project}}/zones/{{zone}}/instanceGroupManagers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupManager:InstanceGroupManager default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupManager:InstanceGroupManager default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceGroupManager:InstanceGroupManager default {{name}}
/// ```
class InstanceGroupManager extends pulumi.CustomResource {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  late final pulumi.Output<InstanceGroupManagerAllInstancesConfig?>
      allInstancesConfig;

  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  late final pulumi.Output<InstanceGroupManagerAutoHealingPolicies?>
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

  /// The fingerprint of the instance group manager.
  late final pulumi.Output<String> fingerprint;

  /// The full URL of the instance group created by the manager.
  late final pulumi.Output<String> instanceGroup;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> instanceGroupManagerId;

  /// The instance lifecycle policy for this managed instance group.
  late final pulumi.Output<InstanceGroupManagerInstanceLifecyclePolicy>
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
  late final pulumi.Output<List<InstanceGroupManagerNamedPort>?> namedPorts;
  late final pulumi.Output<String> operation;

  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  late final pulumi.Output<InstanceGroupManagerParams?> params;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Resource policies for this managed instance group. Structure is documented below.
  ///
  /// - - -
  late final pulumi.Output<InstanceGroupManagerResourcePolicies?>
      resourcePolicies;

  /// The URL of the created resource.
  late final pulumi.Output<String> selfLink;

  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  late final pulumi.Output<InstanceGroupManagerStandbyPolicy> standbyPolicy;

  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  late final pulumi.Output<List<InstanceGroupManagerStatefulDisk>?>
      statefulDisks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<InstanceGroupManagerStatefulExternalIp>?>
      statefulExternalIps;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  late final pulumi.Output<List<InstanceGroupManagerStatefulInternalIp>?>
      statefulInternalIps;

  /// The status of this managed instance group.
  late final pulumi.Output<List<InstanceGroupManagerStatus>> statuses;

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

  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  late final pulumi.Output<InstanceGroupManagerUpdatePolicy> updatePolicy;

  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceGroupManagerVersion>> versions;

  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, this provider will
  /// continue trying until it times out.
  late final pulumi.Output<bool?> waitForInstances;

  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  late final pulumi.Output<String?> waitForInstancesStatus;

  /// The zone that instances in this group should be created
  /// in.
  ///
  /// - - -
  late final pulumi.Output<String> zone;

  InstanceGroupManager(
    String name, {
    InstanceGroupManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceGroupManager:InstanceGroupManager',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allInstancesConfig =
        registerOutput<InstanceGroupManagerAllInstancesConfig?>(
            'allInstancesConfig');
    this.autoHealingPolicies =
        registerOutput<InstanceGroupManagerAutoHealingPolicies?>(
            'autoHealingPolicies');
    this.baseInstanceName = registerOutput<String>('baseInstanceName');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.instanceGroup = registerOutput<String>('instanceGroup');
    this.instanceGroupManagerId = registerOutput<int>('instanceGroupManagerId');
    this.instanceLifecyclePolicy =
        registerOutput<InstanceGroupManagerInstanceLifecyclePolicy>(
            'instanceLifecyclePolicy');
    this.listManagedInstancesResults =
        registerOutput<String?>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    this.namedPorts =
        registerOutput<List<InstanceGroupManagerNamedPort>?>('namedPorts');
    this.operation = registerOutput<String>('operation');
    this.params = registerOutput<InstanceGroupManagerParams?>('params');
    this.project = registerOutput<String>('project');
    this.resourcePolicies =
        registerOutput<InstanceGroupManagerResourcePolicies?>(
            'resourcePolicies');
    this.selfLink = registerOutput<String>('selfLink');
    this.standbyPolicy =
        registerOutput<InstanceGroupManagerStandbyPolicy>('standbyPolicy');
    this.statefulDisks =
        registerOutput<List<InstanceGroupManagerStatefulDisk>?>(
            'statefulDisks');
    this.statefulExternalIps =
        registerOutput<List<InstanceGroupManagerStatefulExternalIp>?>(
            'statefulExternalIps');
    this.statefulInternalIps =
        registerOutput<List<InstanceGroupManagerStatefulInternalIp>?>(
            'statefulInternalIps');
    this.statuses =
        registerOutput<List<InstanceGroupManagerStatus>>('statuses');
    this.targetPools = registerOutput<List<String>?>('targetPools');
    this.targetSize = registerOutput<int>('targetSize');
    this.targetStoppedSize = registerOutput<int>('targetStoppedSize');
    this.targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    this.updatePolicy =
        registerOutput<InstanceGroupManagerUpdatePolicy>('updatePolicy');
    this.versions =
        registerOutput<List<InstanceGroupManagerVersion>>('versions');
    this.waitForInstances = registerOutput<bool?>('waitForInstances');
    this.waitForInstancesStatus =
        registerOutput<String?>('waitForInstancesStatus');
    this.zone = registerOutput<String>('zone');
  }
}
