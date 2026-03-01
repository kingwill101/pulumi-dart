// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_group_manager_all_instances_config.dart';
import 'region_instance_group_manager_auto_healing_policies.dart';
import 'region_instance_group_manager_instance_flexibility_policy.dart';
import 'region_instance_group_manager_instance_lifecycle_policy.dart';
import 'region_instance_group_manager_named_port.dart';
import 'region_instance_group_manager_params.dart';
import 'region_instance_group_manager_standby_policy.dart';
import 'region_instance_group_manager_stateful_disk.dart';
import 'region_instance_group_manager_stateful_external_ip.dart';
import 'region_instance_group_manager_stateful_internal_ip.dart';
import 'region_instance_group_manager_update_policy.dart';
import 'region_instance_group_manager_version.dart';

/// {@template pulumi_compute_region_instance_group_manager_region_instance_group_manager_args_doc}
/// The set of arguments for RegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_region_instance_group_manager_region_instance_group_manager_args_doc}
class RegionInstanceGroupManagerArgs {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final pulumi.Input<RegionInstanceGroupManagerAllInstancesConfig>?
  allInstancesConfig;

  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  final pulumi.Input<RegionInstanceGroupManagerAutoHealingPolicies>?
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

  /// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  final pulumi.Input<String>? distributionPolicyTargetShape;

  /// The distribution policy for this managed instance
  /// group. You can specify one or more values. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups#selectingzones).
  final pulumi.Input<List<String>>? distributionPolicyZones;

  /// The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// - - -
  final pulumi.Input<RegionInstanceGroupManagerInstanceFlexibilityPolicy>?
  instanceFlexibilityPolicy;

  /// The instance lifecycle policy for this managed instance group.
  final pulumi.Input<RegionInstanceGroupManagerInstanceLifecyclePolicy>?
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
  final pulumi.Input<List<RegionInstanceGroupManagerNamedPort>>? namedPorts;

  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  final pulumi.Input<RegionInstanceGroupManagerParams>? params;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region where the managed instance group resides. If not provided, the provider region is used.
  ///
  /// - - -
  final pulumi.Input<String>? region;

  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  final pulumi.Input<RegionInstanceGroupManagerStandbyPolicy>? standbyPolicy;

  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `update_policy`.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulDisk>>?
  statefulDisks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulExternalIp>>?
  statefulExternalIps;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerStatefulInternalIp>>?
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

  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  final pulumi.Input<RegionInstanceGroupManagerUpdatePolicy>? updatePolicy;

  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  final pulumi.Input<List<RegionInstanceGroupManagerVersion>> versions;

  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, the provider will
  /// continue trying until it times out.
  final pulumi.Input<bool>? waitForInstances;

  /// When used with `wait_for_instances` it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  final pulumi.Input<String>? waitForInstancesStatus;

