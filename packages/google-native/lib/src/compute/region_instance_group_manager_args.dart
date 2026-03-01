// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// {@template pulumi_compute_alpha_region_instance_group_manager_args_doc}
/// The set of arguments for RegionInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_region_instance_group_manager_args_doc}
class RegionInstanceGroupManagerArgs {
  /// Specifies configuration that overrides the instance template configuration for the group.
  final pulumi.Input<InstanceGroupManagerAllInstancesConfig>?
  allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicy>>?
  autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicy>? distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  final pulumi.Input<RegionInstanceGroupManagerFailoverAction>? failoverAction;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  final pulumi.Input<InstanceGroupManagerInstanceFlexibilityPolicy>?
  instanceFlexibilityPolicy;

  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicy>?
  instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<RegionInstanceGroupManagerListManagedInstancesResults>?
  listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPort>>? namedPorts;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  final pulumi.Input<String>? serviceAccount;

  /// Standby policy for stopped and suspended instances.
  final pulumi.Input<InstanceGroupManagerStandbyPolicy>? standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicy>? statefulPolicy;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;

  /// The unit of measure for the target size.
  final pulumi.Input<RegionInstanceGroupManagerTargetSizeUnit>? targetSizeUnit;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  final pulumi.Input<int>? targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  final pulumi.Input<int>? targetSuspendedSize;

  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicy>? updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersion>>? versions;

