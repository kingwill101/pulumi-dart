import 'package:pulumi/pulumi.dart';
import '../cluster_auto_termination_policy/cluster_auto_termination_policy.dart';
import '../cluster_bootstrap_action/cluster_bootstrap_action.dart';
import '../cluster_core_instance_fleet/cluster_core_instance_fleet.dart';
import '../cluster_core_instance_group/cluster_core_instance_group.dart';
import '../cluster_ec2_attributes/cluster_ec2_attributes.dart';
import '../cluster_kerberos_attributes/cluster_kerberos_attributes.dart';
import '../cluster_master_instance_fleet/cluster_master_instance_fleet.dart';
import '../cluster_master_instance_group/cluster_master_instance_group.dart';
import '../cluster_placement_group_config/cluster_placement_group_config.dart';
import '../cluster_step/cluster_step.dart';
import 'cluster_args8.dart';

/// Provides an Elastic MapReduce Cluster, a web service that makes it easy to process large amounts of data efficiently. See [Amazon Elastic MapReduce Documentation](https://aws.amazon.com/documentation/elastic-mapreduce/) for more information.
///
/// To configure [Instance Groups](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for [task nodes](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-task), see the `aws.emr.InstanceGroup` resource.
///
/// ## Example Usage
///
///
///
/// The `aws.emr.Cluster` resource typically requires two IAM roles, one for the EMR Cluster to use as a service role, and another is assigned to every EC2 instance in a cluster and each application process that runs on a cluster assumes this role for permissions to interact with other AWS services. An additional role, the Auto Scaling role, is required if your cluster uses automatic scaling in Amazon EMR.
///
/// The default AWS managed EMR service role is called `EMR_DefaultRole` with Amazon managed policy `AmazonEMRServicePolicy_v2` attached. The name of default instance profile role is `EMR_EC2_DefaultRole` with default managed policy `AmazonElasticMapReduceforEC2Role` attached, but it is on the path to deprecation and will not be replaced with another default managed policy. You'll need to create and specify an instance profile to replace the deprecated role and default policy. See the [Configure IAM service roles for Amazon EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-iam-roles.html) guide for more information on these IAM roles. There is also a fully-bootable example Pulumi configuration at the bottom of this page.
///
/// ### Instance Fleet
///
///
///
/// ### Enable Debug Logging
///
/// [Debug logging in EMR](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-debugging.html) is implemented as a step. It is highly recommended that you utilize the resource options configuration with `ignoreChanges` if other steps are being managed outside of this provider.
///
///
///
/// ### Multiple Node Master Instance Group
///
/// Available in EMR version 5.23.0 and later, an EMR Cluster can be launched with three master nodes for high availability. Additional information about this functionality and its requirements can be found in the [EMR Management Guide](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-ha.html).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR clusters using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/cluster:Cluster cluster j-123456ABCDEF
/// ```
///
/// Since the API does not return the actual values for Kerberos configurations, environments with those options set will need to use the `lifecycle` configuration block `ignore_changes` argument available to all Pulumi resources to prevent perpetual differences. For example:
class Cluster8 extends CustomResource {
  /// JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore the provider cannot detect drift from the actual EMR cluster if its value is changed outside the provider.
  late final Output<String?> additionalInfo;

  /// A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  late final Output<List<String>?> applications;

  /// ARN of the cluster.
  late final Output<String> arn;

  /// An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below.
  late final Output<ClusterAutoTerminationPolicy?> autoTerminationPolicy;

  /// IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
  late final Output<String?> autoscalingRole;

  /// Ordered list of bootstrap actions that will be run before Hadoop is started on the cluster nodes. See below.
  late final Output<List<ClusterBootstrapAction>?> bootstrapActions;
  late final Output<String> clusterState;

  /// List of configurations supplied for the EMR cluster you are creating. Supply a configuration object for applications to override their default configuration. See [AWS Documentation](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html) for more information.
  late final Output<String?> configurations;

  /// JSON string for supplying list of configurations for the EMR cluster.
  ///
  /// > **NOTE on `configurations_json`:** If the `Configurations` value is empty then you should skip the `Configurations` field instead of providing an empty list as a value, `"Configurations": []`.
  late final Output<String?> configurationsJson;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the core node type. Cannot be specified if any `core_instance_group` configuration blocks are set. Detailed below.
  late final Output<ClusterCoreInstanceFleet> coreInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [core node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-core).
  late final Output<ClusterCoreInstanceGroup> coreInstanceGroup;

  /// Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later.
  late final Output<String?> customAmiId;

  /// Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
  late final Output<int?> ebsRootVolumeSize;

  /// Attributes for the EC2 instances running the job flow. See below.
  late final Output<ClusterEc2Attributes?> ec2Attributes;

  /// Switch on/off run cluster with no steps or when all steps are complete (default is on)
  late final Output<bool> keepJobFlowAliveWhenNoSteps;

  /// Kerberos configuration for the cluster. See below.
  late final Output<ClusterKerberosAttributes?> kerberosAttributes;

  /// List of [step states](https://docs.aws.amazon.com/emr/latest/APIReference/API_StepStatus.html) used to filter returned steps
  late final Output<List<String>?> listStepsStates;