  /// Creates a new [RegionInstanceGroupManagerArgs].
  /// [allInstancesConfig] Properties to set on all instances in the group. After setting
  /// [autoHealingPolicies] The autohealing policies for this managed instance
  /// [baseInstanceName] The base instance name to use for
  /// [description] An optional textual description of the instance
  /// [distributionPolicyTargetShape] The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  /// [distributionPolicyZones] The distribution policy for this managed instance
  /// [instanceFlexibilityPolicy] The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// [instanceLifecyclePolicy] The instance lifecycle policy for this managed instance group.
  /// [listManagedInstancesResults] Pagination behavior of the `listManagedInstances` API
  /// [name] The name of the instance group manager. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [params] Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region where the managed instance group resides. If not provided, the provider region is used.
  /// [standbyPolicy] The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  /// [statefulDisks] Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the `update_policy`.
  /// [statefulExternalIps] External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [statefulInternalIps] Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  /// [targetPools] The full URL of all target pools to which new
  /// [targetSize] The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group.
  /// [updatePolicy] The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  /// [versions] Application versions managed by this instance group. Each
  /// [waitForInstances] Whether to wait for all instances to be created/updated before
  /// [waitForInstancesStatus] When used with `wait_for_instances` it specifies the status to wait for.
  RegionInstanceGroupManagerArgs({
    RegionInstanceGroupManagerAllInstancesConfig? allInstancesConfig,
    RegionInstanceGroupManagerAutoHealingPolicies? autoHealingPolicies,
    required String baseInstanceName,
    String? description,
    String? distributionPolicyTargetShape,
    List<String>? distributionPolicyZones,
    RegionInstanceGroupManagerInstanceFlexibilityPolicy?
    instanceFlexibilityPolicy,
    RegionInstanceGroupManagerInstanceLifecyclePolicy? instanceLifecyclePolicy,
    String? listManagedInstancesResults,
    String? name,
    List<RegionInstanceGroupManagerNamedPort>? namedPorts,
    RegionInstanceGroupManagerParams? params,
    String? project,
    String? region,
    RegionInstanceGroupManagerStandbyPolicy? standbyPolicy,
    List<RegionInstanceGroupManagerStatefulDisk>? statefulDisks,
    List<RegionInstanceGroupManagerStatefulExternalIp>? statefulExternalIps,
    List<RegionInstanceGroupManagerStatefulInternalIp>? statefulInternalIps,
    List<String>? targetPools,
    int? targetSize,
    int? targetStoppedSize,
    int? targetSuspendedSize,
    RegionInstanceGroupManagerUpdatePolicy? updatePolicy,
    required List<RegionInstanceGroupManagerVersion> versions,
    bool? waitForInstances,
    String? waitForInstancesStatus,
  }) : allInstancesConfig =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerAllInstancesConfig
           >(allInstancesConfig),
       autoHealingPolicies =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerAutoHealingPolicies
           >(autoHealingPolicies),
       baseInstanceName = pulumi.Input.asInput<String>(baseInstanceName),
       description = pulumi.Input.asOptionalInput<String>(description),
       distributionPolicyTargetShape = pulumi.Input.asOptionalInput<String>(
         distributionPolicyTargetShape,
       ),
       distributionPolicyZones = pulumi.Input.asOptionalInput<List<String>>(
         distributionPolicyZones,
       ),
       instanceFlexibilityPolicy =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerInstanceFlexibilityPolicy
           >(instanceFlexibilityPolicy),
       instanceLifecyclePolicy =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerInstanceLifecyclePolicy
           >(instanceLifecyclePolicy),
       listManagedInstancesResults = pulumi.Input.asOptionalInput<String>(
         listManagedInstancesResults,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       namedPorts =
           pulumi.Input.asOptionalInput<
             List<RegionInstanceGroupManagerNamedPort>
           >(namedPorts),
       params = pulumi.Input.asOptionalInput<RegionInstanceGroupManagerParams>(
         params,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       standbyPolicy =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerStandbyPolicy
           >(standbyPolicy),
       statefulDisks =
           pulumi.Input.asOptionalInput<
             List<RegionInstanceGroupManagerStatefulDisk>
           >(statefulDisks),
       statefulExternalIps =
           pulumi.Input.asOptionalInput<
             List<RegionInstanceGroupManagerStatefulExternalIp>
           >(statefulExternalIps),
       statefulInternalIps =
           pulumi.Input.asOptionalInput<
             List<RegionInstanceGroupManagerStatefulInternalIp>
           >(statefulInternalIps),
       targetPools = pulumi.Input.asOptionalInput<List<String>>(targetPools),
       targetSize = pulumi.Input.asOptionalInput<int>(targetSize),
       targetStoppedSize = pulumi.Input.asOptionalInput<int>(targetStoppedSize),
       targetSuspendedSize = pulumi.Input.asOptionalInput<int>(
         targetSuspendedSize,
       ),
       updatePolicy =
           pulumi.Input.asOptionalInput<RegionInstanceGroupManagerUpdatePolicy>(
             updatePolicy,
           ),
       versions = pulumi.Input.asInput<List<RegionInstanceGroupManagerVersion>>(
         versions,
       ),
       waitForInstances = pulumi.Input.asOptionalInput<bool>(waitForInstances),
       waitForInstancesStatus = pulumi.Input.asOptionalInput<String>(
         waitForInstancesStatus,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerAllInstancesConfig,
            Map<String, dynamic>
          >(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerAutoHealingPolicies,
            Map<String, dynamic>
          >(autoHealingPolicies, (value) => value.toMap()),
      'baseInstanceName': baseInstanceName,
      'description': ?description,
      'distributionPolicyTargetShape': ?distributionPolicyTargetShape,
      'distributionPolicyZones': ?distributionPolicyZones,
      'instanceFlexibilityPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerInstanceFlexibilityPolicy,
            Map<String, dynamic>
          >(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerInstanceLifecyclePolicy,
            Map<String, dynamic>
          >(instanceLifecyclePolicy, (value) => value.toMap()),
      'listManagedInstancesResults': ?listManagedInstancesResults,
      'name': ?name,
      'namedPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionInstanceGroupManagerNamedPort>,
            List<Map<String, dynamic>>
          >(
            namedPorts,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerNamedPort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerParams,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'standbyPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerStandbyPolicy,
            Map<String, dynamic>
          >(standbyPolicy, (value) => value.toMap()),
      'statefulDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionInstanceGroupManagerStatefulDisk>,
            List<Map<String, dynamic>>
          >(
            statefulDisks,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerStatefulDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statefulExternalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionInstanceGroupManagerStatefulExternalIp>,
            List<Map<String, dynamic>>
          >(
            statefulExternalIps,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerStatefulExternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statefulInternalIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionInstanceGroupManagerStatefulInternalIp>,
            List<Map<String, dynamic>>
          >(
            statefulInternalIps,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerStatefulInternalIp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerUpdatePolicy,
            Map<String, dynamic>
          >(updatePolicy, (value) => value.toMap()),
      'versions':
          pulumi.Input.mapInputValue<
            List<RegionInstanceGroupManagerVersion>,
            List<Map<String, dynamic>>
          >(
            versions,
            (value) =>
                pulumi.Input.encodeList<
                  RegionInstanceGroupManagerVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'waitForInstances': ?waitForInstances,
      'waitForInstancesStatus': ?waitForInstancesStatus,
    };
  }

  factory RegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerArgs(
      allInstancesConfig: map['allInstancesConfig'] == null
          ? null
          : RegionInstanceGroupManagerAllInstancesConfig.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>(),
            ),
      autoHealingPolicies: map['autoHealingPolicies'] == null
          ? null
          : RegionInstanceGroupManagerAutoHealingPolicies.fromMap(
              (map['autoHealingPolicies'] as Map).cast<String, dynamic>(),
            ),
      baseInstanceName: map['baseInstanceName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      distributionPolicyTargetShape:
          map['distributionPolicyTargetShape'] == null
          ? null
          : map['distributionPolicyTargetShape'] as String,
      distributionPolicyZones: map['distributionPolicyZones'] == null
          ? null
          : (map['distributionPolicyZones'] as List).cast<String>(),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null
          ? null
          : RegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
              (map['instanceFlexibilityPolicy'] as Map).cast<String, dynamic>(),
            ),
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null
          ? null
          : RegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>(),
            ),
      listManagedInstancesResults: map['listManagedInstancesResults'] == null
          ? null
          : map['listManagedInstancesResults'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null
          ? null
          : pulumi.Input.decodeList<RegionInstanceGroupManagerNamedPort>(
              map['namedPorts'],
              (value) => RegionInstanceGroupManagerNamedPort.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      params: map['params'] == null
          ? null
          : RegionInstanceGroupManagerParams.fromMap(
              (map['params'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      standbyPolicy: map['standbyPolicy'] == null
          ? null
          : RegionInstanceGroupManagerStandbyPolicy.fromMap(
              (map['standbyPolicy'] as Map).cast<String, dynamic>(),
            ),
      statefulDisks: map['statefulDisks'] == null
          ? null
          : pulumi.Input.decodeList<RegionInstanceGroupManagerStatefulDisk>(
              map['statefulDisks'],
              (value) => RegionInstanceGroupManagerStatefulDisk.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statefulExternalIps: map['statefulExternalIps'] == null
          ? null
          : pulumi
                .Input.decodeList<RegionInstanceGroupManagerStatefulExternalIp>(
              map['statefulExternalIps'],
              (value) => RegionInstanceGroupManagerStatefulExternalIp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statefulInternalIps: map['statefulInternalIps'] == null
          ? null
          : pulumi
                .Input.decodeList<RegionInstanceGroupManagerStatefulInternalIp>(
              map['statefulInternalIps'],
              (value) => RegionInstanceGroupManagerStatefulInternalIp.fromMap(
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
          : RegionInstanceGroupManagerUpdatePolicy.fromMap(
              (map['updatePolicy'] as Map).cast<String, dynamic>(),
            ),
      versions: pulumi.Input.decodeList<RegionInstanceGroupManagerVersion>(
        map['versions'],
        (value) => RegionInstanceGroupManagerVersion.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      waitForInstances: map['waitForInstances'] == null
          ? null
          : map['waitForInstances'] as bool,
      waitForInstancesStatus: map['waitForInstancesStatus'] == null
          ? null
          : map['waitForInstancesStatus'] as String,
    );
  }
}