  /// Creates a new [RegionInstanceGroupManagerArgs].
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
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serviceAccount] The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  /// [standbyPolicy] Standby policy for stopped and suspended instances.
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [targetSizeUnit] The unit of measure for the target size.
  /// [targetStoppedSize] The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  /// [targetSuspendedSize] The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  RegionInstanceGroupManagerArgs({
    InstanceGroupManagerAllInstancesConfig? allInstancesConfig,
    List<InstanceGroupManagerAutoHealingPolicy>? autoHealingPolicies,
    String? baseInstanceName,
    String? description,
    DistributionPolicy? distributionPolicy,
    RegionInstanceGroupManagerFailoverAction? failoverAction,
    InstanceGroupManagerInstanceFlexibilityPolicy? instanceFlexibilityPolicy,
    InstanceGroupManagerInstanceLifecyclePolicy? instanceLifecyclePolicy,
    String? instanceTemplate,
    RegionInstanceGroupManagerListManagedInstancesResults?
    listManagedInstancesResults,
    String? name,
    List<NamedPort>? namedPorts,
    String? project,
    required String region,
    String? requestId,
    String? serviceAccount,
    InstanceGroupManagerStandbyPolicy? standbyPolicy,
    StatefulPolicy? statefulPolicy,
    List<String>? targetPools,
    int? targetSize,
    RegionInstanceGroupManagerTargetSizeUnit? targetSizeUnit,
    int? targetStoppedSize,
    int? targetSuspendedSize,
    InstanceGroupManagerUpdatePolicy? updatePolicy,
    List<InstanceGroupManagerVersion>? versions,
  }) : allInstancesConfig =
           pulumi.Input.asOptionalInput<InstanceGroupManagerAllInstancesConfig>(
             allInstancesConfig,
           ),
       autoHealingPolicies =
           pulumi.Input.asOptionalInput<
             List<InstanceGroupManagerAutoHealingPolicy>
           >(autoHealingPolicies),
       baseInstanceName = pulumi.Input.asOptionalInput<String>(
         baseInstanceName,
       ),
       description = pulumi.Input.asOptionalInput<String>(description),
       distributionPolicy = pulumi.Input.asOptionalInput<DistributionPolicy>(
         distributionPolicy,
       ),
       failoverAction =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerFailoverAction
           >(failoverAction),
       instanceFlexibilityPolicy =
           pulumi.Input.asOptionalInput<
             InstanceGroupManagerInstanceFlexibilityPolicy
           >(instanceFlexibilityPolicy),
       instanceLifecyclePolicy =
           pulumi.Input.asOptionalInput<
             InstanceGroupManagerInstanceLifecyclePolicy
           >(instanceLifecyclePolicy),
       instanceTemplate = pulumi.Input.asOptionalInput<String>(
         instanceTemplate,
       ),
       listManagedInstancesResults =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerListManagedInstancesResults
           >(listManagedInstancesResults),
       name = pulumi.Input.asOptionalInput<String>(name),
       namedPorts = pulumi.Input.asOptionalInput<List<NamedPort>>(namedPorts),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
       standbyPolicy =
           pulumi.Input.asOptionalInput<InstanceGroupManagerStandbyPolicy>(
             standbyPolicy,
           ),
       statefulPolicy = pulumi.Input.asOptionalInput<StatefulPolicy>(
         statefulPolicy,
       ),
       targetPools = pulumi.Input.asOptionalInput<List<String>>(targetPools),
       targetSize = pulumi.Input.asOptionalInput<int>(targetSize),
       targetSizeUnit =
           pulumi.Input.asOptionalInput<
             RegionInstanceGroupManagerTargetSizeUnit
           >(targetSizeUnit),
       targetStoppedSize = pulumi.Input.asOptionalInput<int>(targetStoppedSize),
       targetSuspendedSize = pulumi.Input.asOptionalInput<int>(
         targetSuspendedSize,
       ),
       updatePolicy =
           pulumi.Input.asOptionalInput<InstanceGroupManagerUpdatePolicy>(
             updatePolicy,
           ),
       versions = pulumi
           .Input.asOptionalInput<List<InstanceGroupManagerVersion>>(versions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerAllInstancesConfig,
            Map<String, dynamic>
          >(allInstancesConfig, (value) => value.toMap()),
      'autoHealingPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerAutoHealingPolicy>,
            List<Map<String, dynamic>>
          >(
            autoHealingPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerAutoHealingPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DistributionPolicy,
            Map<String, dynamic>
          >(distributionPolicy, (value) => value.toMap()),
      'failoverAction':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerFailoverAction,
            String
          >(failoverAction, (value) => value.value),
      'instanceFlexibilityPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerInstanceFlexibilityPolicy,
            Map<String, dynamic>
          >(instanceFlexibilityPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerInstanceLifecyclePolicy,
            Map<String, dynamic>
          >(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerListManagedInstancesResults,
            String
          >(listManagedInstancesResults, (value) => value.value),
      'name': ?name,
      'namedPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<NamedPort>,
            List<Map<String, dynamic>>
          >(
            namedPorts,
            (value) => pulumi.Input.encodeList<NamedPort, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'serviceAccount': ?serviceAccount,
      'standbyPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerStandbyPolicy,
            Map<String, dynamic>
          >(standbyPolicy, (value) => value.toMap()),
      'statefulPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            StatefulPolicy,
            Map<String, dynamic>
          >(statefulPolicy, (value) => value.toMap()),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'targetSizeUnit':
          ?pulumi.Input.mapOptionalInputValue<
            RegionInstanceGroupManagerTargetSizeUnit,
            String
          >(targetSizeUnit, (value) => value.value),
      'targetStoppedSize': ?targetStoppedSize,
      'targetSuspendedSize': ?targetSuspendedSize,
      'updatePolicy':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceGroupManagerUpdatePolicy,
            Map<String, dynamic>
          >(updatePolicy, (value) => value.toMap()),
      'versions':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerVersion>,
            List<Map<String, dynamic>>
          >(
            versions,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerVersion,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RegionInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerArgs(
      allInstancesConfig: map['allInstancesConfig'] == null
          ? null
          : InstanceGroupManagerAllInstancesConfig.fromMap(
              (map['allInstancesConfig'] as Map).cast<String, dynamic>(),
            ),
      autoHealingPolicies: map['autoHealingPolicies'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicy>(
              map['autoHealingPolicies'],
              (value) => InstanceGroupManagerAutoHealingPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      baseInstanceName: map['baseInstanceName'] == null
          ? null
          : map['baseInstanceName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      distributionPolicy: map['distributionPolicy'] == null
          ? null
          : DistributionPolicy.fromMap(
              (map['distributionPolicy'] as Map).cast<String, dynamic>(),
            ),
      failoverAction: map['failoverAction'] == null
          ? null
          : RegionInstanceGroupManagerFailoverAction.fromValue(
              map['failoverAction'] as String,
            ),
      instanceFlexibilityPolicy: map['instanceFlexibilityPolicy'] == null
          ? null
          : InstanceGroupManagerInstanceFlexibilityPolicy.fromMap(
              (map['instanceFlexibilityPolicy'] as Map).cast<String, dynamic>(),
            ),
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null
          ? null
          : InstanceGroupManagerInstanceLifecyclePolicy.fromMap(
              (map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>(),
            ),
      instanceTemplate: map['instanceTemplate'] == null
          ? null
          : map['instanceTemplate'] as String,
      listManagedInstancesResults: map['listManagedInstancesResults'] == null
          ? null
          : RegionInstanceGroupManagerListManagedInstancesResults.fromValue(
              map['listManagedInstancesResults'] as String,
            ),
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null
          ? null
          : pulumi.Input.decodeList<NamedPort>(
              map['namedPorts'],
              (value) =>
                  NamedPort.fromMap((value as Map).cast<String, dynamic>()),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      standbyPolicy: map['standbyPolicy'] == null
          ? null
          : InstanceGroupManagerStandbyPolicy.fromMap(
              (map['standbyPolicy'] as Map).cast<String, dynamic>(),
            ),
      statefulPolicy: map['statefulPolicy'] == null
          ? null
          : StatefulPolicy.fromMap(
              (map['statefulPolicy'] as Map).cast<String, dynamic>(),
            ),
      targetPools: map['targetPools'] == null
          ? null
          : (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] == null ? null : map['targetSize'] as int,
      targetSizeUnit: map['targetSizeUnit'] == null
          ? null
          : RegionInstanceGroupManagerTargetSizeUnit.fromValue(
              map['targetSizeUnit'] as String,
            ),
      targetStoppedSize: map['targetStoppedSize'] == null
          ? null
          : map['targetStoppedSize'] as int,
      targetSuspendedSize: map['targetSuspendedSize'] == null
          ? null
          : map['targetSuspendedSize'] as int,
      updatePolicy: map['updatePolicy'] == null
          ? null
          : InstanceGroupManagerUpdatePolicy.fromMap(
              (map['updatePolicy'] as Map).cast<String, dynamic>(),
            ),
      versions: map['versions'] == null
          ? null
          : pulumi.Input.decodeList<InstanceGroupManagerVersion>(
              map['versions'],
              (value) => InstanceGroupManagerVersion.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
