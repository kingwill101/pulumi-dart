// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_group_manager_all_instances_config/get_instance_group_manager_all_instances_config.dart';
import '../get_instance_group_manager_auto_healing_policy/get_instance_group_manager_auto_healing_policy.dart';
import '../get_instance_group_manager_instance_lifecycle_policy/get_instance_group_manager_instance_lifecycle_policy.dart';
import '../get_instance_group_manager_named_port/get_instance_group_manager_named_port.dart';
import '../get_instance_group_manager_param/get_instance_group_manager_param.dart';
import '../get_instance_group_manager_resource_policy/get_instance_group_manager_resource_policy.dart';
import '../get_instance_group_manager_standby_policy/get_instance_group_manager_standby_policy.dart';
import '../get_instance_group_manager_stateful_disk/get_instance_group_manager_stateful_disk.dart';
import '../get_instance_group_manager_stateful_external_ip/get_instance_group_manager_stateful_external_ip.dart';
import '../get_instance_group_manager_stateful_internal_ip/get_instance_group_manager_stateful_internal_ip.dart';
import '../get_instance_group_manager_status/get_instance_group_manager_status.dart';
import '../get_instance_group_manager_update_policy/get_instance_group_manager_update_policy.dart';
import '../get_instance_group_manager_version/get_instance_group_manager_version.dart';

/// Result data returned by getInstanceGroupManager.
class GetInstanceGroupManagerResult {
  final List<GetInstanceGroupManagerAllInstancesConfig> allInstancesConfigs;
  final List<GetInstanceGroupManagerAutoHealingPolicy> autoHealingPolicies;
  final String baseInstanceName;
  final String creationTimestamp;
  final String description;
  final String fingerprint;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceGroup;
  final int instanceGroupManagerId;
  final List<GetInstanceGroupManagerInstanceLifecyclePolicy>
      instanceLifecyclePolicies;
  final String listManagedInstancesResults;
  final String? name;
  final List<GetInstanceGroupManagerNamedPort> namedPorts;
  final String operation;
  final List<GetInstanceGroupManagerParam> params;
  final String? project;
  final List<GetInstanceGroupManagerResourcePolicy> resourcePolicies;
  final String? selfLink;
  final List<GetInstanceGroupManagerStandbyPolicy> standbyPolicies;
  final List<GetInstanceGroupManagerStatefulDisk> statefulDisks;
  final List<GetInstanceGroupManagerStatefulExternalIp> statefulExternalIps;
  final List<GetInstanceGroupManagerStatefulInternalIp> statefulInternalIps;
  final List<GetInstanceGroupManagerStatus> statuses;
  final List<String> targetPools;
  final int targetSize;
  final int targetStoppedSize;
  final int targetSuspendedSize;
  final List<GetInstanceGroupManagerUpdatePolicy> updatePolicies;
  final List<GetInstanceGroupManagerVersion> versions;
  final bool waitForInstances;
  final String waitForInstancesStatus;
  final String? zone;

