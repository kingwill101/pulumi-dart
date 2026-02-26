// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'distribution_policy3.dart';
import 'instance_group_manager_auto_healing_policy3.dart';
import 'instance_group_manager_instance_lifecycle_policy3.dart';
import 'instance_group_manager_list_managed_instances_results3.dart';
import 'instance_group_manager_update_policy3.dart';
import 'instance_group_manager_version3.dart';
import 'named_port3.dart';
import 'stateful_policy3.dart';

/// The set of arguments for InstanceGroupManager.
class InstanceGroupManagerArgs3 {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final Input<List<InstanceGroupManagerAutoHealingPolicy3>>?
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final Input<String>? baseInstanceName;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final Input<DistributionPolicy3>? distributionPolicy;

  /// The repair policy for this managed instance group.
  final Input<InstanceGroupManagerInstanceLifecyclePolicy3>?
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final Input<String>? instanceTemplate;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final Input<InstanceGroupManagerListManagedInstancesResults3>?
      listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final Input<String>? name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final Input<List<NamedPort3>>? namedPorts;
  final Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Stateful configuration for this Instanced Group Manager
  final Input<StatefulPolicy3>? statefulPolicy;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final Input<int>? targetSize;

  /// The update policy for this managed instance group.
  final Input<InstanceGroupManagerUpdatePolicy3>? updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final Input<List<InstanceGroupManagerVersion3>>? versions;
  final Input<String>? zone;

  InstanceGroupManagerArgs3({
    this.autoHealingPolicies,
    this.baseInstanceName,
    this.description,
    this.distributionPolicy,
    this.instanceLifecyclePolicy,
    this.instanceTemplate,
    this.listManagedInstancesResults,
    this.name,
    this.namedPorts,
    this.project,
    this.requestId,
    this.statefulPolicy,
    this.targetPools,
    this.targetSize,
    this.updatePolicy,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerAutoHealingPolicy3>,
              List<Map<String, dynamic>>>(
          autoHealingPoliciesValue,
          (value) => Input.encodeList<InstanceGroupManagerAutoHealingPolicy3,
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
              DistributionPolicy3, Map<String, dynamic>>(
          distributionPolicyValue, (value) => value.toMap());
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceLifecyclePolicy3,
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
          InstanceGroupManagerListManagedInstancesResults3,
          String>(listManagedInstancesResultsValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = Input.mapOptionalInputValue<List<NamedPort3>,
              List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => Input.encodeList<NamedPort3, Map<String, dynamic>>(
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
    final statefulPolicyValue = statefulPolicy;
    if (statefulPolicyValue != null) {
      map['statefulPolicy'] =
          Input.mapOptionalInputValue<StatefulPolicy3, Map<String, dynamic>>(
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
    final updatePolicyValue = updatePolicy;
    if (updatePolicyValue != null) {
      map['updatePolicy'] = Input.mapOptionalInputValue<
          InstanceGroupManagerUpdatePolicy3,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = Input.mapOptionalInputValue<
              List<InstanceGroupManagerVersion3>, List<Map<String, dynamic>>>(
          versionsValue,
          (value) => Input.encodeList<InstanceGroupManagerVersion3,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupManagerArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerArgs3(
      autoHealingPolicies:
          Input.asOptionalInput<List<InstanceGroupManagerAutoHealingPolicy3>>(
              map['autoHealingPolicies']),
      baseInstanceName: Input.asOptionalInput<String>(map['baseInstanceName']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionPolicy:
          Input.asOptionalInput<DistributionPolicy3>(map['distributionPolicy']),
      instanceLifecyclePolicy:
          Input.asOptionalInput<InstanceGroupManagerInstanceLifecyclePolicy3>(
              map['instanceLifecyclePolicy']),
      instanceTemplate: Input.asOptionalInput<String>(map['instanceTemplate']),
      listManagedInstancesResults: Input.asOptionalInput<
              InstanceGroupManagerListManagedInstancesResults3>(
          map['listManagedInstancesResults']),
      name: Input.asOptionalInput<String>(map['name']),
      namedPorts: Input.asOptionalInput<List<NamedPort3>>(map['namedPorts']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      statefulPolicy:
          Input.asOptionalInput<StatefulPolicy3>(map['statefulPolicy']),
      targetPools: Input.asOptionalInput<List<String>>(map['targetPools']),
      targetSize: Input.asOptionalInput<int>(map['targetSize']),
      updatePolicy: Input.asOptionalInput<InstanceGroupManagerUpdatePolicy3>(
          map['updatePolicy']),
      versions: Input.asOptionalInput<List<InstanceGroupManagerVersion3>>(
          map['versions']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
