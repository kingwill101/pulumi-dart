// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy_response3.dart';
import 'instance_group_manager_actions_summary_response3.dart';
import 'instance_group_manager_auto_healing_policy_response3.dart';
import 'instance_group_manager_instance_lifecycle_policy_response3.dart';
import 'instance_group_manager_status_response3.dart';
import 'instance_group_manager_update_policy_response3.dart';
import 'instance_group_manager_version_response3.dart';
import 'named_port_response3.dart';
import 'stateful_policy_response3.dart';

/// Result data returned by getRegionInstanceGroupManager.
class GetRegionInstanceGroupManagerResult3 {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final List<InstanceGroupManagerAutoHealingPolicyResponse3>
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final String baseInstanceName;

  /// The creation timestamp for this managed instance group in RFC3339 text format.
  final String creationTimestamp;

  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  final InstanceGroupManagerActionsSummaryResponse3 currentActions;

  /// An optional description of this resource.
  final String description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final DistributionPolicyResponse3 distributionPolicy;

  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  final String fingerprint;

  /// The URL of the Instance Group resource.
  final String instanceGroup;

  /// The repair policy for this managed instance group.
  final InstanceGroupManagerInstanceLifecyclePolicyResponse3
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
  final List<NamedPortResponse3> namedPorts;

  /// The URL of the region where the managed instance group resides (for regional resources).
  final String region;

  /// The URL for this managed instance group. The server defines this URL.
  final String selfLink;

  /// Stateful configuration for this Instanced Group Manager
  final StatefulPolicyResponse3 statefulPolicy;

  /// The status of this managed instance group.
  final InstanceGroupManagerStatusResponse3 status;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final List<String> targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final int targetSize;

  /// The update policy for this managed instance group.
  final InstanceGroupManagerUpdatePolicyResponse3 updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final List<InstanceGroupManagerVersionResponse3> versions;

  /// The URL of a zone where the managed instance group is located (for zonal resources).
  final String zone;

  GetRegionInstanceGroupManagerResult3({
    required this.autoHealingPolicies,
    required this.baseInstanceName,
    required this.creationTimestamp,
    required this.currentActions,
    required this.description,
    required this.distributionPolicy,
    required this.fingerprint,
    required this.instanceGroup,
    required this.instanceLifecyclePolicy,
    required this.instanceTemplate,
    required this.kind,
    required this.listManagedInstancesResults,
    required this.name,
    required this.namedPorts,
    required this.region,
    required this.selfLink,
    required this.statefulPolicy,
    required this.status,
    required this.targetPools,
    required this.targetSize,
    required this.updatePolicy,
    required this.versions,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoHealingPolicies'] = Input.encodeList<
        InstanceGroupManagerAutoHealingPolicyResponse3,
        Map<String, dynamic>>(autoHealingPolicies, (value) => value.toMap());
    map['baseInstanceName'] = baseInstanceName;
    map['creationTimestamp'] = creationTimestamp;
    map['currentActions'] = currentActions.toMap();
    map['description'] = description;
    map['distributionPolicy'] = distributionPolicy.toMap();
    map['fingerprint'] = fingerprint;
    map['instanceGroup'] = instanceGroup;
    map['instanceLifecyclePolicy'] = instanceLifecyclePolicy.toMap();
    map['instanceTemplate'] = instanceTemplate;
    map['kind'] = kind;
    map['listManagedInstancesResults'] = listManagedInstancesResults;
    map['name'] = name;
    map['namedPorts'] =
        Input.encodeList<NamedPortResponse3, Map<String, dynamic>>(
            namedPorts, (value) => value.toMap());
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['statefulPolicy'] = statefulPolicy.toMap();
    map['status'] = status.toMap();
    map['targetPools'] = targetPools;
    map['targetSize'] = targetSize;
    map['updatePolicy'] = updatePolicy.toMap();
    map['versions'] = Input.encodeList<InstanceGroupManagerVersionResponse3,
        Map<String, dynamic>>(versions, (value) => value.toMap());
    map['zone'] = zone;
    return map;
  }

  factory GetRegionInstanceGroupManagerResult3.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerResult3(
      autoHealingPolicies:
          Input.decodeList<InstanceGroupManagerAutoHealingPolicyResponse3>(
              map['autoHealingPolicies'],
              (value) => InstanceGroupManagerAutoHealingPolicyResponse3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      currentActions: InstanceGroupManagerActionsSummaryResponse3.fromMap(
          (map['currentActions'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      distributionPolicy: DistributionPolicyResponse3.fromMap(
          (map['distributionPolicy'] as Map).cast<String, dynamic>()),
      fingerprint: map['fingerprint'] as String,
      instanceGroup: map['instanceGroup'] as String,
      instanceLifecyclePolicy:
          InstanceGroupManagerInstanceLifecyclePolicyResponse3.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>()),
      instanceTemplate: map['instanceTemplate'] as String,
      kind: map['kind'] as String,
      listManagedInstancesResults: map['listManagedInstancesResults'] as String,
      name: map['name'] as String,
      namedPorts: Input.decodeList<NamedPortResponse3>(
          map['namedPorts'],
          (value) => NamedPortResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      statefulPolicy: StatefulPolicyResponse3.fromMap(
          (map['statefulPolicy'] as Map).cast<String, dynamic>()),
      status: InstanceGroupManagerStatusResponse3.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      targetPools: (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] as int,
      updatePolicy: InstanceGroupManagerUpdatePolicyResponse3.fromMap(
          (map['updatePolicy'] as Map).cast<String, dynamic>()),
      versions: Input.decodeList<InstanceGroupManagerVersionResponse3>(
          map['versions'],
          (value) => InstanceGroupManagerVersionResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      zone: map['zone'] as String,
    );
  }
}
