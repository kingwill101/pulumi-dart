// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_instance_group_manager_all_instances_config/get_region_instance_group_manager_all_instances_config.dart';
import '../get_region_instance_group_manager_auto_healing_policy/get_region_instance_group_manager_auto_healing_policy.dart';
import '../get_region_instance_group_manager_instance_flexibility_policy/get_region_instance_group_manager_instance_flexibility_policy.dart';
import '../get_region_instance_group_manager_instance_lifecycle_policy/get_region_instance_group_manager_instance_lifecycle_policy.dart';
import '../get_region_instance_group_manager_named_port/get_region_instance_group_manager_named_port.dart';
import '../get_region_instance_group_manager_param/get_region_instance_group_manager_param.dart';
import '../get_region_instance_group_manager_standby_policy/get_region_instance_group_manager_standby_policy.dart';
import '../get_region_instance_group_manager_stateful_disk/get_region_instance_group_manager_stateful_disk.dart';
import '../get_region_instance_group_manager_stateful_external_ip/get_region_instance_group_manager_stateful_external_ip.dart';
import '../get_region_instance_group_manager_stateful_internal_ip/get_region_instance_group_manager_stateful_internal_ip.dart';
import '../get_region_instance_group_manager_status/get_region_instance_group_manager_status.dart';
import '../get_region_instance_group_manager_update_policy/get_region_instance_group_manager_update_policy.dart';
import '../get_region_instance_group_manager_version/get_region_instance_group_manager_version.dart';

