// ignore_for_file: unused_element, unnecessary_cast

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
import '../instance_group_manager_update_policy/instance_group_manager_update_policy.dart';
import '../instance_group_manager_version/instance_group_manager_version.dart';

/// The set of arguments for InstanceGroupManager.
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

  InstanceGroupManagerArgs({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    required this.baseInstanceName,
    this.description,
    this.instanceLifecyclePolicy,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.params,
    this.project,
    this.resourcePolicies,
    this.standbyPolicy,
    this.statefulDisks,
    this.statefulExternalIps,
    this.statefulInternalIps,
    this.targetPools,
    this.targetSize,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    required this.versions,
    this.waitForInstances,
    this.waitForInstancesStatus,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigValue = allInstancesConfig;
    if (allInstancesConfigValue != null) {
      map['allInstancesConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(
          allInstancesConfigValue, (value) => value.toMap());
    }
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerAutoHealingPolicies, Map<String, dynamic>>(
          autoHealingPoliciesValue, (value) => value.toMap());
    }
    map['baseInstanceName'] = baseInstanceName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceLifecyclePolicy,
              Map<String, dynamic>>(
          instanceLifecyclePolicyValue, (value) => value.toMap());
    }
    final listManagedInstancesResultsValue = listManagedInstancesResults;
    if (listManagedInstancesResultsValue != null) {
      map['listManagedInstancesResults'] = listManagedInstancesResultsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerNamedPort>, List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => pulumi.Input.encodeList<InstanceGroupManagerNamedPort,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerResourcePolicies, Map<String, dynamic>>(
          resourcePoliciesValue, (value) => value.toMap());
    }
    final standbyPolicyValue = standbyPolicy;
    if (standbyPolicyValue != null) {
      map['standbyPolicy'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerStandbyPolicy,
          Map<String, dynamic>>(standbyPolicyValue, (value) => value.toMap());
    }
    final statefulDisksValue = statefulDisks;
    if (statefulDisksValue != null) {
      map['statefulDisks'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerStatefulDisk>,
              List<Map<String, dynamic>>>(
          statefulDisksValue,
          (value) => pulumi.Input.encodeList<InstanceGroupManagerStatefulDisk,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final statefulExternalIpsValue = statefulExternalIps;
    if (statefulExternalIpsValue != null) {
      map['statefulExternalIps'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerStatefulExternalIp>,
              List<Map<String, dynamic>>>(
          statefulExternalIpsValue,
          (value) => pulumi.Input.encodeList<
              InstanceGroupManagerStatefulExternalIp,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final statefulInternalIpsValue = statefulInternalIps;
    if (statefulInternalIpsValue != null) {
      map['statefulInternalIps'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerStatefulInternalIp>,
              List<Map<String, dynamic>>>(
          statefulInternalIpsValue,
          (value) => pulumi.Input.encodeList<
              InstanceGroupManagerStatefulInternalIp,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final targetPoolsValue = targetPools;
    if (targetPoolsValue != null) {
      map['targetPools'] = targetPoolsValue;
    }
    final targetSizeValue = targetSize;
    if (targetSizeValue != null) {
      map['targetSize'] = targetSizeValue;
    }
    final targetStoppedSizeValue = targetStoppedSize;
    if (targetStoppedSizeValue != null) {
      map['targetStoppedSize'] = targetStoppedSizeValue;
    }
    final targetSuspendedSizeValue = targetSuspendedSize;
    if (targetSuspendedSizeValue != null) {
      map['targetSuspendedSize'] = targetSuspendedSizeValue;
    }
    final updatePolicyValue = updatePolicy;
    if (updatePolicyValue != null) {
      map['updatePolicy'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerUpdatePolicy,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    map['versions'] = pulumi.Input.mapInputValue<
            List<InstanceGroupManagerVersion>, List<Map<String, dynamic>>>(
        versions,
        (value) => pulumi.Input.encodeList<InstanceGroupManagerVersion,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final waitForInstancesValue = waitForInstances;
    if (waitForInstancesValue != null) {
      map['waitForInstances'] = waitForInstancesValue;
    }
    final waitForInstancesStatusValue = waitForInstancesStatus;
    if (waitForInstancesStatusValue != null) {
      map['waitForInstancesStatus'] = waitForInstancesStatusValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerArgs(
      allInstancesConfig:
          pulumi.Input.asOptionalInput<InstanceGroupManagerAllInstancesConfig>(
              map['allInstancesConfig']),
      autoHealingPolicies:
          pulumi.Input.asOptionalInput<InstanceGroupManagerAutoHealingPolicies>(
              map['autoHealingPolicies']),
      baseInstanceName: pulumi.Input.asInput<String>(map['baseInstanceName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceLifecyclePolicy: pulumi.Input.asOptionalInput<
              InstanceGroupManagerInstanceLifecyclePolicy>(
          map['instanceLifecyclePolicy']),
      listManagedInstancesResults: pulumi.Input.asOptionalInput<String>(
          map['listManagedInstancesResults']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namedPorts:
          pulumi.Input.asOptionalInput<List<InstanceGroupManagerNamedPort>>(
              map['namedPorts']),
      params: pulumi.Input.asOptionalInput<InstanceGroupManagerParams>(
          map['params']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourcePolicies:
          pulumi.Input.asOptionalInput<InstanceGroupManagerResourcePolicies>(
              map['resourcePolicies']),
      standbyPolicy:
          pulumi.Input.asOptionalInput<InstanceGroupManagerStandbyPolicy>(
              map['standbyPolicy']),
      statefulDisks:
          pulumi.Input.asOptionalInput<List<InstanceGroupManagerStatefulDisk>>(
              map['statefulDisks']),
      statefulExternalIps: pulumi.Input.asOptionalInput<
              List<InstanceGroupManagerStatefulExternalIp>>(
          map['statefulExternalIps']),
      statefulInternalIps: pulumi.Input.asOptionalInput<
              List<InstanceGroupManagerStatefulInternalIp>>(
          map['statefulInternalIps']),
      targetPools:
          pulumi.Input.asOptionalInput<List<String>>(map['targetPools']),
      targetSize: pulumi.Input.asOptionalInput<int>(map['targetSize']),
      targetStoppedSize:
          pulumi.Input.asOptionalInput<int>(map['targetStoppedSize']),
      targetSuspendedSize:
          pulumi.Input.asOptionalInput<int>(map['targetSuspendedSize']),
      updatePolicy:
          pulumi.Input.asOptionalInput<InstanceGroupManagerUpdatePolicy>(
              map['updatePolicy']),
      versions: pulumi.Input.asInput<List<InstanceGroupManagerVersion>>(
          map['versions']),
      waitForInstances:
          pulumi.Input.asOptionalInput<bool>(map['waitForInstances']),
      waitForInstancesStatus:
          pulumi.Input.asOptionalInput<String>(map['waitForInstancesStatus']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
