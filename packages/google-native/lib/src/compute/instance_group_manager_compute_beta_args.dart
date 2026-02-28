// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_compute_beta.dart';
import 'instance_group_manager_all_instances_config_compute_beta.dart';
import 'instance_group_manager_auto_healing_policy_compute_beta.dart';
import 'instance_group_manager_failover_action_compute_beta.dart';
import 'instance_group_manager_instance_flexibility_policy_compute_beta.dart';
import 'instance_group_manager_instance_lifecycle_policy_compute_beta.dart';
import 'instance_group_manager_list_managed_instances_results_compute_beta.dart';
import 'instance_group_manager_standby_policy_compute_beta.dart';
import 'instance_group_manager_update_policy_compute_beta.dart';
import 'instance_group_manager_version_compute_beta.dart';
import 'named_port_compute_beta.dart';
import 'stateful_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_instance_group_manager_compute_beta_args_doc}
/// The set of arguments for InstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_instance_group_manager_compute_beta_args_doc}
class InstanceGroupManagerComputeBetaArgs {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfigComputeBeta>?
      allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicyComputeBeta>>?
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicyComputeBeta>? distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final pulumi.Input<InstanceGroupManagerFailoverActionComputeBeta>?
      failoverAction;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final pulumi.Input<InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta>?
      instanceFlexibilityPolicy;

  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyComputeBeta>?
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi
      .Input<InstanceGroupManagerListManagedInstancesResultsComputeBeta>?
      listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPortComputeBeta>>? namedPorts;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final pulumi.Input<String>? serviceAccount;