/// Result data returned by getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerResult {
  final List<GetRegionInstanceGroupManagerAllInstancesConfig>
      allInstancesConfigs;
  final List<GetRegionInstanceGroupManagerAutoHealingPolicy>
      autoHealingPolicies;
  final String baseInstanceName;
  final String creationTimestamp;
  final String description;
  final String distributionPolicyTargetShape;
  final List<String> distributionPolicyZones;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetRegionInstanceGroupManagerInstanceFlexibilityPolicy>
      instanceFlexibilityPolicies;
  final String instanceGroup;
  final int instanceGroupManagerId;
  final List<GetRegionInstanceGroupManagerInstanceLifecyclePolicy>
      instanceLifecyclePolicies;
  final String listManagedInstancesResults;
  final String? name;
  final List<GetRegionInstanceGroupManagerNamedPort> namedPorts;
  final List<GetRegionInstanceGroupManagerParam> params;
  final String? project;
  final String? region;
  final String? selfLink;
  final List<GetRegionInstanceGroupManagerStandbyPolicy> standbyPolicies;
  final List<GetRegionInstanceGroupManagerStatefulDisk> statefulDisks;
  final List<GetRegionInstanceGroupManagerStatefulExternalIp>
      statefulExternalIps;
  final List<GetRegionInstanceGroupManagerStatefulInternalIp>
      statefulInternalIps;
  final List<GetRegionInstanceGroupManagerStatus> statuses;
  final List<String> targetPools;
  final int targetSize;
  final int targetStoppedSize;
  final int targetSuspendedSize;
  final List<GetRegionInstanceGroupManagerUpdatePolicy> updatePolicies;
  final List<GetRegionInstanceGroupManagerVersion> versions;
  final bool waitForInstances;
  final String waitForInstancesStatus;

  GetRegionInstanceGroupManagerResult({
    required this.allInstancesConfigs,
    required this.autoHealingPolicies,
    required this.baseInstanceName,
    required this.creationTimestamp,
    required this.description,
    required this.distributionPolicyTargetShape,
    required this.distributionPolicyZones,
    required this.fingerprint,
    required this.id,
    required this.instanceFlexibilityPolicies,
    required this.instanceGroup,
    required this.instanceGroupManagerId,
    required this.instanceLifecyclePolicies,
    required this.listManagedInstancesResults,
    this.name,
    required this.namedPorts,
    required this.params,
    this.project,
    this.region,
    this.selfLink,
    required this.standbyPolicies,
    required this.statefulDisks,
    required this.statefulExternalIps,
    required this.statefulInternalIps,
    required this.statuses,
    required this.targetPools,
    required this.targetSize,
    required this.targetStoppedSize,
    required this.targetSuspendedSize,
    required this.updatePolicies,
    required this.versions,
    required this.waitForInstances,
    required this.waitForInstancesStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allInstancesConfigs'] = Input.encodeList<
        GetRegionInstanceGroupManagerAllInstancesConfig,
        Map<String, dynamic>>(allInstancesConfigs, (value) => value.toMap());
    map['autoHealingPolicies'] = Input.encodeList<
        GetRegionInstanceGroupManagerAutoHealingPolicy,
        Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap());
    map['baseInstanceName'] = baseInstanceName;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['distributionPolicyTargetShape'] = distributionPolicyTargetShape;
    map['distributionPolicyZones'] = distributionPolicyZones;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['instanceFlexibilityPolicies'] = Input.encodeList<
            GetRegionInstanceGroupManagerInstanceFlexibilityPolicy,
            Map<String, dynamic>>(
        instanceFlexibilityPolicies, (value) => value.toMap());
    map['instanceGroup'] = instanceGroup;
    map['instanceGroupManagerId'] = instanceGroupManagerId;
    map['instanceLifecyclePolicies'] = Input.encodeList<
            GetRegionInstanceGroupManagerInstanceLifecyclePolicy,
            Map<String, dynamic>>(
        instanceLifecyclePolicies, (value) => value.toMap());
    map['listManagedInstancesResults'] = listManagedInstancesResults;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namedPorts'] = Input.encodeList<GetRegionInstanceGroupManagerNamedPort,
        Map<String, dynamic>>(namedPorts, (value) => value.toMap());
    map['params'] = Input.encodeList<GetRegionInstanceGroupManagerParam,
        Map<String, dynamic>>(params, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['standbyPolicies'] = Input.encodeList<
        GetRegionInstanceGroupManagerStandbyPolicy,
        Map<String, dynamic>>(standbyPolicies, (value) => value.toMap());
    map['statefulDisks'] = Input.encodeList<
        GetRegionInstanceGroupManagerStatefulDisk,
        Map<String, dynamic>>(statefulDisks, (value) => value.toMap());
    map['statefulExternalIps'] = Input.encodeList<
        GetRegionInstanceGroupManagerStatefulExternalIp,
        Map<String, dynamic>>(statefulExternalIps, (value) => value.toMap());
    map['statefulInternalIps'] = Input.encodeList<
        GetRegionInstanceGroupManagerStatefulInternalIp,
        Map<String, dynamic>>(statefulInternalIps, (value) => value.toMap());
    map['statuses'] = Input.encodeList<GetRegionInstanceGroupManagerStatus,
        Map<String, dynamic>>(statuses, (value) => value.toMap());
    map['targetPools'] = targetPools;
    map['targetSize'] = targetSize;
    map['targetStoppedSize'] = targetStoppedSize;
    map['targetSuspendedSize'] = targetSuspendedSize;
    map['updatePolicies'] = Input.encodeList<
        GetRegionInstanceGroupManagerUpdatePolicy,
        Map<String, dynamic>>(updatePolicies, (value) => value.toMap());
    map['versions'] = Input.encodeList<GetRegionInstanceGroupManagerVersion,
        Map<String, dynamic>>(versions, (value) => value.toMap());
    map['waitForInstances'] = waitForInstances;
    map['waitForInstancesStatus'] = waitForInstancesStatus;
    return map;
  }

  factory GetRegionInstanceGroupManagerResult.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerResult(
      allInstancesConfigs:
          Input.decodeList<GetRegionInstanceGroupManagerAllInstancesConfig>(
              map['allInstancesConfigs'],
              (value) =>
                  GetRegionInstanceGroupManagerAllInstancesConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      autoHealingPolicies:
          Input.decodeList<GetRegionInstanceGroupManagerAutoHealingPolicy>(
              map['autoHealingPolicies'],
              (value) => GetRegionInstanceGroupManagerAutoHealingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      distributionPolicyTargetShape:
          map['distributionPolicyTargetShape'] as String,
      distributionPolicyZones:
          (map['distributionPolicyZones'] as List).cast<String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      instanceFlexibilityPolicies: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicy>(
          map['instanceFlexibilityPolicies'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceGroup: map['instanceGroup'] as String,
      instanceGroupManagerId: map['instanceGroupManagerId'] as int,
      instanceLifecyclePolicies: Input.decodeList<
              GetRegionInstanceGroupManagerInstanceLifecyclePolicy>(
          map['instanceLifecyclePolicies'],
          (value) =>
              GetRegionInstanceGroupManagerInstanceLifecyclePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      listManagedInstancesResults: map['listManagedInstancesResults'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: Input.decodeList<GetRegionInstanceGroupManagerNamedPort>(
          map['namedPorts'],
          (value) => GetRegionInstanceGroupManagerNamedPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      params: Input.decodeList<GetRegionInstanceGroupManagerParam>(
          map['params'],
          (value) => GetRegionInstanceGroupManagerParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      standbyPolicies:
          Input.decodeList<GetRegionInstanceGroupManagerStandbyPolicy>(
              map['standbyPolicies'],
              (value) => GetRegionInstanceGroupManagerStandbyPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statefulDisks:
          Input.decodeList<GetRegionInstanceGroupManagerStatefulDisk>(
              map['statefulDisks'],
              (value) => GetRegionInstanceGroupManagerStatefulDisk.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statefulExternalIps:
          Input.decodeList<GetRegionInstanceGroupManagerStatefulExternalIp>(
              map['statefulExternalIps'],
              (value) =>
                  GetRegionInstanceGroupManagerStatefulExternalIp.fromMap(
                      (value as Map).cast<String, dynamic>())),
      statefulInternalIps:
          Input.decodeList<GetRegionInstanceGroupManagerStatefulInternalIp>(
              map['statefulInternalIps'],
              (value) =>
                  GetRegionInstanceGroupManagerStatefulInternalIp.fromMap(
                      (value as Map).cast<String, dynamic>())),
      statuses: Input.decodeList<GetRegionInstanceGroupManagerStatus>(
          map['statuses'],
          (value) => GetRegionInstanceGroupManagerStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetPools: (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] as int,
      targetStoppedSize: map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] as int,
      updatePolicies:
          Input.decodeList<GetRegionInstanceGroupManagerUpdatePolicy>(
              map['updatePolicies'],
              (value) => GetRegionInstanceGroupManagerUpdatePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      versions: Input.decodeList<GetRegionInstanceGroupManagerVersion>(
          map['versions'],
          (value) => GetRegionInstanceGroupManagerVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
      waitForInstances: map['waitForInstances'] as bool,
      waitForInstancesStatus: map['waitForInstancesStatus'] as String,
    );
  }
}