  GetInstanceGroupManagerResult({
    required this.allInstancesConfigs,
    required this.autoHealingPolicies,
    required this.baseInstanceName,
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.id,
    required this.instanceGroup,
    required this.instanceGroupManagerId,
    required this.instanceLifecyclePolicies,
    required this.listManagedInstancesResults,
    this.name,
    required this.namedPorts,
    required this.operation,
    required this.params,
    this.project,
    required this.resourcePolicies,
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
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allInstancesConfigs'] = Input.encodeList<
        GetInstanceGroupManagerAllInstancesConfig,
        Map<String, dynamic>>(allInstancesConfigs, (value) => value.toMap());
    map['autoHealingPolicies'] = Input.encodeList<
        GetInstanceGroupManagerAutoHealingPolicy,
        Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap());
    map['baseInstanceName'] = baseInstanceName;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['fingerprint'] = fingerprint;
    map['id'] = id;
    map['instanceGroup'] = instanceGroup;
    map['instanceGroupManagerId'] = instanceGroupManagerId;
    map['instanceLifecyclePolicies'] = Input.encodeList<
            GetInstanceGroupManagerInstanceLifecyclePolicy,
            Map<String, dynamic>>(
        instanceLifecyclePolicies, (value) => value.toMap());
    map['listManagedInstancesResults'] = listManagedInstancesResults;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namedPorts'] = Input.encodeList<GetInstanceGroupManagerNamedPort,
        Map<String, dynamic>>(namedPorts, (value) => value.toMap());
    map['operation'] = operation;
    map['params'] =
        Input.encodeList<GetInstanceGroupManagerParam, Map<String, dynamic>>(
            params, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourcePolicies'] = Input.encodeList<
        GetInstanceGroupManagerResourcePolicy,
        Map<String, dynamic>>(resourcePolicies, (value) => value.toMap());
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    map['standbyPolicies'] = Input.encodeList<
        GetInstanceGroupManagerStandbyPolicy,
        Map<String, dynamic>>(standbyPolicies, (value) => value.toMap());
    map['statefulDisks'] = Input.encodeList<GetInstanceGroupManagerStatefulDisk,
        Map<String, dynamic>>(statefulDisks, (value) => value.toMap());
    map['statefulExternalIps'] = Input.encodeList<
        GetInstanceGroupManagerStatefulExternalIp,
        Map<String, dynamic>>(statefulExternalIps, (value) => value.toMap());
    map['statefulInternalIps'] = Input.encodeList<
        GetInstanceGroupManagerStatefulInternalIp,
        Map<String, dynamic>>(statefulInternalIps, (value) => value.toMap());
    map['statuses'] =
        Input.encodeList<GetInstanceGroupManagerStatus, Map<String, dynamic>>(
            statuses, (value) => value.toMap());
    map['targetPools'] = targetPools;
    map['targetSize'] = targetSize;
    map['targetStoppedSize'] = targetStoppedSize;
    map['targetSuspendedSize'] = targetSuspendedSize;
    map['updatePolicies'] = Input.encodeList<
        GetInstanceGroupManagerUpdatePolicy,
        Map<String, dynamic>>(updatePolicies, (value) => value.toMap());
    map['versions'] =
        Input.encodeList<GetInstanceGroupManagerVersion, Map<String, dynamic>>(
            versions, (value) => value.toMap());
    map['waitForInstances'] = waitForInstances;
    map['waitForInstancesStatus'] = waitForInstancesStatus;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceGroupManagerResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResult(
      allInstancesConfigs:
          Input.decodeList<GetInstanceGroupManagerAllInstancesConfig>(
              map['allInstancesConfigs'],
              (value) => GetInstanceGroupManagerAllInstancesConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      autoHealingPolicies:
          Input.decodeList<GetInstanceGroupManagerAutoHealingPolicy>(
              map['autoHealingPolicies'],
              (value) => GetInstanceGroupManagerAutoHealingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      instanceGroup: map['instanceGroup'] as String,
      instanceGroupManagerId: map['instanceGroupManagerId'] as int,
      instanceLifecyclePolicies:
          Input.decodeList<GetInstanceGroupManagerInstanceLifecyclePolicy>(
              map['instanceLifecyclePolicies'],
              (value) => GetInstanceGroupManagerInstanceLifecyclePolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      listManagedInstancesResults: map['listManagedInstancesResults'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: Input.decodeList<GetInstanceGroupManagerNamedPort>(
          map['namedPorts'],
          (value) => GetInstanceGroupManagerNamedPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      operation: map['operation'] as String,
      params: Input.decodeList<GetInstanceGroupManagerParam>(
          map['params'],
          (value) => GetInstanceGroupManagerParam.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      resourcePolicies: Input.decodeList<GetInstanceGroupManagerResourcePolicy>(
          map['resourcePolicies'],
          (value) => GetInstanceGroupManagerResourcePolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      standbyPolicies: Input.decodeList<GetInstanceGroupManagerStandbyPolicy>(
          map['standbyPolicies'],
          (value) => GetInstanceGroupManagerStandbyPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      statefulDisks: Input.decodeList<GetInstanceGroupManagerStatefulDisk>(
          map['statefulDisks'],
          (value) => GetInstanceGroupManagerStatefulDisk.fromMap(
              (value as Map).cast<String, dynamic>())),
      statefulExternalIps:
          Input.decodeList<GetInstanceGroupManagerStatefulExternalIp>(
              map['statefulExternalIps'],
              (value) => GetInstanceGroupManagerStatefulExternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statefulInternalIps:
          Input.decodeList<GetInstanceGroupManagerStatefulInternalIp>(
              map['statefulInternalIps'],
              (value) => GetInstanceGroupManagerStatefulInternalIp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statuses: Input.decodeList<GetInstanceGroupManagerStatus>(
          map['statuses'],
          (value) => GetInstanceGroupManagerStatus.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetPools: (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] as int,
      targetStoppedSize: map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] as int,
      updatePolicies: Input.decodeList<GetInstanceGroupManagerUpdatePolicy>(
          map['updatePolicies'],
          (value) => GetInstanceGroupManagerUpdatePolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      versions: Input.decodeList<GetInstanceGroupManagerVersion>(
          map['versions'],
          (value) => GetInstanceGroupManagerVersion.fromMap(
              (value as Map).cast<String, dynamic>())),
      waitForInstances: map['waitForInstances'] as bool,
      waitForInstancesStatus: map['waitForInstancesStatus'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
