// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_all_instances_config.dart';
import 'instance_group_manager_auto_healing_policies.dart';
import 'instance_group_manager_instance_lifecycle_policy.dart';
import 'instance_group_manager_named_port.dart';
import 'instance_group_manager_params.dart';
import 'instance_group_manager_resource_policies.dart';
import 'instance_group_manager_standby_policy.dart';
import 'instance_group_manager_stateful_disk.dart';
import 'instance_group_manager_stateful_external_ip.dart';
import 'instance_group_manager_stateful_internal_ip.dart';
import 'instance_group_manager_update_policy.dart';
import 'instance_group_manager_version.dart';

/// {@template pulumi_compute_instance_group_manager_instance_group_manager_args_doc}
/// The set of arguments for InstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_group_manager_instance_group_manager_args_doc}
class InstanceGroupManagerArgs {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfig>?
  allInstancesConfig;

  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  final pulumi.Input<InstanceGroupManagerAutoHealingPolicies>?
  autoHealingPolicies;

  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  final pulumi.Input<String> baseInstanceName;

  /// An optional textual description of the instance
  /// group manager.
  final pulumi.Input<String>? description;

  /// The instance lifecycle policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicy>?
  instanceLifecyclePolicy;

  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  final pulumi.Input<String>? listManagedInstancesResults;

  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;

  /// The named port configuration. See the section below
  /// for details on configuration.
  final pulumi.Input<List<InstanceGroupManagerNamedPort>>? namedPorts;

  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  final pulumi.Input<InstanceGroupManagerParams>? params;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Resource policies for this managed instance group. Structure is documented below.
  ///
  /// - - -
  final pulumi.Input<InstanceGroupManagerResourcePolicies>? resourcePolicies;

  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  final pulumi.Input<InstanceGroupManagerStandbyPolicy>? standbyPolicy;

  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  final pulumi.Input<List<InstanceGroupManagerStatefulDisk>>? statefulDisks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerStatefulExternalIp>>?
  statefulExternalIps;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerStatefulInternalIp>>?
  statefulInternalIps;

  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  final pulumi.Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  final pulumi.Input<int>? targetSize;

  /// The target number of stopped instances for this managed instance group.
  final pulumi.Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group.
  final pulumi.Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  final pulumi.Input<InstanceGroupManagerUpdatePolicy>? updatePolicy;

  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGroupManagerVersion>> versions;

  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, this provider will
  /// continue trying until it times out.
  final pulumi.Input<bool>? waitForInstances;

  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  final pulumi.Input<String>? waitForInstancesStatus;

