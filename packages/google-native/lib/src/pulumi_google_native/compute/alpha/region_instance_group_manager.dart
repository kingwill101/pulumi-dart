import 'package:pulumi/pulumi.dart';
import 'distribution_policy_response.dart';
import 'instance_group_manager_actions_summary_response.dart';
import 'instance_group_manager_all_instances_config_response.dart';
import 'instance_group_manager_auto_healing_policy_response.dart';
import 'instance_group_manager_instance_flexibility_policy_response.dart';
import 'instance_group_manager_instance_lifecycle_policy_response.dart';
import 'instance_group_manager_standby_policy_response.dart';
import 'instance_group_manager_status_response.dart';
import 'instance_group_manager_update_policy_response.dart';
import 'instance_group_manager_version_response.dart';
import 'named_port_response.dart';
import 'region_instance_group_manager_args.dart';
import 'stateful_policy_response.dart';

/// Creates a managed instance group using the information that you specify in the request. After the group is created, instances in the group are created using the specified instance template. This operation is marked as DONE when the group is created even if the instances in the group have not yet been created. You must separately verify the status of the individual instances with the listmanagedinstances method. A regional managed instance group can contain up to 2000 instances.
class RegionInstanceGroupManager extends CustomResource {
  /// Specifies configuration that overrides the instance template configuration for the group.
  late final Output<InstanceGroupManagerAllInstancesConfigResponse>
      allInstancesConfig;

  /// The autohealing policy for this managed instance group. You can specify only one value.
  late final Output<List<InstanceGroupManagerAutoHealingPolicyResponse>>
      autoHealingPolicies;

  /// The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name. The base instance name must comply with RFC1035.
  late final Output<String> baseInstanceName;

  /// The creation timestamp for this managed instance group in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// The list of instance actions and the number of instances in this managed instance group that are scheduled for each of those actions.
  late final Output<InstanceGroupManagerActionsSummaryResponse> currentActions;

  /// An optional description of this resource.
  late final Output<String> description;

  /// Policy specifying the intended distribution of managed instances across zones in a regional managed instance group.
  late final Output<DistributionPolicyResponse> distributionPolicy;

  /// The action to perform in case of zone failure. Only one value is supported, NO_FAILOVER. The default is NO_FAILOVER.
  late final Output<String> failoverAction;

  /// Fingerprint of this resource. This field may be used in optimistic locking. It will be ignored when inserting an InstanceGroupManager. An up-to-date fingerprint must be provided in order to update the InstanceGroupManager, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InstanceGroupManager.
  late final Output<String> fingerprint;

  /// Instance flexibility allowing MIG to create VMs from multiple types of machines. Instance flexibility configuration on MIG overrides instance template configuration.
  late final Output<InstanceGroupManagerInstanceFlexibilityPolicyResponse>
      instanceFlexibilityPolicy;

  /// The URL of the Instance Group resource.
  late final Output<String> instanceGroup;

  /// The repair policy for this managed instance group.
  late final Output<InstanceGroupManagerInstanceLifecyclePolicyResponse>
      instanceLifecyclePolicy;

  /// The URL of the instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group. The templates for existing instances in the group do not change unless you run recreateInstances, run applyUpdatesToInstances, or set the group's updatePolicy.type to PROACTIVE.
  late final Output<String> instanceTemplate;

  /// The resource type, which is always compute#instanceGroupManager for managed instance groups.
  late final Output<String> kind;

  /// Pagination behavior of the listManagedInstances API method for this managed instance group.
  late final Output<String> listManagedInstancesResults;

  /// The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.
  late final Output<String> name;

  /// Named ports configured for the Instance Groups complementary to this Instance Group Manager.
  late final Output<List<NamedPortResponse>> namedPorts;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The URL for this managed instance group. The server defines this URL.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// The service account to be used as credentials for all operations performed by the managed instance group on instances. The service accounts needs all permissions required to create and delete instances. By default, the service account {projectNumber}@cloudservices.gserviceaccount.com is used.
  late final Output<String> serviceAccount;

  /// Standby policy for stopped and suspended instances.
  late final Output<InstanceGroupManagerStandbyPolicyResponse> standbyPolicy;

