// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

/// The set of arguments for Cluster.
class ClusterEmrArgs {
  /// JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore the provider cannot detect drift from the actual EMR cluster if its value is changed outside the provider.
  final pulumi.Input<String>? additionalInfo;

  /// A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  final pulumi.Input<List<String>>? applications;

  /// An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below.
  final pulumi.Input<ClusterAutoTerminationPolicy>? autoTerminationPolicy;

  /// IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
  final pulumi.Input<String>? autoscalingRole;

  /// Ordered list of bootstrap actions that will be run before Hadoop is started on the cluster nodes. See below.
  final pulumi.Input<List<ClusterBootstrapAction>>? bootstrapActions;

  /// List of configurations supplied for the EMR cluster you are creating. Supply a configuration object for applications to override their default configuration. See [AWS Documentation](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html) for more information.
  final pulumi.Input<String>? configurations;

  /// JSON string for supplying list of configurations for the EMR cluster.
  ///
  /// > **NOTE on `configurations_json`:** If the `Configurations` value is empty then you should skip the `Configurations` field instead of providing an empty list as a value, `"Configurations": []`.
  final pulumi.Input<String>? configurationsJson;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the core node type. Cannot be specified if any `core_instance_group` configuration blocks are set. Detailed below.
  final pulumi.Input<ClusterCoreInstanceFleet>? coreInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [core node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-core).
  final pulumi.Input<ClusterCoreInstanceGroup>? coreInstanceGroup;

  /// Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later.
  final pulumi.Input<String>? customAmiId;

  /// Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
  final pulumi.Input<int>? ebsRootVolumeSize;

  /// Attributes for the EC2 instances running the job flow. See below.
  final pulumi.Input<ClusterEc2Attributes>? ec2Attributes;

  /// Switch on/off run cluster with no steps or when all steps are complete (default is on)
  final pulumi.Input<bool>? keepJobFlowAliveWhenNoSteps;

  /// Kerberos configuration for the cluster. See below.
  final pulumi.Input<ClusterKerberosAttributes>? kerberosAttributes;

  /// List of [step states](https://docs.aws.amazon.com/emr/latest/APIReference/API_StepStatus.html) used to filter returned steps
  final pulumi.Input<List<String>>? listStepsStates;

  /// AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.
  final pulumi.Input<String>? logEncryptionKmsKeyId;

  /// S3 bucket to write the log files of the job flow. If a value is not provided, logs are not created.
  final pulumi.Input<String>? logUri;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the master node type. Cannot be specified if any `master_instance_group` configuration blocks are set. Detailed below.
  final pulumi.Input<ClusterMasterInstanceFleet>? masterInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [master node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-master).
  final pulumi.Input<ClusterMasterInstanceGroup>? masterInstanceGroup;

  /// Name of the job flow.
  final pulumi.Input<String>? name;

  /// Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.
  final pulumi.Input<String>? osReleaseLabel;

  /// The specified placement group configuration for an Amazon EMR cluster.
  final pulumi.Input<List<ClusterPlacementGroupConfig>>? placementGroupConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Release label for the Amazon EMR release.
  final pulumi.Input<String> releaseLabel;

  /// Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an `instance group` is resized.
  final pulumi.Input<String>? scaleDownBehavior;

  /// Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with `release_label` 4.8.0 or greater.
  final pulumi.Input<String>? securityConfiguration;

  /// IAM role that will be assumed by the Amazon EMR service to access AWS resources.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceRole;

  /// Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with `release_label` 5.28.0 or greater (default is 1).
  final pulumi.Input<int>? stepConcurrencyLevel;