  /// The zone that instances in this group should be created
  /// in.
  ///
  /// - - -
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerArgs].
  /// [allInstancesConfig] Properties to set on all instances in the group. After setting
  /// [autoHealingPolicies] The autohealing policies for this managed instance
  /// [baseInstanceName] The base instance name to use for
  /// [description] An optional textual description of the instance
  /// [instanceLifecyclePolicy] The instance lifecycle policy for this managed instance group.
  /// [listManagedInstancesResults] Pagination behavior of the `listManagedInstances` API
  /// [name] The name of the instance group manager. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [params] Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [resourcePolicies] Resource policies for this managed instance group. Structure is documented below.
  /// [standbyPolicy] The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  /// [statefulDisks] Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs).
  /// [statefulExternalIps] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statefulInternalIps] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [targetPools] The full URL of all target pools to which new
  /// [targetSize] The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group.
  /// [updatePolicy] The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/v1/instanceGroupManagers/patch).
  /// [versions] Application versions managed by this instance group. Each
  /// [waitForInstances] Whether to wait for all instances to be created/updated before
  /// [waitForInstancesStatus] When used with `wait_for_instances` it specifies the status to wait for.
  /// [zone] The zone that instances in this group should be created
  InstanceGroupManagerArgs({
    InstanceGroupManagerAllInstancesConfig? allInstancesConfig,
    InstanceGroupManagerAutoHealingPolicies? autoHealingPolicies,
    required String baseInstanceName,
    String? description,
    InstanceGroupManagerInstanceLifecyclePolicy? instanceLifecyclePolicy,
    String? listManagedInstancesResults,
    String? name,
    List<InstanceGroupManagerNamedPort>? namedPorts,
    InstanceGroupManagerParams? params,
    String? project,
    InstanceGroupManagerResourcePolicies? resourcePolicies,
    InstanceGroupManagerStandbyPolicy? standbyPolicy,
    List<InstanceGroupManagerStatefulDisk>? statefulDisks,
    List<InstanceGroupManagerStatefulExternalIp>? statefulExternalIps,
    List<InstanceGroupManagerStatefulInternalIp>? statefulInternalIps,
    List<String>? targetPools,
    int? targetSize,
    int? targetStoppedSize,
    int? targetSuspendedSize,
    InstanceGroupManagerUpdatePolicy? updatePolicy,
    required List<InstanceGroupManagerVersion> versions,
    bool? waitForInstances,
    String? waitForInstancesStatus,
    String? zone,
  }) : allInstancesConfig =
           pulumi.Input.asOptionalInput<InstanceGroupManagerAllInstancesConfig>(
             allInstancesConfig,
           ),
       autoHealingPolicies =
           pulumi.Input.asOptionalInput<
             InstanceGroupManagerAutoHealingPolicies
           >(autoHealingPolicies),
       baseInstanceName = pulumi.Input.asInput<String>(baseInstanceName),
       description = pulumi.Input.asOptionalInput<String>(description),
       instanceLifecyclePolicy =
           pulumi.Input.asOptionalInput<
             InstanceGroupManagerInstanceLifecyclePolicy
           >(instanceLifecyclePolicy),
       listManagedInstancesResults = pulumi.Input.asOptionalInput<String>(
         listManagedInstancesResults,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       namedPorts =
           pulumi.Input.asOptionalInput<List<InstanceGroupManagerNamedPort>>(
             namedPorts,
           ),
       params = pulumi.Input.asOptionalInput<InstanceGroupManagerParams>(
         params,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       resourcePolicies =
           pulumi.Input.asOptionalInput<InstanceGroupManagerResourcePolicies>(
             resourcePolicies,
           ),
       standbyPolicy =
           pulumi.Input.asOptionalInput<InstanceGroupManagerStandbyPolicy>(
             standbyPolicy,
           ),
       statefulDisks =
           pulumi.Input.asOptionalInput<List<InstanceGroupManagerStatefulDisk>>(
             statefulDisks,
           ),
       statefulExternalIps =
           pulumi.Input.asOptionalInput<
             List<InstanceGroupManagerStatefulExternalIp>
           >(statefulExternalIps),
       statefulInternalIps =
           pulumi.Input.asOptionalInput<
             List<InstanceGroupManagerStatefulInternalIp>
           >(statefulInternalIps),
       targetPools = pulumi.Input.asOptionalInput<List<String>>(targetPools),
       targetSize = pulumi.Input.asOptionalInput<int>(targetSize),
       targetStoppedSize = pulumi.Input.asOptionalInput<int>(targetStoppedSize),
       targetSuspendedSize = pulumi.Input.asOptionalInput<int>(
         targetSuspendedSize,
       ),
       updatePolicy =
           pulumi.Input.asOptionalInput<InstanceGroupManagerUpdatePolicy>(
             updatePolicy,
           ),
       versions = pulumi.Input.asInput<List<InstanceGroupManagerVersion>>(
         versions,
       ),
       waitForInstances = pulumi.Input.asOptionalInput<bool>(waitForInstances),
       waitForInstancesStatus = pulumi.Input.asOptionalInput<String>(
         waitForInstancesStatus,
       ),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerAllInstancesConfig,
            Map<String, dynamic>
          >(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerAutoHealingPolicies,
            Map<String, dynamic>
          >(autoHealingPolicies, (value) => value.toMap()),
      'baseInstanceName': baseInstanceName,
      'description': ?description,
      'instanceLifecyclePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerInstanceLifecyclePolicy,
            Map<String, dynamic>
          >(instanceLifecyclePolicy, (value) => value.toMap()),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerNamedPort>,
            List<Map<String, dynamic>>
          >(
            namedPorts,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerNamedPort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'project': ?project,
      'resourcePolicies':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerResourcePolicies,
            Map<String, dynamic>
          >(resourcePolicies, (value) => value.toMap()),
      'standbyPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerStandbyPolicy,
            Map<String, dynamic>
          >(standbyPolicy, (value) => value.toMap()),
      'statefulDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatefulDisk>,
            List<Map<String, dynamic>>
          >(
            statefulDisks,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatefulDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statefulExternalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatefulExternalIp>,
            List<Map<String, dynamic>>
          >(
            statefulExternalIps,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatefulExternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statefulInternalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatefulInternalIp>,
            List<Map<String, dynamic>>
          >(
            statefulInternalIps,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatefulInternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerUpdatePolicy,
            Map<String, dynamic>
          >(updatePolicy, (value) => value.toMap()),
      'versions':
          pulumi.Input.mapInputValue<
            List<InstanceGroupManagerVersion>,
            List<Map<String, dynamic>>
          >(
            versions,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerArgs(
      allInstancesConfig: map['allInstancesConfig'] == null
          ? null
          : InstanceGroupManagerAllInstancesConfig.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>(),
            ),
      autoHealingPolicies: map['autoHealingPolicies'] == null
          ? null
          : InstanceGroupManagerAutoHealingPolicies.fromMap(
              (map['autoHealingPolicies'] as Map).cast<String, dynamic>(),
            ),
      baseInstanceName: map['baseInstanceName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null
          ? null
          : InstanceGroupManagerInstanceLifecyclePolicy.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>(),
            ),
      listManagedInstancesResults: map['listManagedInstancesResults'] == null
          ? null
          : map['listManagedInstancesResults'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerNamedPort>(
              map['namedPorts'],
              (value) => InstanceGroupManagerNamedPort.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      params: map['params'] == null
          ? null
          : InstanceGroupManagerParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : InstanceGroupManagerResourcePolicies.fromMap(
              (map['resourcePolicies'] as Map).cast<String, dynamic>(),
            ),
      standbyPolicy: map['standbyPolicy'] == null
          ? null
          : InstanceGroupManagerStandbyPolicy.fromMap(
              (map['standbyPolicy'] as Map).cast<String, dynamic>(),
            ),
      statefulDisks: map['statefulDisks'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerStatefulDisk>(
              map['statefulDisks'],
              (value) => InstanceGroupManagerStatefulDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statefulExternalIps: map['statefulExternalIps'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerStatefulExternalIp>(
              map['statefulExternalIps'],
              (value) => InstanceGroupManagerStatefulExternalIp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statefulInternalIps: map['statefulInternalIps'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerStatefulInternalIp>(
              map['statefulInternalIps'],
              (value) => InstanceGroupManagerStatefulInternalIp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      targetPools: map['targetPools'] == null
          ? null
          : (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] == null ? null : map['targetSize'] as int,
      targetStoppedSize: map['targetStoppedSize'] == null
          ? null
          : map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] == null
          ? null
          : map['targetSuspendedSize'] as int,
      updatePolicy: map['updatePolicy'] == null
          ? null
          : InstanceGroupManagerUpdatePolicy.fromMap(
              (map['updatePolicy'] as Map).cast<String, dynamic>(),
            ),
      versions: pulumi.Input.decodeList<InstanceGroupManagerVersion>(
        map['versions'],
        (value) => InstanceGroupManagerVersion.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      waitForInstances: map['waitForInstances'] == null
          ? null
          : map['waitForInstances'] as bool,
      waitForInstancesStatus: map['waitForInstancesStatus'] == null
          ? null
          : map['waitForInstancesStatus'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
