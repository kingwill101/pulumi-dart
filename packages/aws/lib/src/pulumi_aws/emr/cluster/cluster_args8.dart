// ignore_for_file: unused_element, unnecessary_cast

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

/// The set of arguments for Cluster.
class ClusterArgs8 {
  /// JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore the provider cannot detect drift from the actual EMR cluster if its value is changed outside the provider.
  final Input<String>? additionalInfo;

  /// A case-insensitive list of applications for Amazon EMR to install and configure when launching the cluster. For a list of applications available for each Amazon EMR release version, see the [Amazon EMR Release Guide](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html).
  final Input<List<String>>? applications;

  /// An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below.
  final Input<ClusterAutoTerminationPolicy>? autoTerminationPolicy;

  /// IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group.
  final Input<String>? autoscalingRole;

  /// Ordered list of bootstrap actions that will be run before Hadoop is started on the cluster nodes. See below.
  final Input<List<ClusterBootstrapAction>>? bootstrapActions;

  /// List of configurations supplied for the EMR cluster you are creating. Supply a configuration object for applications to override their default configuration. See [AWS Documentation](https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html) for more information.
  final Input<String>? configurations;

  /// JSON string for supplying list of configurations for the EMR cluster.
  ///
  /// > **NOTE on <span pulumi-lang-nodejs="`configurationsJson`" pulumi-lang-dotnet="`ConfigurationsJson`" pulumi-lang-go="`configurationsJson`" pulumi-lang-python="`configurations_json`" pulumi-lang-yaml="`configurationsJson`" pulumi-lang-java="`configurationsJson`">`configurations_json`</span>:** If the `Configurations` value is empty then you should skip the `Configurations` field instead of providing an empty list as a value, `"Configurations": []`.
  ///
  /// <!--Start PulumiCodeChooser -->
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
  /// var cluster = new Aws.Emr.Cluster("cluster", new()
  /// {
  /// ConfigurationsJson = @"[
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
  /// });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/emr"
  /// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// pulumi.Run(func(ctx *pulumi.Context) error {
  /// _, err := emr.NewCluster(ctx, "cluster", &emr.ClusterArgs{
  /// ConfigurationsJson: pulumi.String(`[
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
  /// })
  /// if err != nil {
  /// return err
  /// }
  /// return nil
  /// })
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
  /// public static void main(String[] args) {
  /// Pulumi.run(App::stack);
  /// }
  ///
  /// public static void stack(Context ctx) {
  /// var cluster = new Cluster("cluster", ClusterArgs.builder()
  /// .configurationsJson("""
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
  /// """)
  /// .build());
  ///
  /// }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  /// cluster:
  /// type: aws:emr:Cluster
  /// properties:
  /// configurationsJson: |
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
  /// ```
  /// <!--End PulumiCodeChooser -->
  final Input<String>? configurationsJson;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the core node type. Cannot be specified if any <span pulumi-lang-nodejs="`coreInstanceGroup`" pulumi-lang-dotnet="`CoreInstanceGroup`" pulumi-lang-go="`coreInstanceGroup`" pulumi-lang-python="`core_instance_group`" pulumi-lang-yaml="`coreInstanceGroup`" pulumi-lang-java="`coreInstanceGroup`">`core_instance_group`</span> configuration blocks are set. Detailed below.
  final Input<ClusterCoreInstanceFleet>? coreInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [core node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-core).
  final Input<ClusterCoreInstanceGroup>? coreInstanceGroup;

  /// Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later.
  final Input<String>? customAmiId;

  /// Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later.
  final Input<int>? ebsRootVolumeSize;

  /// Attributes for the EC2 instances running the job flow. See below.
  final Input<ClusterEc2Attributes>? ec2Attributes;

  /// Switch on/off run cluster with no steps or when all steps are complete (default is on)
  final Input<bool>? keepJobFlowAliveWhenNoSteps;

  /// Kerberos configuration for the cluster. See below.
  final Input<ClusterKerberosAttributes>? kerberosAttributes;

  /// List of [step states](https://docs.aws.amazon.com/emr/latest/APIReference/API_StepStatus.html) used to filter returned steps
  final Input<List<String>>? listStepsStates;

  /// AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0.
  final Input<String>? logEncryptionKmsKeyId;

  /// S3 bucket to write the log files of the job flow. If a value is not provided, logs are not created.
  final Input<String>? logUri;

