// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'distribution_policy_response2.dart';
import 'instance_group_manager_actions_summary_response2.dart';
import 'instance_group_manager_all_instances_config_response2.dart';
import 'instance_group_manager_auto_healing_policy_response2.dart';
import 'instance_group_manager_instance_flexibility_policy_response2.dart';
import 'instance_group_manager_instance_lifecycle_policy_response2.dart';
import 'instance_group_manager_standby_policy_response2.dart';
import 'instance_group_manager_status_response2.dart';
import 'instance_group_manager_update_policy_response2.dart';
import 'instance_group_manager_version_response2.dart';
import 'named_port_response2.dart';
import 'stateful_policy_response2.dart';

/// Result data returned by getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerResult2 {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final InstanceGroupManagerAllInstancesConfigResponse2 allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  final List<InstanceGroupManagerAutoHealingPolicyResponse2>
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final String baseInstanceName;

  /// The creation timestamp for this managed instance group in RFC3339 text format.
  final String creationTimestamp;

  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  final InstanceGroupManagerActionsSummaryResponse2 currentActions;

  /// An optional description of this resource.
  final String description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final DistributionPolicyResponse2 distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final String failoverAction;

  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  final String fingerprint;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final InstanceGroupManagerInstanceFlexibilityPolicyResponse2
      instanceFlexibilityPolicy;

  /// The URL of the Instance Group resource.
  final String instanceGroup;

  /// The repair policy for this managed instance group.
  final InstanceGroupManagerInstanceLifecyclePolicyResponse2
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final String instanceTemplate;

  /// The resource type, which is always compute#instanceGroupManager for managed instance groups.
  final String kind;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final String listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final String name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final List<NamedPortResponse2> namedPorts;

  /// The URL of the region where the managed instance group resides (for regional resources).
  final String region;

  /// The URL for this managed instance group. The server defines this URL.
  final String selfLink;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final String serviceAccount;

  /// Standby policy for stopped and suspended instances.
  final InstanceGroupManagerStandbyPolicyResponse2 standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  final StatefulPolicyResponse2 statefulPolicy;

  /// The status of this managed instance group.
  final InstanceGroupManagerStatusResponse2 status;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final List<String> targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final int targetSize;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final int targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final int targetSuspendedSize;

  /// The update policy for this managed instance group.
  final InstanceGroupManagerUpdatePolicyResponse2 updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final List<InstanceGroupManagerVersionResponse2> versions;

  /// The URL of a zone where the managed instance group is located (for zonal resources).
  final String zone;

  GetRegionInstanceGroupManagerResult2({
    required this.allInstancesConfig,
    required this.autoHealingPolicies,
    required this.baseInstanceName,
    required this.creationTimestamp,
    required this.currentActions,
    required this.description,
    required this.distributionPolicy,
    required this.failoverAction,
    required this.fingerprint,
    required this.instanceFlexibilityPolicy,
    required this.instanceGroup,
    required this.instanceLifecyclePolicy,
    required this.instanceTemplate,
    required this.kind,
    required this.listManagedInstancesResults,
    required this.name,
    required this.namedPorts,
    required this.region,
    required this.selfLink,
    required this.serviceAccount,
    required this.standbyPolicy,
    required this.statefulPolicy,
    required this.status,
    required this.targetPools,
    required this.targetSize,
    required this.targetStoppedSize,
    required this.targetSuspendedSize,
    required this.updatePolicy,
    required this.versions,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allInstancesConfig'] = allInstancesConfig.toMap();
    map['autoHealingPolicies'] = Input.encodeList<
        InstanceGroupManagerAutoHealingPolicyResponse2,
        Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap());
    map['baseInstanceName'] = baseInstanceName;
    map['creationTimestamp'] = creationTimestamp;
    map['currentActions'] = currentActions.toMap();
    map['description'] = description;
    map['distributionPolicy'] = distributionPolicy.toMap();
    map['failoverAction'] = failoverAction;
    map['fingerprint'] = fingerprint;
    map['instanceFlexibilityPolicy'] = instanceFlexibilityPolicy.toMap();
    map['instanceGroup'] = instanceGroup;
    map['instanceLifecyclePolicy'] = instanceLifecyclePolicy.toMap();
    map['instanceTemplate'] = instanceTemplate;
    map['kind'] = kind;
    map['listManagedInstancesResults'] = listManagedInstancesResults;
    map['name'] = name;
    map['namedPorts'] =
        Input.encodeList<NamedPortResponse2, Map<String, dynamic>>(
            namedPorts, (value) => value.toMap());
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['serviceAccount'] = serviceAccount;
    map['standbyPolicy'] = standbyPolicy.toMap();
    map['statefulPolicy'] = statefulPolicy.toMap();
    map['status'] = status.toMap();
    map['targetPools'] = targetPools;
    map['targetSize'] = targetSize;
    map['targetStoppedSize'] = targetStoppedSize;
    map['targetSuspendedSize'] = targetSuspendedSize;
    map['updatePolicy'] = updatePolicy.toMap();
    map['versions'] = Input.encodeList<InstanceGroupManagerVersionResponse2,
        Map<String, dynamic>>(versions, (value) => value.toMap());
    map['zone'] = zone;
    return map;
  }

  factory GetRegionInstanceGroupManagerResult2.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerResult2(
      allInstancesConfig:
          InstanceGroupManagerAllInstancesConfigResponse2.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>()),
      autoHealingPolicies:
          Input.decodeList<InstanceGroupManagerAutoHealingPolicyResponse2>(
              map['autoHealingPolicies'],
              (value) => InstanceGroupManagerAutoHealingPolicyResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      currentActions: InstanceGroupManagerActionsSummaryResponse2.fromMap(
          (map['currentActions'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      distributionPolicy: DistributionPolicyResponse2.fromMap(
          (map['distributionPolicy'] as Map).cast<String, dynamic>()),
      failoverAction: map['failoverAction'] as String,
      fingerprint: map['fingerprint'] as String,
      instanceFlexibilityPolicy:
          InstanceGroupManagerInstanceFlexibilityPolicyResponse2.fromMap(
              (map['instanceFlexibilityPolicy'] as Map)
                  .cast<String, dynamic>()),
      instanceGroup: map['instanceGroup'] as String,
      instanceLifecyclePolicy:
          InstanceGroupManagerInstanceLifecyclePolicyResponse2.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>()),
      instanceTemplate: map['instanceTemplate'] as String,
      kind: map['kind'] as String,
      listManagedInstancesResults: map['listManagedInstancesResults'] as String,
      name: map['name'] as String,
      namedPorts: Input.decodeList<NamedPortResponse2>(
          map['namedPorts'],
          (value) => NamedPortResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      serviceAccount: map['serviceAccount'] as String,
      standbyPolicy: InstanceGroupManagerStandbyPolicyResponse2.fromMap(
          (map['standbyPolicy'] as Map).cast<String, dynamic>()),
      statefulPolicy: StatefulPolicyResponse2.fromMap(
          (map['statefulPolicy'] as Map).cast<String, dynamic>()),
      status: InstanceGroupManagerStatusResponse2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      targetPools: (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] as int,
      targetStoppedSize: map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] as int,
      updatePolicy: InstanceGroupManagerUpdatePolicyResponse2.fromMap(
          (map['updatePolicy'] as Map).cast<String, dynamic>()),
      versions: Input.decodeList<InstanceGroupManagerVersionResponse2>(
          map['versions'],
          (value) => InstanceGroupManagerVersionResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      zone: map['zone'] as String,
    );
  }
}
