// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_policy_compute_v1.dart';
import 'instance_group_manager_auto_healing_policy_compute_v1.dart';
import 'instance_group_manager_instance_lifecycle_policy_compute_v1.dart';
import 'instance_group_manager_list_managed_instances_results_compute_v1.dart';
import 'instance_group_manager_update_policy_compute_v1.dart';
import 'instance_group_manager_version_compute_v1.dart';
import 'named_port_compute_v1.dart';
import 'stateful_policy_compute_v1.dart';

/// {@template pulumi_compute_v1_instance_group_manager_compute_v1_args_doc}
/// The set of arguments for InstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_instance_group_manager_compute_v1_args_doc}
class InstanceGroupManagerComputeV1Args {
  /// The autohealing policy for this managed instance group. You can specify only one value.
  final pulumi.Input<List<InstanceGroupManagerAutoHealingPolicyComputeV1>>? autoHealingPolicies;
  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  final pulumi.Input<String>? baseInstanceName;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  final pulumi.Input<DistributionPolicyComputeV1>? distributionPolicy;
  /// The repair policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerInstanceLifecyclePolicyComputeV1>? instanceLifecyclePolicy;
  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  final pulumi.Input<String>? instanceTemplate;
  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  final pulumi.Input<InstanceGroupManagerListManagedInstancesResultsComputeV1>? listManagedInstancesResults;
  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  final pulumi.Input<List<NamedPortComputeV1>>? namedPorts;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Stateful configuration for this Instanced Group Manager
  final pulumi.Input<StatefulPolicyComputeV1>? statefulPolicy;
  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  final pulumi.Input<List<String>>? targetPools;
  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  final pulumi.Input<int>? targetSize;
  /// The update policy for this managed instance group.
  final pulumi.Input<InstanceGroupManagerUpdatePolicyComputeV1>? updatePolicy;
  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  final pulumi.Input<List<InstanceGroupManagerVersionComputeV1>>? versions;
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupManagerComputeV1Args].
  /// [autoHealingPolicies] The autohealing policy for this managed instance group. You can specify only one value.
  /// [baseInstanceName] The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  /// [description] An optional description of this resource.
  /// [distributionPolicy] Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  /// [instanceLifecyclePolicy] The repair policy for this managed instance group.
  /// [instanceTemplate] The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  /// [listManagedInstancesResults] Pagination behavior of the listManagedInstances API method for this managed instance group.
  /// [name] The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [statefulPolicy] Stateful configuration for this Instanced Group Manager
  /// [targetPools] The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  /// [targetSize] The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  /// [updatePolicy] The update policy for this managed instance group.
  /// [versions] Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  /// [zone] Optional.
  InstanceGroupManagerComputeV1Args({
    List<InstanceGroupManagerAutoHealingPolicyComputeV1>? autoHealingPolicies,
    String? baseInstanceName,
    String? description,
    DistributionPolicyComputeV1? distributionPolicy,
    InstanceGroupManagerInstanceLifecyclePolicyComputeV1? instanceLifecyclePolicy,
    String? instanceTemplate,
    InstanceGroupManagerListManagedInstancesResultsComputeV1? listManagedInstancesResults,
    String? name,
    List<NamedPortComputeV1>? namedPorts,
    String? project,
    String? requestId,
    StatefulPolicyComputeV1? statefulPolicy,
    List<String>? targetPools,
    int? targetSize,
    InstanceGroupManagerUpdatePolicyComputeV1? updatePolicy,
    List<InstanceGroupManagerVersionComputeV1>? versions,
    String? zone,
  }) :
      autoHealingPolicies = pulumi.Input.asOptionalInput<List<InstanceGroupManagerAutoHealingPolicyComputeV1>>(autoHealingPolicies),
      baseInstanceName = pulumi.Input.asOptionalInput<String>(baseInstanceName),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributionPolicy = pulumi.Input.asOptionalInput<DistributionPolicyComputeV1>(distributionPolicy),
      instanceLifecyclePolicy = pulumi.Input.asOptionalInput<InstanceGroupManagerInstanceLifecyclePolicyComputeV1>(instanceLifecyclePolicy),
      instanceTemplate = pulumi.Input.asOptionalInput<String>(instanceTemplate),
      listManagedInstancesResults = pulumi.Input.asOptionalInput<InstanceGroupManagerListManagedInstancesResultsComputeV1>(listManagedInstancesResults),
      name = pulumi.Input.asOptionalInput<String>(name),
      namedPorts = pulumi.Input.asOptionalInput<List<NamedPortComputeV1>>(namedPorts),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      statefulPolicy = pulumi.Input.asOptionalInput<StatefulPolicyComputeV1>(statefulPolicy),
      targetPools = pulumi.Input.asOptionalInput<List<String>>(targetPools),
      targetSize = pulumi.Input.asOptionalInput<int>(targetSize),
      updatePolicy = pulumi.Input.asOptionalInput<InstanceGroupManagerUpdatePolicyComputeV1>(updatePolicy),
      versions = pulumi.Input.asOptionalInput<List<InstanceGroupManagerVersionComputeV1>>(versions),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoHealingPolicies': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerAutoHealingPolicyComputeV1>, List<Map<String, dynamic>>>(autoHealingPolicies, (value) => pulumi.Input.encodeList<InstanceGroupManagerAutoHealingPolicyComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'baseInstanceName': ?baseInstanceName,
      'description': ?description,
      'distributionPolicy': ?pulumi.Input.mapOptionalInputValue<DistributionPolicyComputeV1, Map<String, dynamic>>(distributionPolicy, (value) => value.toMap()),
      'instanceLifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerInstanceLifecyclePolicyComputeV1, Map<String, dynamic>>(instanceLifecyclePolicy, (value) => value.toMap()),
      'instanceTemplate': ?instanceTemplate,
      'listManagedInstancesResults': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerListManagedInstancesResultsComputeV1, String>(listManagedInstancesResults, (value) => value.value),
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<NamedPortComputeV1>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<NamedPortComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'requestId': ?requestId,
      'statefulPolicy': ?pulumi.Input.mapOptionalInputValue<StatefulPolicyComputeV1, Map<String, dynamic>>(statefulPolicy, (value) => value.toMap()),
      'targetPools': ?targetPools,
      'targetSize': ?targetSize,
      'updatePolicy': ?pulumi.Input.mapOptionalInputValue<InstanceGroupManagerUpdatePolicyComputeV1, Map<String, dynamic>>(updatePolicy, (value) => value.toMap()),
      'versions': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupManagerVersionComputeV1>, List<Map<String, dynamic>>>(versions, (value) => pulumi.Input.encodeList<InstanceGroupManagerVersionComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory InstanceGroupManagerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerComputeV1Args(
      autoHealingPolicies: map['autoHealingPolicies'] == null ? null : pulumi.Input.decodeList<InstanceGroupManagerAutoHealingPolicyComputeV1>(map['autoHealingPolicies'], (value) => InstanceGroupManagerAutoHealingPolicyComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      baseInstanceName: map['baseInstanceName'] == null ? null : map['baseInstanceName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      distributionPolicy: map['distributionPolicy'] == null ? null : DistributionPolicyComputeV1.fromMap((map['distributionPolicy'] as Map).cast<String, dynamic>()),
      instanceLifecyclePolicy: map['instanceLifecyclePolicy'] == null ? null : InstanceGroupManagerInstanceLifecyclePolicyComputeV1.fromMap((map['instanceLifecyclePolicy'] as Map).cast<String, dynamic>()),
      instanceTemplate: map['instanceTemplate'] == null ? null : map['instanceTemplate'] as String,
      listManagedInstancesResults: map['listManagedInstancesResults'] == null ? null : InstanceGroupManagerListManagedInstancesResultsComputeV1.fromValue(map['listManagedInstancesResults'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: map['namedPorts'] == null ? null : pulumi.Input.decodeList<NamedPortComputeV1>(map['namedPorts'], (value) => NamedPortComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      statefulPolicy: map['statefulPolicy'] == null ? null : StatefulPolicyComputeV1.fromMap((map['statefulPolicy'] as Map).cast<String, dynamic>()),
      targetPools: map['targetPools'] == null ? null : (map['targetPools'] as List).cast<String>(),
      targetSize: map['targetSize'] == null ? null : map['targetSize'] as int,
      updatePolicy: map['updatePolicy'] == null ? null : InstanceGroupManagerUpdatePolicyComputeV1.fromMap((map['updatePolicy'] as Map).cast<String, dynamic>()),
      versions: map['versions'] == null ? null : pulumi.Input.decodeList<InstanceGroupManagerVersionComputeV1>(map['versions'], (value) => InstanceGroupManagerVersionComputeV1.fromMap((value as Map).cast<String, dynamic>())),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

