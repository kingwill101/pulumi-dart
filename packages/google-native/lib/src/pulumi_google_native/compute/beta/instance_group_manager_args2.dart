// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy2.dart';
import 'instance_group_manager_all_instances_config2.dart';
import 'instance_group_manager_auto_healing_policy2.dart';
import 'instance_group_manager_failover_action2.dart';
import 'instance_group_manager_instance_flexibility_policy2.dart';
import 'instance_group_manager_instance_lifecycle_policy2.dart';
import 'instance_group_manager_list_managed_instances_results2.dart';
import 'instance_group_manager_standby_policy2.dart';
import 'instance_group_manager_update_policy2.dart';
import 'instance_group_manager_version2.dart';
import 'named_port2.dart';
import 'stateful_policy2.dart';

/// The set of arguments for InstanceGroupManager.
class InstanceGroupManagerArgs2 {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final Input<InstanceGroupManagerAllInstancesConfig2>? allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  final Input<List<InstanceGroupManagerAutoHealingPolicy2>>?
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final Input<String>? baseInstanceName;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final Input<DistributionPolicy2>? distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final Input<InstanceGroupManagerFailoverAction2>? failoverAction;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final Input<InstanceGroupManagerInstanceFlexibilityPolicy2>?
      instanceFlexibilityPolicy;

  /// The repair policy for this managed instance group.
  final Input<InstanceGroupManagerInstanceLifecyclePolicy2>?
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final Input<String>? instanceTemplate;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final Input<InstanceGroupManagerListManagedInstancesResults2>?
      listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final Input<String>? name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final Input<List<NamedPort2>>? namedPorts;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final Input<String>? serviceAccount;

  /// Standby policy for stopped and suspended instances.
  final Input<InstanceGroupManagerStandbyPolicy2>? standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  final Input<StatefulPolicy2>? statefulPolicy;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final Input<int>? targetSize;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group.
  final Input<InstanceGroupManagerUpdatePolicy2>? updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final Input<List<InstanceGroupManagerVersion2>>? versions;
  final Input<String>? zone;