  /// Standby policy for stopped and suspended instances.
  final pulumi.Input<InstanceGroupManagerStandbyPolicyComputeBeta>?
      standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicyComputeBeta>? statefulPolicy;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final pulumi.Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final pulumi.Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyComputeBeta>? updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersionComputeBeta>>? versions;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerComputeBetaArgs].
  /// [allInstancesConfig] Specifies configuration that overrides the instance template configuration for the group.
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [failoverAction] The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  /// [instanceFlexibilityPolicy] Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serviceAccount] The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  /// [standbyPolicy] Standby policy for stopped and suspended instances.
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  /// [zone] Optional.
  InstanceGroupManagerComputeBetaArgs({
    InstanceGroupManagerAllInstancesConfigComputeBeta? allInstancesConfig,
    List<InstanceGroupManagerAutoHealingPolicyComputeBeta>? autoHealingPolicies,
    String? baseInstanceName,
    String? description,
    DistributionPolicyComputeBeta? distributionPolicy,
    InstanceGroupManagerFailoverActionComputeBeta? failoverAction,
    InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta?
        instanceFlexibilityPolicy,
    InstanceGroupManagerInstanceLifecyclePolicyComputeBeta?
        instanceLifecyclePolicy,
    String? instanceTemplate,
    InstanceGroupManagerListManagedInstancesResultsComputeBeta?
        listManagedInstancesResults,
    String? name,
    List<NamedPortComputeBeta>? namedPorts,
    String? project,
    String? requestId,
    String? serviceAccount,
    InstanceGroupManagerStandbyPolicyComputeBeta? standbyPolicy,
    StatefulPolicyComputeBeta? statefulPolicy,
    List<String>? targetPools,
    int? targetSize,
    int? targetStoppedSize,
    int? targetSuspendedSize,
    InstanceGroupManagerUpdatePolicyComputeBeta? updatePolicy,
    List<InstanceGroupManagerVersionComputeBeta>? versions,
    String? zone,
  })  : allInstancesConfig = pulumi.Input.asOptionalInput<
                InstanceGroupManagerAllInstancesConfigComputeBeta>(
            allInstancesConfig),
        autoHealingPolicies = pulumi.Input.asOptionalInput<
                List<InstanceGroupManagerAutoHealingPolicyComputeBeta>>(
            autoHealingPolicies),
        baseInstanceName =
            pulumi.Input.asOptionalInput<String>(baseInstanceName),
        description = pulumi.Input.asOptionalInput<String>(description),
        distributionPolicy =
            pulumi.Input.asOptionalInput<DistributionPolicyComputeBeta>(
                distributionPolicy),
        failoverAction = pulumi.Input.asOptionalInput<
            InstanceGroupManagerFailoverActionComputeBeta>(failoverAction),
        instanceFlexibilityPolicy = pulumi.Input.asOptionalInput<
                InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta>(
            instanceFlexibilityPolicy),
        instanceLifecyclePolicy = pulumi.Input.asOptionalInput<
                InstanceGroupManagerInstanceLifecyclePolicyComputeBeta>(
            instanceLifecyclePolicy),
        instanceTemplate =
            pulumi.Input.asOptionalInput<String>(instanceTemplate),
        listManagedInstancesResults = pulumi.Input.asOptionalInput<
                InstanceGroupManagerListManagedInstancesResultsComputeBeta>(
            listManagedInstancesResults),
        name = pulumi.Input.asOptionalInput<String>(name),
        namedPorts = pulumi.Input.asOptionalInput<List<NamedPortComputeBeta>>(
            namedPorts),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
        standbyPolicy = pulumi.Input.asOptionalInput<
            InstanceGroupManagerStandbyPolicyComputeBeta>(standbyPolicy),
        statefulPolicy =
            pulumi.Input.asOptionalInput<StatefulPolicyComputeBeta>(
                statefulPolicy),
        targetPools = pulumi.Input.asOptionalInput<List<String>>(targetPools),
        targetSize = pulumi.Input.asOptionalInput<int>(targetSize),
        targetStoppedSize =
            pulumi.Input.asOptionalInput<int>(targetStoppedSize),
        targetSuspendedSize =
            pulumi.Input.asOptionalInput<int>(targetSuspendedSize),
        updatePolicy = pulumi.Input.asOptionalInput<
            InstanceGroupManagerUpdatePolicyComputeBeta>(updatePolicy),
        versions = pulumi.Input.asOptionalInput<
            List<InstanceGroupManagerVersionComputeBeta>>(versions),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allInstancesConfigValue = allInstancesConfig;
    if (allInstancesConfigValue != null) {
      map['allInstancesConfig'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerAllInstancesConfigComputeBeta,
              Map<String, dynamic>>(
          allInstancesConfigValue, (value) => value.toMap());
    }
    final autoHealingPoliciesValue = autoHealingPolicies;
    if (autoHealingPoliciesValue != null) {
      map['autoHealingPolicies'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerAutoHealingPolicyComputeBeta>,
              List<Map<String, dynamic>>>(
          autoHealingPoliciesValue,
          (value) => pulumi.Input.encodeList<
              InstanceGroupManagerAutoHealingPolicyComputeBeta,
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
      map['distributionPolicy'] = pulumi.Input.mapOptionalInputValue<
              DistributionPolicyComputeBeta, Map<String, dynamic>>(
          distributionPolicyValue, (value) => value.toMap());
    }
    final failoverActionValue = failoverAction;
    if (failoverActionValue != null) {
      map['failoverAction'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerFailoverActionComputeBeta,
          String>(failoverActionValue, (value) => value.value);
    }
    final instanceFlexibilityPolicyValue = instanceFlexibilityPolicy;
    if (instanceFlexibilityPolicyValue != null) {
      map['instanceFlexibilityPolicy'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta,
              Map<String, dynamic>>(
          instanceFlexibilityPolicyValue, (value) => value.toMap());
    }
    final instanceLifecyclePolicyValue = instanceLifecyclePolicy;
    if (instanceLifecyclePolicyValue != null) {
      map['instanceLifecyclePolicy'] = pulumi.Input.mapOptionalInputValue<
              InstanceGroupManagerInstanceLifecyclePolicyComputeBeta,
              Map<String, dynamic>>(
          instanceLifecyclePolicyValue, (value) => value.toMap());
    }
    final instanceTemplateValue = instanceTemplate;
    if (instanceTemplateValue != null) {
      map['instanceTemplate'] = instanceTemplateValue;
    }
    final listManagedInstancesResultsValue = listManagedInstancesResults;
    if (listManagedInstancesResultsValue != null) {
      map['listManagedInstancesResults'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerListManagedInstancesResultsComputeBeta,
          String>(listManagedInstancesResultsValue, (value) => value.value);
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = pulumi.Input.mapOptionalInputValue<
              List<NamedPortComputeBeta>, List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => pulumi.Input.encodeList<NamedPortComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['standbyPolicy'] = pulumi.Input.mapOptionalInputValue<
          InstanceGroupManagerStandbyPolicyComputeBeta,
          Map<String, dynamic>>(standbyPolicyValue, (value) => value.toMap());
    }
    final statefulPolicyValue = statefulPolicy;
    if (statefulPolicyValue != null) {
      map['statefulPolicy'] = pulumi.Input.mapOptionalInputValue<
          StatefulPolicyComputeBeta,
          Map<String, dynamic>>(statefulPolicyValue, (value) => value.toMap());
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
          InstanceGroupManagerUpdatePolicyComputeBeta,
          Map<String, dynamic>>(updatePolicyValue, (value) => value.toMap());
    }
    final versionsValue = versions;
    if (versionsValue != null) {
      map['versions'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupManagerVersionComputeBeta>,
              List<Map<String, dynamic>>>(
          versionsValue,
          (value) => pulumi.Input.encodeList<
              InstanceGroupManagerVersionComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupManagerComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerComputeBetaArgs(
      allInstancesConfig: map['allInstancesConfig'] == null
          ? null
          : InstanceGroupManagerAllInstancesConfigComputeBeta.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>()),
      autoHealingPolicies: map['autoHealingPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceGroupManagerAutoHealingPolicyComputeBeta>(
              map['autoHealingPolicies'],
              (value) =>
                  InstanceGroupManagerAutoHealingPolicyComputeBeta.fromMap(
                      (value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] == null
          ? null
          : map['baseInstanceName'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      distributionPolicy: map['distributionPolicy'] == null
          ? null
          : DistributionPolicyComputeBeta.fromMap(
              (map['distributionPolicy'] as Map).cast<String, dynamic>()),
      failoverAction: map['failoverAction'] == null
          ? null
          : InstanceGroupManagerFailoverActionComputeBeta.fromValue(
              map['failoverAction'] as String),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null
          ? null
          : InstanceGroupManagerInstanceFlexibilityPolicyComputeBeta.fromMap(
              (map['instanceFlexibilityPolicy'] as Map)
                  .cast<String, dynamic>()),
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null
          ? null
          : InstanceGroupManagerInstanceLifecyclePolicyComputeBeta.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>()),
      instanceTemplate: map['instanceTemplate'] == null
          ? null
          : map['instanceTemplate'] as String,
      listManagedInstancesResults: map['listManagedInstancesResults'] == null
          ? null
          : InstanceGroupManagerListManagedInstancesResultsComputeBeta
              .fromValue(map['listManagedInstancesResults'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null
          ? null
          : pulumi.Input.decodeList<NamedPortComputeBeta>(
              map['namedPorts'],
              (value) => NamedPortComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      standbyPolicy: map['standbyPolicy'] == null
          ? null
          : InstanceGroupManagerStandbyPolicyComputeBeta.fromMap(
              (map['standbyPolicy'] as Map).cast<String, dynamic>()),
      statefulPolicy: map['statefulPolicy'] == null
          ? null
          : StatefulPolicyComputeBeta.fromMap(
              (map['statefulPolicy'] as Map).cast<String, dynamic>()),
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
          : InstanceGroupManagerUpdatePolicyComputeBeta.fromMap(
              (map['updatePolicy'] as Map).cast<String, dynamic>()),
      versions: map['versions'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerVersionComputeBeta>(
              map['versions'],
              (value) => InstanceGroupManagerVersionComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