  /// Configuration block to use an [Instance Fleet](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-fleet.html) for the master node type. Cannot be specified if any <span pulumi-lang-nodejs="`masterInstanceGroup`" pulumi-lang-dotnet="`MasterInstanceGroup`" pulumi-lang-go="`masterInstanceGroup`" pulumi-lang-python="`master_instance_group`" pulumi-lang-yaml="`masterInstanceGroup`" pulumi-lang-java="`masterInstanceGroup`">`master_instance_group`</span> configuration blocks are set. Detailed below.
  final Input<ClusterMasterInstanceFleet>? masterInstanceFleet;

  /// Configuration block to use an [Instance Group](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-instance-group-configuration.html#emr-plan-instance-groups) for the [master node type](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-master-core-task-nodes.html#emr-plan-master).
  final Input<ClusterMasterInstanceGroup>? masterInstanceGroup;

  /// Name of the job flow.
  final Input<String>? name;

  /// Amazon Linux release for all nodes in a cluster launch RunJobFlow request. If not specified, Amazon EMR uses the latest validated Amazon Linux release for cluster launch.
  final Input<String>? osReleaseLabel;

  /// The specified placement group configuration for an Amazon EMR cluster.
  final Input<List<ClusterPlacementGroupConfig>>? placementGroupConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Release label for the Amazon EMR release.
  final Input<String> releaseLabel;

  /// Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an `instance group` is resized.
  final Input<String>? scaleDownBehavior;

  /// Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with <span pulumi-lang-nodejs="`releaseLabel`" pulumi-lang-dotnet="`ReleaseLabel`" pulumi-lang-go="`releaseLabel`" pulumi-lang-python="`release_label`" pulumi-lang-yaml="`releaseLabel`" pulumi-lang-java="`releaseLabel`">`release_label`</span> 4.8.0 or greater.
  final Input<String>? securityConfiguration;

  /// IAM role that will be assumed by the Amazon EMR service to access AWS resources.
  ///
  /// The following arguments are optional:
  final Input<String> serviceRole;

  /// Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with <span pulumi-lang-nodejs="`releaseLabel`" pulumi-lang-dotnet="`ReleaseLabel`" pulumi-lang-go="`releaseLabel`" pulumi-lang-python="`release_label`" pulumi-lang-yaml="`releaseLabel`" pulumi-lang-java="`releaseLabel`">`release_label`</span> 5.28.0 or greater (default is 1).
  final Input<int>? stepConcurrencyLevel;

  /// List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle resource options block with `ignoreChanges` if other steps are being managed outside of this provider.
  final Input<List<ClusterStep>>? steps;

  /// list of tags to apply to the EMR Cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Switch on/off termination protection (default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? terminationProtection;

  /// Whether whether Amazon EMR should gracefully replace core nodes that have degraded within the cluster. Default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? unhealthyNodeReplacement;

  /// Whether the job flow is visible to all IAM users of the AWS account associated with the job flow. Default value is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  ///
  /// **NOTE:** As per the [Amazon EMR API Reference](https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html#EMR-RunJobFlow-request-VisibleToAllUsers), this argument is no longer supported. Do not set this argument, particularly to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, as it would lead to perpetual differences.
  final Input<bool>? visibleToAllUsers;

