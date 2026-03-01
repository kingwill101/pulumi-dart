// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_auto_termination_policy.dart';
import 'cluster_bootstrap_action.dart';
import 'cluster_core_instance_fleet.dart';
import 'cluster_core_instance_group.dart';
import 'cluster_ec2_attributes.dart';
import 'cluster_kerberos_attributes.dart';
import 'cluster_master_instance_fleet.dart';
import 'cluster_master_instance_group.dart';
import 'cluster_placement_group_config.dart';
import 'cluster_step.dart';

/// {@template pulumi_emr_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_emr_cluster_cluster_args_doc}
class ClusterArgs {
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
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const cluster = new aws.emr.Cluster("cluster", {configurationsJson: `[
  /// {
  /// \\"Classification\\": \\"hadoop-env\\",
  /// \\"Configurations\\": [
  /// {
  /// \\"Classification\\": \\"export\\",
  /// \\"Properties\\": {
  /// \\"JAVA_HOME\\": \\"/usr/lib/jvm/java-1.8.0\\"
  /// }
  /// }
  /// ],
  /// \\"Properties\\": {}
  /// }
  /// ]
  /// `});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// cluster = aws.emr.Cluster("cluster", configurations_json="""[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// """)
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var cluster = new Aws.Emr.Cluster("cluster", new()
  ///     {
  ///         ConfigurationsJson = @"[
  /// {
  /// \""Classification\"": \""hadoop-env\"",
  /// \""Configurations\"": [
  /// {
  /// \""Classification\"": \""export\"",
  /// \""Properties\"": {
  /// \""JAVA_HOME\"": \""/usr/lib/jvm/java-1.8.0\""
  /// }
  /// }
  /// ],
  /// \""Properties\"": {}
  /// }
  /// ]
  /// ",
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := emr.NewCluster(ctx, "cluster", &emr.ClusterArgs{
  /// 			ConfigurationsJson: pulumi.String(`[
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  /// `),
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		return nil
  /// 	})
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.emr.Cluster;
  /// import com.pulumi.aws.emr.ClusterArgs;
  /// import java.util.List;
  /// import java.util.ArrayList;
  /// import java.util.Map;
  /// import java.io.File;
  /// import java.nio.file.Files;
  /// import java.nio.file.Paths;
  ///
  /// public class App {
  ///     public static void main(String[] args) {
  ///         Pulumi.run(App::stack);
  ///     }
  ///
  ///     public static void stack(Context ctx) {
  ///         var cluster = new Cluster("cluster", ClusterArgs.builder()
  ///             .configurationsJson("""
  /// [
  /// {
  /// \"Classification\": \"hadoop-env\",
  /// \"Configurations\": [
  /// {
  /// \"Classification\": \"export\",
  /// \"Properties\": {
  /// \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  /// }
  /// }
  /// ],
  /// \"Properties\": {}
  /// }
  /// ]
  ///             """)
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   cluster:
  ///     type: aws:emr:Cluster
  ///     properties:
  ///       configurationsJson: |
  ///         [
  ///         {
  ///         \"Classification\": \"hadoop-env\",
  ///         \"Configurations\": [
  ///         {
  ///         \"Classification\": \"export\",
  ///         \"Properties\": {
  ///         \"JAVA_HOME\": \"/usr/lib/jvm/java-1.8.0\"
  ///         }
  ///         }
  ///         ],
  ///         \"Properties\": {}
  ///         }
  ///         ]
  /// ```
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

  /// Creates a new [ClusterArgs].
  /// [additionalInfo] JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore the provider cannot detect drift from the actual EMR cluster if its value is changed outside the provider.
  /// [applications] A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  /// [autoTerminationPolicy] An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below.
  /// [autoscalingRole] IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
  /// [bootstrapActions] Ordered list of bootstrap actions that will be run before Hadoop is started on the cluster nodes. See below.
  /// [configurations] List of configurations supplied for the EMR cluster you are creating. Supply a configuration object for applications to override their default configuration. See [AWS Documentation](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html) for more information.
  /// [configurationsJson] JSON string for supplying list of configurations for the EMR cluster.
  /// [coreInstanceFleet] Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the core node type. Cannot be specified if any `core_instance_group` configuration blocks are set. Detailed below.
  /// [coreInstanceGroup] Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [core node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-core).
  /// [customAmiId] Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later.
  /// [ebsRootVolumeSize] Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
  /// [ec2Attributes] Attributes for the EC2 instances running the job flow. See below.
  /// [keepJobFlowAliveWhenNoSteps] Switch on/off run cluster with no steps or when all steps are complete (default is on)
  /// [kerberosAttributes] Kerberos configuration for the cluster. See below.
  /// [listStepsStates] List of [step states](https://docs.aws.amazon.com/emr/latest/APIReference/API_StepStatus.html) used to filter returned steps
  /// [logEncryptionKmsKeyId] AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.
  /// [logUri] S3 bucket to write the log files of the job flow. If a value is not provided, logs are not created.
  /// [masterInstanceFleet] Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the master node type. Cannot be specified if any `master_instance_group` configuration blocks are set. Detailed below.
  /// [masterInstanceGroup] Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [master node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-master).
  /// [name] Name of the job flow.
  /// [osReleaseLabel] Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.
  /// [placementGroupConfigs] The specified placement group configuration for an Amazon EMR cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [releaseLabel] Release label for the Amazon EMR release.
  /// [scaleDownBehavior] Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an `instance group` is resized.
  /// [securityConfiguration] Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with `release_label` 4.8.0 or greater.
  /// [serviceRole] IAM role that will be assumed by the Amazon EMR service to access AWS resources.
  /// [stepConcurrencyLevel] Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with `release_label` 5.28.0 or greater (default is 1).
  /// [steps] List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle resource options block with `ignoreChanges` if other steps are being managed outside of this provider.
  /// [tags] list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [terminationProtection] Switch on/off termination protection (default is `false`, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to `false`.
  /// [unhealthyNodeReplacement] Whether whether Amazon EMR should gracefully replace core nodes that have degraded within the cluster. Default value is `false`.
  /// [visibleToAllUsers] Whether the job flow is visible to all IAM users of the AWS account associated with the job flow. Default value is `true`.
  ClusterArgs({
    pulumi.Output<String>? additionalInfo,
    pulumi.Output<List<String>>? applications,
    pulumi.Output<ClusterAutoTerminationPolicy>? autoTerminationPolicy,
    pulumi.Output<String>? autoscalingRole,
    pulumi.Output<List<ClusterBootstrapAction>>? bootstrapActions,
    pulumi.Output<String>? configurations,
    pulumi.Output<String>? configurationsJson,
    pulumi.Output<ClusterCoreInstanceFleet>? coreInstanceFleet,
    pulumi.Output<ClusterCoreInstanceGroup>? coreInstanceGroup,
    pulumi.Output<String>? customAmiId,
    pulumi.Output<int>? ebsRootVolumeSize,
    pulumi.Output<ClusterEc2Attributes>? ec2Attributes,
    pulumi.Output<bool>? keepJobFlowAliveWhenNoSteps,
    pulumi.Output<ClusterKerberosAttributes>? kerberosAttributes,
    pulumi.Output<List<String>>? listStepsStates,
    pulumi.Output<String>? logEncryptionKmsKeyId,
    pulumi.Output<String>? logUri,
    pulumi.Output<ClusterMasterInstanceFleet>? masterInstanceFleet,
    pulumi.Output<ClusterMasterInstanceGroup>? masterInstanceGroup,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osReleaseLabel,
    pulumi.Output<List<ClusterPlacementGroupConfig>>? placementGroupConfigs,
    pulumi.Output<String>? region,
    required pulumi.Output<String> releaseLabel,
    pulumi.Output<String>? scaleDownBehavior,
    pulumi.Output<String>? securityConfiguration,
    required pulumi.Output<String> serviceRole,
    pulumi.Output<int>? stepConcurrencyLevel,
    pulumi.Output<List<ClusterStep>>? steps,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? terminationProtection,
    pulumi.Output<bool>? unhealthyNodeReplacement,
    pulumi.Output<bool>? visibleToAllUsers,
  }) :
      additionalInfo = pulumi.Input.asOptionalInput<String>(additionalInfo),
      applications = pulumi.Input.asOptionalInput<List<String>>(applications),
      autoTerminationPolicy = pulumi.Input.asOptionalInput<ClusterAutoTerminationPolicy>(autoTerminationPolicy),
      autoscalingRole = pulumi.Input.asOptionalInput<String>(autoscalingRole),
      bootstrapActions = pulumi.Input.asOptionalInput<List<ClusterBootstrapAction>>(bootstrapActions),
      configurations = pulumi.Input.asOptionalInput<String>(configurations),
      configurationsJson = pulumi.Input.asOptionalInput<String>(configurationsJson),
      coreInstanceFleet = pulumi.Input.asOptionalInput<ClusterCoreInstanceFleet>(coreInstanceFleet),
      coreInstanceGroup = pulumi.Input.asOptionalInput<ClusterCoreInstanceGroup>(coreInstanceGroup),
      customAmiId = pulumi.Input.asOptionalInput<String>(customAmiId),
      ebsRootVolumeSize = pulumi.Input.asOptionalInput<int>(ebsRootVolumeSize),
      ec2Attributes = pulumi.Input.asOptionalInput<ClusterEc2Attributes>(ec2Attributes),
      keepJobFlowAliveWhenNoSteps = pulumi.Input.asOptionalInput<bool>(keepJobFlowAliveWhenNoSteps),
      kerberosAttributes = pulumi.Input.asOptionalInput<ClusterKerberosAttributes>(kerberosAttributes),
      listStepsStates = pulumi.Input.asOptionalInput<List<String>>(listStepsStates),
      logEncryptionKmsKeyId = pulumi.Input.asOptionalInput<String>(logEncryptionKmsKeyId),
      logUri = pulumi.Input.asOptionalInput<String>(logUri),
      masterInstanceFleet = pulumi.Input.asOptionalInput<ClusterMasterInstanceFleet>(masterInstanceFleet),
      masterInstanceGroup = pulumi.Input.asOptionalInput<ClusterMasterInstanceGroup>(masterInstanceGroup),
      name = pulumi.Input.asOptionalInput<String>(name),
      osReleaseLabel = pulumi.Input.asOptionalInput<String>(osReleaseLabel),
      placementGroupConfigs = pulumi.Input.asOptionalInput<List<ClusterPlacementGroupConfig>>(placementGroupConfigs),
      region = pulumi.Input.asOptionalInput<String>(region),
      releaseLabel = pulumi.Input.asInput<String>(releaseLabel),
      scaleDownBehavior = pulumi.Input.asOptionalInput<String>(scaleDownBehavior),
      securityConfiguration = pulumi.Input.asOptionalInput<String>(securityConfiguration),
      serviceRole = pulumi.Input.asInput<String>(serviceRole),
      stepConcurrencyLevel = pulumi.Input.asOptionalInput<int>(stepConcurrencyLevel),
      steps = pulumi.Input.asOptionalInput<List<ClusterStep>>(steps),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationProtection = pulumi.Input.asOptionalInput<bool>(terminationProtection),
      unhealthyNodeReplacement = pulumi.Input.asOptionalInput<bool>(unhealthyNodeReplacement),
      visibleToAllUsers = pulumi.Input.asOptionalInput<bool>(visibleToAllUsers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo,
      'applications': ?applications,
      'autoTerminationPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterAutoTerminationPolicy, Map<String, dynamic>>(autoTerminationPolicy, (value) => value.toMap()),
      'autoscalingRole': ?autoscalingRole,
      'bootstrapActions': ?pulumi.Input.mapOptionalInputValue<List<ClusterBootstrapAction>, List<Map<String, dynamic>>>(bootstrapActions, (value) => pulumi.Input.encodeList<ClusterBootstrapAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurations': ?configurations,
      'configurationsJson': ?configurationsJson,
      'coreInstanceFleet': ?pulumi.Input.mapOptionalInputValue<ClusterCoreInstanceFleet, Map<String, dynamic>>(coreInstanceFleet, (value) => value.toMap()),
      'coreInstanceGroup': ?pulumi.Input.mapOptionalInputValue<ClusterCoreInstanceGroup, Map<String, dynamic>>(coreInstanceGroup, (value) => value.toMap()),
      'customAmiId': ?customAmiId,
      'ebsRootVolumeSize': ?ebsRootVolumeSize,
      'ec2Attributes': ?pulumi.Input.mapOptionalInputValue<ClusterEc2Attributes, Map<String, dynamic>>(ec2Attributes, (value) => value.toMap()),
      'keepJobFlowAliveWhenNoSteps': ?keepJobFlowAliveWhenNoSteps,
      'kerberosAttributes': ?pulumi.Input.mapOptionalInputValue<ClusterKerberosAttributes, Map<String, dynamic>>(kerberosAttributes, (value) => value.toMap()),
      'listStepsStates': ?listStepsStates,
      'logEncryptionKmsKeyId': ?logEncryptionKmsKeyId,
      'logUri': ?logUri,
      'masterInstanceFleet': ?pulumi.Input.mapOptionalInputValue<ClusterMasterInstanceFleet, Map<String, dynamic>>(masterInstanceFleet, (value) => value.toMap()),
      'masterInstanceGroup': ?pulumi.Input.mapOptionalInputValue<ClusterMasterInstanceGroup, Map<String, dynamic>>(masterInstanceGroup, (value) => value.toMap()),
      'name': ?name,
      'osReleaseLabel': ?osReleaseLabel,
      'placementGroupConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterPlacementGroupConfig>, List<Map<String, dynamic>>>(placementGroupConfigs, (value) => pulumi.Input.encodeList<ClusterPlacementGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'releaseLabel': releaseLabel,
      'scaleDownBehavior': ?scaleDownBehavior,
      'securityConfiguration': ?securityConfiguration,
      'serviceRole': serviceRole,
      'stepConcurrencyLevel': ?stepConcurrencyLevel,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<ClusterStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<ClusterStep, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'terminationProtection': ?terminationProtection,
      'unhealthyNodeReplacement': ?unhealthyNodeReplacement,
      'visibleToAllUsers': ?visibleToAllUsers,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      additionalInfo: map['additionalInfo'] == null ? null : pulumi.Output.create<String>(map['additionalInfo'] as String),
      applications: map['applications'] == null ? null : pulumi.Output.create<List<String>>((map['applications'] as List).cast<String>()),
      autoTerminationPolicy: map['autoTerminationPolicy'] == null ? null : pulumi.Output.create<ClusterAutoTerminationPolicy>(ClusterAutoTerminationPolicy.fromMap((map['autoTerminationPolicy'] as Map).cast<String, dynamic>())),
      autoscalingRole: map['autoscalingRole'] == null ? null : pulumi.Output.create<String>(map['autoscalingRole'] as String),
      bootstrapActions: map['bootstrapActions'] == null ? null : pulumi.Output.create<List<ClusterBootstrapAction>>(pulumi.Input.decodeList<ClusterBootstrapAction>(map['bootstrapActions'], (value) => ClusterBootstrapAction.fromMap((value as Map).cast<String, dynamic>()))),
      configurations: map['configurations'] == null ? null : pulumi.Output.create<String>(map['configurations'] as String),
      configurationsJson: map['configurationsJson'] == null ? null : pulumi.Output.create<String>(map['configurationsJson'] as String),
      coreInstanceFleet: map['coreInstanceFleet'] == null ? null : pulumi.Output.create<ClusterCoreInstanceFleet>(ClusterCoreInstanceFleet.fromMap((map['coreInstanceFleet'] as Map).cast<String, dynamic>())),
      coreInstanceGroup: map['coreInstanceGroup'] == null ? null : pulumi.Output.create<ClusterCoreInstanceGroup>(ClusterCoreInstanceGroup.fromMap((map['coreInstanceGroup'] as Map).cast<String, dynamic>())),
      customAmiId: map['customAmiId'] == null ? null : pulumi.Output.create<String>(map['customAmiId'] as String),
      ebsRootVolumeSize: map['ebsRootVolumeSize'] == null ? null : pulumi.Output.create<int>(map['ebsRootVolumeSize'] as int),
      ec2Attributes: map['ec2Attributes'] == null ? null : pulumi.Output.create<ClusterEc2Attributes>(ClusterEc2Attributes.fromMap((map['ec2Attributes'] as Map).cast<String, dynamic>())),
      keepJobFlowAliveWhenNoSteps: map['keepJobFlowAliveWhenNoSteps'] == null ? null : pulumi.Output.create<bool>(map['keepJobFlowAliveWhenNoSteps'] as bool),
      kerberosAttributes: map['kerberosAttributes'] == null ? null : pulumi.Output.create<ClusterKerberosAttributes>(ClusterKerberosAttributes.fromMap((map['kerberosAttributes'] as Map).cast<String, dynamic>())),
      listStepsStates: map['listStepsStates'] == null ? null : pulumi.Output.create<List<String>>((map['listStepsStates'] as List).cast<String>()),
      logEncryptionKmsKeyId: map['logEncryptionKmsKeyId'] == null ? null : pulumi.Output.create<String>(map['logEncryptionKmsKeyId'] as String),
      logUri: map['logUri'] == null ? null : pulumi.Output.create<String>(map['logUri'] as String),
      masterInstanceFleet: map['masterInstanceFleet'] == null ? null : pulumi.Output.create<ClusterMasterInstanceFleet>(ClusterMasterInstanceFleet.fromMap((map['masterInstanceFleet'] as Map).cast<String, dynamic>())),
      masterInstanceGroup: map['masterInstanceGroup'] == null ? null : pulumi.Output.create<ClusterMasterInstanceGroup>(ClusterMasterInstanceGroup.fromMap((map['masterInstanceGroup'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osReleaseLabel: map['osReleaseLabel'] == null ? null : pulumi.Output.create<String>(map['osReleaseLabel'] as String),
      placementGroupConfigs: map['placementGroupConfigs'] == null ? null : pulumi.Output.create<List<ClusterPlacementGroupConfig>>(pulumi.Input.decodeList<ClusterPlacementGroupConfig>(map['placementGroupConfigs'], (value) => ClusterPlacementGroupConfig.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      releaseLabel: pulumi.Output.create<String>(map['releaseLabel'] as String),
      scaleDownBehavior: map['scaleDownBehavior'] == null ? null : pulumi.Output.create<String>(map['scaleDownBehavior'] as String),
      securityConfiguration: map['securityConfiguration'] == null ? null : pulumi.Output.create<String>(map['securityConfiguration'] as String),
      serviceRole: pulumi.Output.create<String>(map['serviceRole'] as String),
      stepConcurrencyLevel: map['stepConcurrencyLevel'] == null ? null : pulumi.Output.create<int>(map['stepConcurrencyLevel'] as int),
      steps: map['steps'] == null ? null : pulumi.Output.create<List<ClusterStep>>(pulumi.Input.decodeList<ClusterStep>(map['steps'], (value) => ClusterStep.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationProtection: map['terminationProtection'] == null ? null : pulumi.Output.create<bool>(map['terminationProtection'] as bool),
      unhealthyNodeReplacement: map['unhealthyNodeReplacement'] == null ? null : pulumi.Output.create<bool>(map['unhealthyNodeReplacement'] as bool),
      visibleToAllUsers: map['visibleToAllUsers'] == null ? null : pulumi.Output.create<bool>(map['visibleToAllUsers'] as bool),
    );
  }
}