  /// List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle resource options block with `ignoreChanges` if other steps are being managed outside of this provider.
  final pulumi.Input<List<ClusterStep>>? steps;

  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Switch on/off termination protection (default is `false`, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to `false`.
  final pulumi.Input<bool>? terminationProtection;

  /// Whether whether Amazon EMR should gracefully replace core nodes that have degraded within the cluster. Default value is `false`.
  final pulumi.Input<bool>? unhealthyNodeReplacement;

  /// Whether the job flow is visible to all IAM users of the AWS account associated with the job flow. Default value is `true`.
  ///
  /// **NOTE:** As per the [Amazon EMR API Reference](https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html#EMR-RunJobFlow-request-VisibleToAllUsers), this argument is no longer supported. Do not set this argument, particularly to `false`, as it would lead to perpetual differences.
  final pulumi.Input<bool>? visibleToAllUsers;

  ClusterEmrArgs({
    this.additionalInfo,
    this.applications,
    this.autoTerminationPolicy,
    this.autoscalingRole,
    this.bootstrapActions,
    this.configurations,
    this.configurationsJson,
    this.coreInstanceFleet,
    this.coreInstanceGroup,
    this.customAmiId,
    this.ebsRootVolumeSize,
    this.ec2Attributes,
    this.keepJobFlowAliveWhenNoSteps,
    this.kerberosAttributes,
    this.listStepsStates,
    this.logEncryptionKmsKeyId,
    this.logUri,
    this.masterInstanceFleet,
    this.masterInstanceGroup,
    this.name,
    this.osReleaseLabel,
    this.placementGroupConfigs,
    this.region,
    required this.releaseLabel,
    this.scaleDownBehavior,
    this.securityConfiguration,
    required this.serviceRole,
    this.stepConcurrencyLevel,
    this.steps,
    this.tags,
    this.terminationProtection,
    this.unhealthyNodeReplacement,
    this.visibleToAllUsers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalInfoValue = additionalInfo;
    if (additionalInfoValue != null) {
      map['additionalInfo'] = additionalInfoValue;
    }
    final applicationsValue = applications;
    if (applicationsValue != null) {
      map['applications'] = applicationsValue;
    }
    final autoTerminationPolicyValue = autoTerminationPolicy;
    if (autoTerminationPolicyValue != null) {
      map['autoTerminationPolicy'] = pulumi.Input.mapOptionalInputValue<
              ClusterAutoTerminationPolicy, Map<String, dynamic>>(
          autoTerminationPolicyValue, (value) => value.toMap());
    }
    final autoscalingRoleValue = autoscalingRole;
    if (autoscalingRoleValue != null) {
      map['autoscalingRole'] = autoscalingRoleValue;
    }
    final bootstrapActionsValue = bootstrapActions;
    if (bootstrapActionsValue != null) {
      map['bootstrapActions'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterBootstrapAction>, List<Map<String, dynamic>>>(
          bootstrapActionsValue,
          (value) => pulumi.Input.encodeList<ClusterBootstrapAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final configurationsValue = configurations;
    if (configurationsValue != null) {
      map['configurations'] = configurationsValue;
    }
    final configurationsJsonValue = configurationsJson;
    if (configurationsJsonValue != null) {
      map['configurationsJson'] = configurationsJsonValue;
    }
    final coreInstanceFleetValue = coreInstanceFleet;
    if (coreInstanceFleetValue != null) {
      map['coreInstanceFleet'] = pulumi.Input.mapOptionalInputValue<
              ClusterCoreInstanceFleet, Map<String, dynamic>>(
          coreInstanceFleetValue, (value) => value.toMap());
    }
    final coreInstanceGroupValue = coreInstanceGroup;
    if (coreInstanceGroupValue != null) {
      map['coreInstanceGroup'] = pulumi.Input.mapOptionalInputValue<
              ClusterCoreInstanceGroup, Map<String, dynamic>>(
          coreInstanceGroupValue, (value) => value.toMap());
    }
    final customAmiIdValue = customAmiId;
    if (customAmiIdValue != null) {
      map['customAmiId'] = customAmiIdValue;
    }
    final ebsRootVolumeSizeValue = ebsRootVolumeSize;
    if (ebsRootVolumeSizeValue != null) {
      map['ebsRootVolumeSize'] = ebsRootVolumeSizeValue;
    }
    final ec2AttributesValue = ec2Attributes;
    if (ec2AttributesValue != null) {
      map['ec2Attributes'] = pulumi.Input.mapOptionalInputValue<
          ClusterEc2Attributes,
          Map<String, dynamic>>(ec2AttributesValue, (value) => value.toMap());
    }
    final keepJobFlowAliveWhenNoStepsValue = keepJobFlowAliveWhenNoSteps;
    if (keepJobFlowAliveWhenNoStepsValue != null) {
      map['keepJobFlowAliveWhenNoSteps'] = keepJobFlowAliveWhenNoStepsValue;
    }
    final kerberosAttributesValue = kerberosAttributes;
    if (kerberosAttributesValue != null) {
      map['kerberosAttributes'] = pulumi.Input.mapOptionalInputValue<
              ClusterKerberosAttributes, Map<String, dynamic>>(
          kerberosAttributesValue, (value) => value.toMap());
    }
    final listStepsStatesValue = listStepsStates;
    if (listStepsStatesValue != null) {
      map['listStepsStates'] = listStepsStatesValue;
    }
    final logEncryptionKmsKeyIdValue = logEncryptionKmsKeyId;
    if (logEncryptionKmsKeyIdValue != null) {
      map['logEncryptionKmsKeyId'] = logEncryptionKmsKeyIdValue;
    }
    final logUriValue = logUri;
    if (logUriValue != null) {
      map['logUri'] = logUriValue;
    }
    final masterInstanceFleetValue = masterInstanceFleet;
    if (masterInstanceFleetValue != null) {
      map['masterInstanceFleet'] = pulumi.Input.mapOptionalInputValue<
              ClusterMasterInstanceFleet, Map<String, dynamic>>(
          masterInstanceFleetValue, (value) => value.toMap());
    }
    final masterInstanceGroupValue = masterInstanceGroup;
    if (masterInstanceGroupValue != null) {
      map['masterInstanceGroup'] = pulumi.Input.mapOptionalInputValue<
              ClusterMasterInstanceGroup, Map<String, dynamic>>(
          masterInstanceGroupValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final osReleaseLabelValue = osReleaseLabel;
    if (osReleaseLabelValue != null) {
      map['osReleaseLabel'] = osReleaseLabelValue;
    }
    final placementGroupConfigsValue = placementGroupConfigs;
    if (placementGroupConfigsValue != null) {
      map['placementGroupConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ClusterPlacementGroupConfig>, List<Map<String, dynamic>>>(
          placementGroupConfigsValue,
          (value) => pulumi.Input.encodeList<ClusterPlacementGroupConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['releaseLabel'] = releaseLabel;
    final scaleDownBehaviorValue = scaleDownBehavior;
    if (scaleDownBehaviorValue != null) {
      map['scaleDownBehavior'] = scaleDownBehaviorValue;
    }
    final securityConfigurationValue = securityConfiguration;
    if (securityConfigurationValue != null) {
      map['securityConfiguration'] = securityConfigurationValue;
    }
    map['serviceRole'] = serviceRole;
    final stepConcurrencyLevelValue = stepConcurrencyLevel;
    if (stepConcurrencyLevelValue != null) {
      map['stepConcurrencyLevel'] = stepConcurrencyLevelValue;
    }
    final stepsValue = steps;
    if (stepsValue != null) {
      map['steps'] = pulumi.Input.mapOptionalInputValue<List<ClusterStep>,
              List<Map<String, dynamic>>>(
          stepsValue,
          (value) => pulumi.Input.encodeList<ClusterStep, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final terminationProtectionValue = terminationProtection;
    if (terminationProtectionValue != null) {
      map['terminationProtection'] = terminationProtectionValue;
    }
    final unhealthyNodeReplacementValue = unhealthyNodeReplacement;
    if (unhealthyNodeReplacementValue != null) {
      map['unhealthyNodeReplacement'] = unhealthyNodeReplacementValue;
    }
    final visibleToAllUsersValue = visibleToAllUsers;
    if (visibleToAllUsersValue != null) {
      map['visibleToAllUsers'] = visibleToAllUsersValue;
    }
    return map;
  }

  factory ClusterEmrArgs.fromMap(Map<String, dynamic> map) {
    return ClusterEmrArgs(
      additionalInfo:
          pulumi.Input.asOptionalInput<String>(map['additionalInfo']),
      applications:
          pulumi.Input.asOptionalInput<List<String>>(map['applications']),
      autoTerminationPolicy:
          pulumi.Input.asOptionalInput<ClusterAutoTerminationPolicy>(
              map['autoTerminationPolicy']),
      autoscalingRole:
          pulumi.Input.asOptionalInput<String>(map['autoscalingRole']),
      bootstrapActions:
          pulumi.Input.asOptionalInput<List<ClusterBootstrapAction>>(
              map['bootstrapActions']),
      configurations:
          pulumi.Input.asOptionalInput<String>(map['configurations']),
      configurationsJson:
          pulumi.Input.asOptionalInput<String>(map['configurationsJson']),
      coreInstanceFleet: pulumi.Input.asOptionalInput<ClusterCoreInstanceFleet>(
          map['coreInstanceFleet']),
      coreInstanceGroup: pulumi.Input.asOptionalInput<ClusterCoreInstanceGroup>(
          map['coreInstanceGroup']),
      customAmiId: pulumi.Input.asOptionalInput<String>(map['customAmiId']),
      ebsRootVolumeSize:
          pulumi.Input.asOptionalInput<int>(map['ebsRootVolumeSize']),
      ec2Attributes: pulumi.Input.asOptionalInput<ClusterEc2Attributes>(
          map['ec2Attributes']),
      keepJobFlowAliveWhenNoSteps: pulumi.Input.asOptionalInput<bool>(
          map['keepJobFlowAliveWhenNoSteps']),
      kerberosAttributes:
          pulumi.Input.asOptionalInput<ClusterKerberosAttributes>(
              map['kerberosAttributes']),
      listStepsStates:
          pulumi.Input.asOptionalInput<List<String>>(map['listStepsStates']),
      logEncryptionKmsKeyId:
          pulumi.Input.asOptionalInput<String>(map['logEncryptionKmsKeyId']),
      logUri: pulumi.Input.asOptionalInput<String>(map['logUri']),
      masterInstanceFleet:
          pulumi.Input.asOptionalInput<ClusterMasterInstanceFleet>(
              map['masterInstanceFleet']),
      masterInstanceGroup:
          pulumi.Input.asOptionalInput<ClusterMasterInstanceGroup>(
              map['masterInstanceGroup']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      osReleaseLabel:
          pulumi.Input.asOptionalInput<String>(map['osReleaseLabel']),
      placementGroupConfigs:
          pulumi.Input.asOptionalInput<List<ClusterPlacementGroupConfig>>(
              map['placementGroupConfigs']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      releaseLabel: pulumi.Input.asInput<String>(map['releaseLabel']),
      scaleDownBehavior:
          pulumi.Input.asOptionalInput<String>(map['scaleDownBehavior']),
      securityConfiguration:
          pulumi.Input.asOptionalInput<String>(map['securityConfiguration']),
      serviceRole: pulumi.Input.asInput<String>(map['serviceRole']),
      stepConcurrencyLevel:
          pulumi.Input.asOptionalInput<int>(map['stepConcurrencyLevel']),
      steps: pulumi.Input.asOptionalInput<List<ClusterStep>>(map['steps']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      terminationProtection:
          pulumi.Input.asOptionalInput<bool>(map['terminationProtection']),
      unhealthyNodeReplacement:
          pulumi.Input.asOptionalInput<bool>(map['unhealthyNodeReplacement']),
      visibleToAllUsers:
          pulumi.Input.asOptionalInput<bool>(map['visibleToAllUsers']),
    );
  }
}