  InstanceGroupManagerArgs2({
    this.allInstancesConfig,
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.description,
    this.distributionPolicy,
    this.failoverAction,
    this.instanceFlexibilityPolicy,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.project,
    this.requestId,
    this.serviceAccount,
    this.standbyPolicy,
    this.statefulPolicy,
    this.targetPools,
    this.targetSize,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigValue = allInstancesConfig;
    if (allInstancesConfigValue != null) {
      map['allInstancesConfig'] = Input.mapOptionalInputValue<
              InstanceGroupManagerAllInstancesConfig2, Map<String, dynamic>>(
          allInstancesConfigValue, (value) => value.toMap());
    }
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerAutoHealingPolicy2>,
              List<Map<String, dynamic>>>(
          autoHealingPoliciesValue,
          (value) => Input.encodeList<InstanceGroupManagerAutoHealingPolicy2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final baseInstanceNameValue = baseInstanceName;
    if (baseInstanceNameValue != null) {
      map['baseInstanceName'] = baseInstanceNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final distributionPolicyValue = distributionPolicy;
    if (distributionPolicyValue != null) {
      map['distributionPolicy'] = Input.mapOptionalInputValue<
              DistributionPolicy2, Map<String, dynamic>>(
          distributionPolicyValue, (value) => value.toMap());
    }
    final failoverActionValue = failoverAction;
    if (failoverActionValue != null) {
      map['failoverAction'] = Input.mapOptionalInputValue<
          InstanceGroupManagerFailoverAction2,
          String>(failoverActionValue, (value) => value.value);
    }
    final instanceFlexibilityPolicyValue = instanceFlexibilityPolicy;
    if (instanceFlexibilityPolicyValue != null) {
      map['instanceFlexibilityPolicy'] = Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceFlexibilityPolicy2,
              Map<String, dynamic>>(
          instanceFlexibilityPolicyValue, (value) => value.toMap());
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceLifecyclePolicy2,
              Map<String, dynamic>>(
          instanceLifecyclePolicyValue, (value) => value.toMap());
    }
    final instanceTemplateValue = instanceTemplate;
    if (instanceTemplateValue != null) {
      map['instanceTemplate'] = instanceTemplateValue;
    }
    final listManagedInstancesResultsValue = listManagedInstancesResults;
    if (listManagedInstancesResultsValue != null) {
      map['listManagedInstancesResults'] = Input.mapOptionalInputValue<
          InstanceGroupManagerListManagedInstancesResults2,
          String>(listManagedInstancesResultsValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = Input.mapOptionalInputValue<List<NamedPort2>,
              List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => Input.encodeList<NamedPort2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final standbyPolicyValue = standbyPolicy;
    if (standbyPolicyValue != null) {
      map['standbyPolicy'] = Input.mapOptionalInputValue<
          InstanceGroupManagerStandbyPolicy2,
          Map<String, dynamic>>(standbyPolicyValue, (value) => value.toMap());
    }
    final statefulPolicyValue = statefulPolicy;
    if (statefulPolicyValue != null) {
      map['statefulPolicy'] =
          Input.mapOptionalInputValue<StatefulPolicy2, Map<String, dynamic>>(
              statefulPolicyValue, (value) => value.toMap());
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
          InstanceGroupManagerUpdatePolicy2,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerVersion2>, List<Map<String, dynamic>>>(
          versionsValue,
          (value) => Input.encodeList<InstanceGroupManagerVersion2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupManagerArgs2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerArgs2(
      allInstancesConfig:
          Input.asOptionalInput<InstanceGroupManagerAllInstancesConfig2>(
              map['allInstancesConfig']),
      autoHealingPolicies:
          Input.asOptionalInput<List<InstanceGroupManagerAutoHealingPolicy2>>(
              map['autoHealingPolicies']),
      baseInstanceName: Input.asOptionalInput<String>(map['baseInstanceName']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionPolicy:
          Input.asOptionalInput<DistributionPolicy2>(map['distributionPolicy']),
      failoverAction:
          Input.asOptionalInput<InstanceGroupManagerFailoverAction2>(
              map['failoverAction']),
      instanceFlexibilityPolicy:
          Input.asOptionalInput<InstanceGroupManagerInstanceFlexibilityPolicy2>(
              map['instanceFlexibilityPolicy']),
      instanceLifecyclePolicy:
          Input.asOptionalInput<InstanceGroupManagerInstanceLifecyclePolicy2>(
              map['instanceLifecyclePolicy']),
      instanceTemplate: Input.asOptionalInput<String>(map['instanceTemplate']),
      listManagedInstancesResults: Input.asOptionalInput<
              InstanceGroupManagerListManagedInstancesResults2>(
          map['listManagedInstancesResults']),
      name: Input.asOptionalInput<String>(map['name']),
      namedPorts: Input.asOptionalInput<List<NamedPort2>>(map['namedPorts']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      standbyPolicy: Input.asOptionalInput<InstanceGroupManagerStandbyPolicy2>(
          map['standbyPolicy']),
      statefulPolicy:
          Input.asOptionalInput<StatefulPolicy2>(map['statefulPolicy']),
      targetPools: Input.asOptionalInput<List<String>>(map['targetPools']),
      targetSize: Input.asOptionalInput<int>(map['targetSize']),
      targetStoppedSize: Input.asOptionalInput<int>(map['targetStoppedSize']),
      targetSuspendedSize:
          Input.asOptionalInput<int>(map['targetSuspendedSize']),
      updatePolicy: Input.asOptionalInput<InstanceGroupManagerUpdatePolicy2>(
          map['updatePolicy']),
      versions: Input.asOptionalInput<List<InstanceGroupManagerVersion2>>(
          map['versions']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