  ClusterArgs8({
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
      map['autoTerminationPolicy'] = Input.mapOptionalInputValue<
              ClusterAutoTerminationPolicy, Map<String, dynamic>>(
          autoTerminationPolicyValue, (value) => value.toMap());
    }
    final autoscalingRoleValue = autoscalingRole;
    if (autoscalingRoleValue != null) {
      map['autoscalingRole'] = autoscalingRoleValue;
    }
    final bootstrapActionsValue = bootstrapActions;
    if (bootstrapActionsValue != null) {
      map['bootstrapActions'] = Input.mapOptionalInputValue<
              List<ClusterBootstrapAction>, List<Map<String, dynamic>>>(
          bootstrapActionsValue,
          (value) =>
              Input.encodeList<ClusterBootstrapAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      map['coreInstanceFleet'] = Input.mapOptionalInputValue<
              ClusterCoreInstanceFleet, Map<String, dynamic>>(
          coreInstanceFleetValue, (value) => value.toMap());
    }
    final coreInstanceGroupValue = coreInstanceGroup;
    if (coreInstanceGroupValue != null) {
      map['coreInstanceGroup'] = Input.mapOptionalInputValue<
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
      map['ec2Attributes'] = Input.mapOptionalInputValue<ClusterEc2Attributes,
          Map<String, dynamic>>(ec2AttributesValue, (value) => value.toMap());
    }
    final keepJobFlowAliveWhenNoStepsValue = keepJobFlowAliveWhenNoSteps;
    if (keepJobFlowAliveWhenNoStepsValue != null) {
      map['keepJobFlowAliveWhenNoSteps'] = keepJobFlowAliveWhenNoStepsValue;
    }
    final kerberosAttributesValue = kerberosAttributes;
    if (kerberosAttributesValue != null) {
      map['kerberosAttributes'] = Input.mapOptionalInputValue<
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
      map['masterInstanceFleet'] = Input.mapOptionalInputValue<
              ClusterMasterInstanceFleet, Map<String, dynamic>>(
          masterInstanceFleetValue, (value) => value.toMap());
    }
    final masterInstanceGroupValue = masterInstanceGroup;
    if (masterInstanceGroupValue != null) {
      map['masterInstanceGroup'] = Input.mapOptionalInputValue<
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
      map['placementGroupConfigs'] = Input.mapOptionalInputValue<
              List<ClusterPlacementGroupConfig>, List<Map<String, dynamic>>>(
          placementGroupConfigsValue,
          (value) => Input.encodeList<ClusterPlacementGroupConfig,
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
      map['steps'] = Input.mapOptionalInputValue<List<ClusterStep>,
              List<Map<String, dynamic>>>(
          stepsValue,
          (value) => Input.encodeList<ClusterStep, Map<String, dynamic>>(
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

  factory ClusterArgs8.fromMap(Map<String, dynamic> map) {
    return ClusterArgs8(
      additionalInfo: Input.asOptionalInput<String>(map['additionalInfo']),
      applications: Input.asOptionalInput<List<String>>(map['applications']),
      autoTerminationPolicy:
          Input.asOptionalInput<ClusterAutoTerminationPolicy>(
              map['autoTerminationPolicy']),
      autoscalingRole: Input.asOptionalInput<String>(map['autoscalingRole']),
      bootstrapActions: Input.asOptionalInput<List<ClusterBootstrapAction>>(
          map['bootstrapActions']),
      configurations: Input.asOptionalInput<String>(map['configurations']),
      configurationsJson:
          Input.asOptionalInput<String>(map['configurationsJson']),
      coreInstanceFleet: Input.asOptionalInput<ClusterCoreInstanceFleet>(
          map['coreInstanceFleet']),
      coreInstanceGroup: Input.asOptionalInput<ClusterCoreInstanceGroup>(
          map['coreInstanceGroup']),
      customAmiId: Input.asOptionalInput<String>(map['customAmiId']),
      ebsRootVolumeSize: Input.asOptionalInput<int>(map['ebsRootVolumeSize']),
      ec2Attributes:
          Input.asOptionalInput<ClusterEc2Attributes>(map['ec2Attributes']),
      keepJobFlowAliveWhenNoSteps:
          Input.asOptionalInput<bool>(map['keepJobFlowAliveWhenNoSteps']),
      kerberosAttributes: Input.asOptionalInput<ClusterKerberosAttributes>(
          map['kerberosAttributes']),
      listStepsStates:
          Input.asOptionalInput<List<String>>(map['listStepsStates']),
      logEncryptionKmsKeyId:
          Input.asOptionalInput<String>(map['logEncryptionKmsKeyId']),
      logUri: Input.asOptionalInput<String>(map['logUri']),
      masterInstanceFleet: Input.asOptionalInput<ClusterMasterInstanceFleet>(
          map['masterInstanceFleet']),
      masterInstanceGroup: Input.asOptionalInput<ClusterMasterInstanceGroup>(
          map['masterInstanceGroup']),
      name: Input.asOptionalInput<String>(map['name']),
      osReleaseLabel: Input.asOptionalInput<String>(map['osReleaseLabel']),
      placementGroupConfigs:
          Input.asOptionalInput<List<ClusterPlacementGroupConfig>>(
              map['placementGroupConfigs']),
      region: Input.asOptionalInput<String>(map['region']),
      releaseLabel: Input.asInput<String>(map['releaseLabel']),
      scaleDownBehavior:
          Input.asOptionalInput<String>(map['scaleDownBehavior']),
      securityConfiguration:
          Input.asOptionalInput<String>(map['securityConfiguration']),
      serviceRole: Input.asInput<String>(map['serviceRole']),
      stepConcurrencyLevel:
          Input.asOptionalInput<int>(map['stepConcurrencyLevel']),
      steps: Input.asOptionalInput<List<ClusterStep>>(map['steps']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      terminationProtection:
          Input.asOptionalInput<bool>(map['terminationProtection']),
      unhealthyNodeReplacement:
          Input.asOptionalInput<bool>(map['unhealthyNodeReplacement']),
      visibleToAllUsers: Input.asOptionalInput<bool>(map['visibleToAllUsers']),
    );
  }
}