  /// AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.
  late final Output<String?> logEncryptionKmsKeyId;

  /// S3 bucket to write the log files of the job flow. If a value is not provided, logs are not created.
  late final Output<String?> logUri;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the master node type. Cannot be specified if any `master_instance_group` configuration blocks are set. Detailed below.
  late final Output<ClusterMasterInstanceFleet> masterInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [master node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-master).
  late final Output<ClusterMasterInstanceGroup> masterInstanceGroup;

  /// The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.
  late final Output<String> masterPublicDns;

  /// Name of the job flow.
  late final Output<String> name;

  /// Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.
  late final Output<String?> osReleaseLabel;

  /// The specified placement group configuration for an Amazon EMR cluster.
  late final Output<List<ClusterPlacementGroupConfig>?> placementGroupConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Release label for the Amazon EMR release.
  late final Output<String> releaseLabel;

  /// Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an `instance group` is resized.
  late final Output<String> scaleDownBehavior;

  /// Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with `release_label` 4.8.0 or greater.
  late final Output<String?> securityConfiguration;

  /// IAM role that will be assumed by the Amazon EMR service to access AWS resources.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceRole;

  /// Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with `release_label` 5.28.0 or greater (default is 1).
  late final Output<int?> stepConcurrencyLevel;

  /// List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle resource options block with `ignoreChanges` if other steps are being managed outside of this provider.
  late final Output<List<ClusterStep>> steps;

  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Switch on/off termination protection (default is `false`, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to `false`.
  late final Output<bool> terminationProtection;

  /// Whether whether Amazon EMR should gracefully replace core nodes that have degraded within the cluster. Default value is `false`.
  late final Output<bool?> unhealthyNodeReplacement;

  /// Whether the job flow is visible to all IAM users of the AWS account associated with the job flow. Default value is `true`.
  ///
  /// **NOTE:** As per the [Amazon EMR API Reference](https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html#EMR-RunJobFlow-request-VisibleToAllUsers), this argument is no longer supported. Do not set this argument, particularly to `false`, as it would lead to perpetual differences.
  late final Output<bool?> visibleToAllUsers;

  Cluster8(
    String name, {
    ClusterArgs8? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.additionalInfo = registerOutput<String?>('additionalInfo');
    this.applications = registerOutput<List<String>?>('applications');
    this.arn = registerOutput<String>('arn');
    this.autoTerminationPolicy =
        registerOutput<ClusterAutoTerminationPolicy?>('autoTerminationPolicy');
    this.autoscalingRole = registerOutput<String?>('autoscalingRole');
    this.bootstrapActions =
        registerOutput<List<ClusterBootstrapAction>?>('bootstrapActions');
    this.clusterState = registerOutput<String>('clusterState');
    this.configurations = registerOutput<String?>('configurations');
    this.configurationsJson = registerOutput<String?>('configurationsJson');
    this.coreInstanceFleet =
        registerOutput<ClusterCoreInstanceFleet>('coreInstanceFleet');
    this.coreInstanceGroup =
        registerOutput<ClusterCoreInstanceGroup>('coreInstanceGroup');
    this.customAmiId = registerOutput<String?>('customAmiId');
    this.ebsRootVolumeSize = registerOutput<int?>('ebsRootVolumeSize');
    this.ec2Attributes = registerOutput<ClusterEc2Attributes?>('ec2Attributes');
    this.keepJobFlowAliveWhenNoSteps =
        registerOutput<bool>('keepJobFlowAliveWhenNoSteps');
    this.kerberosAttributes =
        registerOutput<ClusterKerberosAttributes?>('kerberosAttributes');
    this.listStepsStates = registerOutput<List<String>?>('listStepsStates');
    this.logEncryptionKmsKeyId =
        registerOutput<String?>('logEncryptionKmsKeyId');
    this.logUri = registerOutput<String?>('logUri');
    this.masterInstanceFleet =
        registerOutput<ClusterMasterInstanceFleet>('masterInstanceFleet');
    this.masterInstanceGroup =
        registerOutput<ClusterMasterInstanceGroup>('masterInstanceGroup');
    this.masterPublicDns = registerOutput<String>('masterPublicDns');
    this.name = registerOutput<String>('name');
    this.osReleaseLabel = registerOutput<String?>('osReleaseLabel');
    this.placementGroupConfigs =
        registerOutput<List<ClusterPlacementGroupConfig>?>(
            'placementGroupConfigs');
    this.region = registerOutput<String>('region');
    this.releaseLabel = registerOutput<String>('releaseLabel');
    this.scaleDownBehavior = registerOutput<String>('scaleDownBehavior');
    this.securityConfiguration =
        registerOutput<String?>('securityConfiguration');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.stepConcurrencyLevel = registerOutput<int?>('stepConcurrencyLevel');
    this.steps = registerOutput<List<ClusterStep>>('steps');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminationProtection = registerOutput<bool>('terminationProtection');
    this.unhealthyNodeReplacement =
        registerOutput<bool?>('unhealthyNodeReplacement');
    this.visibleToAllUsers = registerOutput<bool?>('visibleToAllUsers');
  }
}
