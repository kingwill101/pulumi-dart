// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'distribution_policy.dart';
import 'instance_group_manager_all_instances_config.dart';
import 'instance_group_manager_auto_healing_policy.dart';
import 'instance_group_manager_instance_flexibility_policy.dart';
import 'instance_group_manager_instance_lifecycle_policy.dart';
import 'instance_group_manager_standby_policy.dart';
import 'instance_group_manager_update_policy.dart';
import 'instance_group_manager_version.dart';
import 'named_port.dart';
import 'region_instance_group_manager_failover_action.dart';
import 'region_instance_group_manager_list_managed_instances_results.dart';
import 'region_instance_group_manager_target_size_unit.dart';
import 'stateful_policy.dart';

/// The set of arguments for RegionInstanceGroupManager.
class RegionInstanceGroupManagerArgs {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final Input<InstanceGroupManagerAllInstancesConfig>? allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  final Input<List<InstanceGroupManagerAutoHealingPolicy>>? autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final Input<String>? baseInstanceName;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final Input<DistributionPolicy>? distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final Input<RegionInstanceGroupManagerFailoverAction>? failoverAction;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final Input<InstanceGroupManagerInstanceFlexibilityPolicy>?
      instanceFlexibilityPolicy;

  /// The repair policy for this managed instance group.
  final Input<InstanceGroupManagerInstanceLifecyclePolicy>?
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final Input<String>? instanceTemplate;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final Input<RegionInstanceGroupManagerListManagedInstancesResults>?
      listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final Input<String>? name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final Input<List<NamedPort>>? namedPorts;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final Input<String>? serviceAccount;

  /// Standby policy for stopped and suspended instances.
  final Input<InstanceGroupManagerStandbyPolicy>? standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  final Input<StatefulPolicy>? statefulPolicy;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final Input<int>? targetSize;

  /// The unit of measure for the target size.
  final Input<RegionInstanceGroupManagerTargetSizeUnit>? targetSizeUnit;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group.
  final Input<InstanceGroupManagerUpdatePolicy>? updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final Input<List<InstanceGroupManagerVersion>>? versions;

  RegionInstanceGroupManagerArgs({
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
    required this.region,
    this.requestId,
    this.serviceAccount,
    this.standbyPolicy,
    this.statefulPolicy,
    this.targetPools,
    this.targetSize,
    this.targetSizeUnit,
    this.targetStoppedSize,
    this.targetSuspendedSize,
    this.updatePolicy,
    this.versions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigValue = allInstancesConfig;
    if (allInstancesConfigValue != null) {
      map['allInstancesConfig'] = Input.mapOptionalInputValue<
              InstanceGroupManagerAllInstancesConfig, Map<String, dynamic>>(
          allInstancesConfigValue, (value) => value.toMap());
    }
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerAutoHealingPolicy>,
              List<Map<String, dynamic>>>(
          autoHealingPoliciesValue,
          (value) => Input.encodeList<InstanceGroupManagerAutoHealingPolicy,
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
      map['distributionPolicy'] =
          Input.mapOptionalInputValue<DistributionPolicy, Map<String, dynamic>>(
              distributionPolicyValue, (value) => value.toMap());
    }
    final failoverActionValue = failoverAction;
    if (failoverActionValue != null) {
      map['failoverAction'] = Input.mapOptionalInputValue<
          RegionInstanceGroupManagerFailoverAction,
          String>(failoverActionValue, (value) => value.value);
    }
    final instanceFlexibilityPolicyValue = instanceFlexibilityPolicy;
    if (instanceFlexibilityPolicyValue != null) {
      map['instanceFlexibilityPolicy'] = Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceFlexibilityPolicy,
              Map<String, dynamic>>(
          instanceFlexibilityPolicyValue, (value) => value.toMap());
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceLifecyclePolicy,
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
          RegionInstanceGroupManagerListManagedInstancesResults,
          String>(listManagedInstancesResultsValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = Input.mapOptionalInputValue<List<NamedPort>,
              List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => Input.encodeList<NamedPort, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
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
          InstanceGroupManagerStandbyPolicy,
          Map<String, dynamic>>(standbyPolicyValue, (value) => value.toMap());
    }
    final statefulPolicyValue = statefulPolicy;
    if (statefulPolicyValue != null) {
      map['statefulPolicy'] =
          Input.mapOptionalInputValue<StatefulPolicy, Map<String, dynamic>>(
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
    final targetSizeUnitValue = targetSizeUnit;
    if (targetSizeUnitValue != null) {
      map['targetSizeUnit'] = Input.mapOptionalInputValue<
          RegionInstanceGroupManagerTargetSizeUnit,
          String>(targetSizeUnitValue, (value) => value.value);
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
          InstanceGroupManagerUpdatePolicy,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerVersion>, List<Map<String, dynamic>>>(
          versionsValue,
          (value) => Input.encodeList<InstanceGroupManagerVersion,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory RegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerArgs(
      allInstancesConfig:
          Input.asOptionalInput<InstanceGroupManagerAllInstancesConfig>(
              map['allInstancesConfig']),
      autoHealingPolicies:
          Input.asOptionalInput<List<InstanceGroupManagerAutoHealingPolicy>>(
              map['autoHealingPolicies']),
      baseInstanceName: Input.asOptionalInput<String>(map['baseInstanceName']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionPolicy:
          Input.asOptionalInput<DistributionPolicy>(map['distributionPolicy']),
      failoverAction:
          Input.asOptionalInput<RegionInstanceGroupManagerFailoverAction>(
              map['failoverAction']),
      instanceFlexibilityPolicy:
          Input.asOptionalInput<InstanceGroupManagerInstanceFlexibilityPolicy>(
              map['instanceFlexibilityPolicy']),
      instanceLifecyclePolicy:
          Input.asOptionalInput<InstanceGroupManagerInstanceLifecyclePolicy>(
              map['instanceLifecyclePolicy']),
      instanceTemplate: Input.asOptionalInput<String>(map['instanceTemplate']),
      listManagedInstancesResults: Input.asOptionalInput<
              RegionInstanceGroupManagerListManagedInstancesResults>(
          map['listManagedInstancesResults']),
      name: Input.asOptionalInput<String>(map['name']),
      namedPorts: Input.asOptionalInput<List<NamedPort>>(map['namedPorts']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      standbyPolicy: Input.asOptionalInput<InstanceGroupManagerStandbyPolicy>(
          map['standbyPolicy']),
      statefulPolicy:
          Input.asOptionalInput<StatefulPolicy>(map['statefulPolicy']),
      targetPools: Input.asOptionalInput<List<String>>(map['targetPools']),
      targetSize: Input.asOptionalInput<int>(map['targetSize']),
      targetSizeUnit:
          Input.asOptionalInput<RegionInstanceGroupManagerTargetSizeUnit>(
              map['targetSizeUnit']),
      targetStoppedSize: Input.asOptionalInput<int>(map['targetStoppedSize']),
      targetSuspendedSize:
          Input.asOptionalInput<int>(map['targetSuspendedSize']),
      updatePolicy: Input.asOptionalInput<InstanceGroupManagerUpdatePolicy>(
          map['updatePolicy']),
      versions: Input.asOptionalInput<List<InstanceGroupManagerVersion>>(
          map['versions']),
    );
  }
}
