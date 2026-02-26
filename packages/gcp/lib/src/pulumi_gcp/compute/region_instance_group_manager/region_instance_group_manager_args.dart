// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
import '../region_instance_group_manager_update_policy/region_instance_group_manager_update_policy.dart';
import '../region_instance_group_manager_version/region_instance_group_manager_version.dart';

/// The set of arguments for RegionInstanceGroupManager.
class RegionInstanceGroupManagerArgs {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final Input<RegionInstanceGroupManagerAllInstancesConfig>? allInstancesConfig;

  /// The autohealing policies for this managed instance
  /// group. You can specify only one value. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/creating-groups-of-managed-instances#monitoring_groups).
  final Input<RegionInstanceGroupManagerAutoHealingPolicies>?
      autoHealingPolicies;

  /// The base instance name to use for
  /// instances in this group. The value must be a valid
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt) name. Supported characters
  /// are lowercase letters, numbers, and hyphens (-). Instances are named by
  /// appending a hyphen and a random four-character string to the base instance
  /// name.
  final Input<String> baseInstanceName;

  /// An optional textual description of the instance
  /// group manager.
  final Input<String>? description;

  /// The shape to which the group converges either proactively or on resize events (depending on the value set in update_policy.0.instance_redistribution_type). For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/regional-mig-distribution-shape).
  final Input<String>? distributionPolicyTargetShape;

  /// The distribution policy for this managed instance
  /// group. You can specify one or more values. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/distributing-instances-with-regional-instance-groups#selectingzones).
  final Input<List<String>>? distributionPolicyZones;

  /// The flexibility policy for managed instance group. Instance flexibility allows managed instance group to create VMs from multiple types of machines. Instance flexibility configuration on managed instance group overrides instance template configuration. Structure is documented below.
  /// - - -
  final Input<RegionInstanceGroupManagerInstanceFlexibilityPolicy>?
      instanceFlexibilityPolicy;

  /// The instance lifecycle policy for this managed instance group.
  final Input<RegionInstanceGroupManagerInstanceLifecyclePolicy>?
      instanceLifecyclePolicy;

  /// Pagination behavior of the `listManagedInstances` API
  /// method for this managed instance group. Valid values are: `PAGELESS`, `PAGINATED`.
  /// If `PAGELESS` (default), Pagination is disabled for the group's `listManagedInstances` API method.
  /// `maxResults` and `pageToken` query parameters are ignored and all instances are returned in a single
  /// response. If `PAGINATED`, pagination is enabled, `maxResults` and `pageToken` query parameters are
  /// respected.
  final Input<String>? listManagedInstancesResults;

  /// The name of the instance group manager. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final Input<String>? name;

  /// The named port configuration. See the section below
  /// for details on configuration.
  final Input<List<RegionInstanceGroupManagerNamedPort>>? namedPorts;

  /// Input only additional params for instance group manager creation. Structure is documented below. For more information, see [API](https://cloud.google.com/compute/docs/reference/rest/beta/instanceGroupManagers/insert).
  final Input<RegionInstanceGroupManagerParams>? params;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The region where the managed instance group resides. If not provided, the provider region is used.
  ///
  /// - - -
  final Input<String>? region;

  /// The standby policy for stopped and suspended instances. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/suspended-and-stopped-vms-in-mig).
  final Input<RegionInstanceGroupManagerStandbyPolicy>? standbyPolicy;

  /// Disks created on the instances that will be preserved on instance delete, update, etc. Structure is documented below. For more information see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/configuring-stateful-disks-in-migs). Proactive cross zone instance redistribution must be disabled before you can update stateful disks on existing instance group managers. This can be controlled via the <span pulumi-lang-nodejs="`updatePolicy`" pulumi-lang-dotnet="`UpdatePolicy`" pulumi-lang-go="`updatePolicy`" pulumi-lang-python="`update_policy`" pulumi-lang-yaml="`updatePolicy`" pulumi-lang-java="`updatePolicy`">`update_policy`</span>.
  final Input<List<RegionInstanceGroupManagerStatefulDisk>>? statefulDisks;

  /// External network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final Input<List<RegionInstanceGroupManagerStatefulExternalIp>>?
      statefulExternalIps;

  /// Internal network IPs assigned to the instances that will be preserved on instance delete, update, etc. This map is keyed with the network interface name. Structure is documented below.
  final Input<List<RegionInstanceGroupManagerStatefulInternalIp>>?
      statefulInternalIps;

  /// The full URL of all target pools to which new
  /// instances in the group are added. Updating the target pools attribute does
  /// not affect existing instances.
  final Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0.
  final Input<int>? targetSize;

  /// The target number of stopped instances for this managed instance group.
  final Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group.
  final Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group. Structure is documented below. For more information, see the [official documentation](https://cloud.google.com/compute/docs/instance-groups/updating-managed-instance-groups) and [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionInstanceGroupManagers/patch)
  final Input<RegionInstanceGroupManagerUpdatePolicy>? updatePolicy;

  /// Application versions managed by this instance group. Each
  /// version deals with a specific instance template, allowing canary release scenarios.
  /// Structure is documented below.
  final Input<List<RegionInstanceGroupManagerVersion>> versions;

  /// Whether to wait for all instances to be created/updated before
  /// returning. Note that if this is set to true and the operation does not succeed, the provider will
  /// continue trying until it times out.
  final Input<bool>? waitForInstances;

  /// When used with <span pulumi-lang-nodejs="`waitForInstances`" pulumi-lang-dotnet="`WaitForInstances`" pulumi-lang-go="`waitForInstances`" pulumi-lang-python="`wait_for_instances`" pulumi-lang-yaml="`waitForInstances`" pulumi-lang-java="`waitForInstances`">`wait_for_instances`</span> it specifies the status to wait for.
  /// When `STABLE` is specified this resource will wait until the instances are stable before returning. When `UPDATED` is
  /// set, it will wait for the version target to be reached and any per instance configs to be effective as well as all
  /// instances to be stable before returning. The possible values are `STABLE` and `UPDATED`
  final Input<String>? waitForInstancesStatus;

  RegionInstanceGroupManagerArgs({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    required this.baseInstanceName,
    this.description,
    this.distributionPolicyTargetShape,
    this.distributionPolicyZones,
    this.instanceFlexibilityPolicy,
    this.instanceLifecyclePolicy,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.params,
    this.project,
    this.region,
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
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigValue = allInstancesConfig;
    if (allInstancesConfigValue != null) {
      map['allInstancesConfig'] = Input.mapOptionalInputValue<
              RegionInstanceGroupManagerAllInstancesConfig,
              Map<String, dynamic>>(
          allInstancesConfigValue, (value) => value.toMap());
    }
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = Input.mapOptionalInputValue<
              RegionInstanceGroupManagerAutoHealingPolicies,
              Map<String, dynamic>>(
          autoHealingPoliciesValue, (value) => value.toMap());
    }
    map['baseInstanceName'] = baseInstanceName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final distributionPolicyTargetShapeValue = distributionPolicyTargetShape;
    if (distributionPolicyTargetShapeValue != null) {
      map['distributionPolicyTargetShape'] = distributionPolicyTargetShapeValue;
    }
    final distributionPolicyZonesValue = distributionPolicyZones;
    if (distributionPolicyZonesValue != null) {
      map['distributionPolicyZones'] = distributionPolicyZonesValue;
    }
    final instanceFlexibilityPolicyValue = instanceFlexibilityPolicy;
    if (instanceFlexibilityPolicyValue != null) {
      map['instanceFlexibilityPolicy'] = Input.mapOptionalInputValue<
              RegionInstanceGroupManagerInstanceFlexibilityPolicy,
              Map<String, dynamic>>(
          instanceFlexibilityPolicyValue, (value) => value.toMap());
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = Input.mapOptionalInputValue<
              RegionInstanceGroupManagerInstanceLifecyclePolicy,
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
      map['namedPorts'] = Input.mapOptionalInputValue<
              List<RegionInstanceGroupManagerNamedPort>,
              List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => Input.encodeList<RegionInstanceGroupManagerNamedPort,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] = Input.mapOptionalInputValue<
          RegionInstanceGroupManagerParams,
          Map<String, dynamic>>(paramsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final standbyPolicyValue = standbyPolicy;
    if (standbyPolicyValue != null) {
      map['standbyPolicy'] = Input.mapOptionalInputValue<
          RegionInstanceGroupManagerStandbyPolicy,
          Map<String, dynamic>>(standbyPolicyValue, (value) => value.toMap());
    }
    final statefulDisksValue = statefulDisks;
    if (statefulDisksValue != null) {
      map['statefulDisks'] = Input.mapOptionalInputValue<
              List<RegionInstanceGroupManagerStatefulDisk>,
              List<Map<String, dynamic>>>(
          statefulDisksValue,
          (value) => Input.encodeList<RegionInstanceGroupManagerStatefulDisk,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final statefulExternalIpsValue = statefulExternalIps;
    if (statefulExternalIpsValue != null) {
      map['statefulExternalIps'] = Input.mapOptionalInputValue<
              List<RegionInstanceGroupManagerStatefulExternalIp>,
              List<Map<String, dynamic>>>(
          statefulExternalIpsValue,
          (value) => Input.encodeList<
              RegionInstanceGroupManagerStatefulExternalIp,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final statefulInternalIpsValue = statefulInternalIps;
    if (statefulInternalIpsValue != null) {
      map['statefulInternalIps'] = Input.mapOptionalInputValue<
              List<RegionInstanceGroupManagerStatefulInternalIp>,
              List<Map<String, dynamic>>>(
          statefulInternalIpsValue,
          (value) => Input.encodeList<
              RegionInstanceGroupManagerStatefulInternalIp,
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
      map['updatePolicy'] = Input.mapOptionalInputValue<
          RegionInstanceGroupManagerUpdatePolicy,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    map['versions'] = Input.mapInputValue<
            List<RegionInstanceGroupManagerVersion>,
            List<Map<String, dynamic>>>(
        versions,
        (value) => Input.encodeList<RegionInstanceGroupManagerVersion,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final waitForInstancesValue = waitForInstances;
    if (waitForInstancesValue != null) {
      map['waitForInstances'] = waitForInstancesValue;
    }
    final waitForInstancesStatusValue = waitForInstancesStatus;
    if (waitForInstancesStatusValue != null) {
      map['waitForInstancesStatus'] = waitForInstancesStatusValue;
    }
    return map;
  }

  factory RegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerArgs(
      allInstancesConfig:
          Input.asOptionalInput<RegionInstanceGroupManagerAllInstancesConfig>(
              map['allInstancesConfig']),
      autoHealingPolicies:
          Input.asOptionalInput<RegionInstanceGroupManagerAutoHealingPolicies>(
              map['autoHealingPolicies']),
      baseInstanceName: Input.asInput<String>(map['baseInstanceName']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionPolicyTargetShape:
          Input.asOptionalInput<String>(map['distributionPolicyTargetShape']),
      distributionPolicyZones:
          Input.asOptionalInput<List<String>>(map['distributionPolicyZones']),
      instanceFlexibilityPolicy: Input.asOptionalInput<
              RegionInstanceGroupManagerInstanceFlexibilityPolicy>(
          map['instanceFlexibilityPolicy']),
      instanceLifecyclePolicy: Input.asOptionalInput<
              RegionInstanceGroupManagerInstanceLifecyclePolicy>(
          map['instanceLifecyclePolicy']),
      listManagedInstancesResults:
          Input.asOptionalInput<String>(map['listManagedInstancesResults']),
      name: Input.asOptionalInput<String>(map['name']),
      namedPorts:
          Input.asOptionalInput<List<RegionInstanceGroupManagerNamedPort>>(
              map['namedPorts']),
      params: Input.asOptionalInput<RegionInstanceGroupManagerParams>(
          map['params']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      standbyPolicy:
          Input.asOptionalInput<RegionInstanceGroupManagerStandbyPolicy>(
              map['standbyPolicy']),
      statefulDisks:
          Input.asOptionalInput<List<RegionInstanceGroupManagerStatefulDisk>>(
              map['statefulDisks']),
      statefulExternalIps: Input.asOptionalInput<
              List<RegionInstanceGroupManagerStatefulExternalIp>>(
          map['statefulExternalIps']),
      statefulInternalIps: Input.asOptionalInput<
              List<RegionInstanceGroupManagerStatefulInternalIp>>(
          map['statefulInternalIps']),
      targetPools: Input.asOptionalInput<List<String>>(map['targetPools']),
      targetSize: Input.asOptionalInput<int>(map['targetSize']),
      targetStoppedSize: Input.asOptionalInput<int>(map['targetStoppedSize']),
      targetSuspendedSize:
          Input.asOptionalInput<int>(map['targetSuspendedSize']),
      updatePolicy:
          Input.asOptionalInput<RegionInstanceGroupManagerUpdatePolicy>(
              map['updatePolicy']),
      versions: Input.asInput<List<RegionInstanceGroupManagerVersion>>(
          map['versions']),
      waitForInstances: Input.asOptionalInput<bool>(map['waitForInstances']),
      waitForInstancesStatus:
          Input.asOptionalInput<String>(map['waitForInstancesStatus']),
    );
  }
}