  /// Stateful configuration for this Instanced Group Manager
  late final Output<StatefulPolicyResponse> statefulPolicy;

  /// The status of this managed instance group.
  late final Output<InstanceGroupManagerStatusResponse> status;

  /// The URLs for all TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.
  late final Output<List<String>> targetPools;

  /// The target number of running instances for this managed instance group. You can reduce this number by using the instanceGroupManager deleteInstances or abandonInstances methods. Resizing the group also changes this number.
  late final Output<int> targetSize;

  /// The unit of measure for the target size.
  late final Output<String> targetSizeUnit;

  /// The target number of stopped instances for this managed instance group. This number changes when you: - Stop instance using the stopInstances method or start instances using the startInstances method. - Manually change the targetStoppedSize using the update method.
  late final Output<int> targetStoppedSize;

  /// The target number of suspended instances for this managed instance group. This number changes when you: - Suspend instance using the suspendInstances method or resume instances using the resumeInstances method. - Manually change the targetSuspendedSize using the update method.
  late final Output<int> targetSuspendedSize;

  /// The update policy for this managed instance group.
  late final Output<InstanceGroupManagerUpdatePolicyResponse> updatePolicy;

  /// Specifies the instance templates used by this managed instance group to create instances. Each version is defined by an instanceTemplate and a name. Every version can appear at most once per instance group. This field overrides the top-level instanceTemplate field. Read more about the relationships between these fields. Exactly one version must leave the targetSize field unset. That version will be applied to all remaining instances. For more information, read about canary updates.
  late final Output<List<InstanceGroupManagerVersionResponse>> versions;

  /// The URL of a zone where the managed instance group is located (for zonal resources).
  late final Output<String> zone;

  RegionInstanceGroupManager(
    String name, {
    RegionInstanceGroupManagerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:RegionInstanceGroupManager',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allInstancesConfig =
        registerOutput<InstanceGroupManagerAllInstancesConfigResponse>(
            'allInstancesConfig');
    this.autoHealingPolicies =
        registerOutput<List<InstanceGroupManagerAutoHealingPolicyResponse>>(
            'autoHealingPolicies');
    this.baseInstanceName = registerOutput<String>('baseInstanceName');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.currentActions =
        registerOutput<InstanceGroupManagerActionsSummaryResponse>(
            'currentActions');
    this.description = registerOutput<String>('description');
    this.distributionPolicy =
        registerOutput<DistributionPolicyResponse>('distributionPolicy');
    this.failoverAction = registerOutput<String>('failoverAction');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.instanceFlexibilityPolicy =
        registerOutput<InstanceGroupManagerInstanceFlexibilityPolicyResponse>(
            'instanceFlexibilityPolicy');
    this.instanceGroup = registerOutput<String>('instanceGroup');
    this.instanceLifecyclePolicy =
        registerOutput<InstanceGroupManagerInstanceLifecyclePolicyResponse>(
            'instanceLifecyclePolicy');
    this.instanceTemplate = registerOutput<String>('instanceTemplate');
    this.kind = registerOutput<String>('kind');
    this.listManagedInstancesResults =
        registerOutput<String>('listManagedInstancesResults');
    this.name = registerOutput<String>('name');
    this.namedPorts = registerOutput<List<NamedPortResponse>>('namedPorts');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.standbyPolicy =
        registerOutput<InstanceGroupManagerStandbyPolicyResponse>(
            'standbyPolicy');
    this.statefulPolicy =
        registerOutput<StatefulPolicyResponse>('statefulPolicy');
    this.status = registerOutput<InstanceGroupManagerStatusResponse>('status');
    this.targetPools = registerOutput<List<String>>('targetPools');
    this.targetSize = registerOutput<int>('targetSize');
    this.targetSizeUnit = registerOutput<String>('targetSizeUnit');
    this.targetStoppedSize = registerOutput<int>('targetStoppedSize');
    this.targetSuspendedSize = registerOutput<int>('targetSuspendedSize');
    this.updatePolicy =
        registerOutput<InstanceGroupManagerUpdatePolicyResponse>(
            'updatePolicy');
    this.versions =
        registerOutput<List<InstanceGroupManagerVersionResponse>>('versions');
    this.zone = registerOutput<String>('zone');
  }
}
