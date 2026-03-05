// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_alarm_configuration.dart';
import 'deployment_group_auto_rollback_configuration.dart';
import 'deployment_group_blue_green_deployment_config.dart';
import 'deployment_group_deployment_style.dart';
import 'deployment_group_ec2_tag_filter.dart';
import 'deployment_group_ec2_tag_set.dart';
import 'deployment_group_ecs_service.dart';
import 'deployment_group_load_balancer_info.dart';
import 'deployment_group_on_premises_instance_tag_filter.dart';
import 'deployment_group_trigger_configuration.dart';

/// Input properties used for looking up and filtering DeploymentGroup resources.
class DeploymentGroupState {
  /// Configuration block of alarms associated with the deployment group (documented below).
  final pulumi.Input<DeploymentGroupAlarmConfiguration>? alarmConfiguration;
  /// The name of the application.
  final pulumi.Input<String>? appName;
  /// The ARN of the CodeDeploy deployment group.
  final pulumi.Input<String>? arn;
  /// Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  final pulumi.Input<DeploymentGroupAutoRollbackConfiguration>? autoRollbackConfiguration;
  /// Autoscaling groups associated with the deployment group.
  final pulumi.Input<List<String>>? autoscalingGroups;
  /// Configuration block of the blue/green deployment options for a deployment group (documented below).
  final pulumi.Input<DeploymentGroupBlueGreenDeploymentConfig>? blueGreenDeploymentConfig;
  /// The destination platform type for the deployment.
  final pulumi.Input<String>? computePlatform;
  /// The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
  final pulumi.Input<String>? deploymentConfigName;
  /// The ID of the CodeDeploy deployment group.
  final pulumi.Input<String>? deploymentGroupId;
  /// The name of the deployment group.
  final pulumi.Input<String>? deploymentGroupName;
  /// Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below).
  final pulumi.Input<DeploymentGroupDeploymentStyle>? deploymentStyle;
  /// Tag filters associated with the deployment group. See the AWS docs for details.
  final pulumi.Input<List<DeploymentGroupEc2TagFilter>>? ec2TagFilters;
  /// Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details.
  final pulumi.Input<List<DeploymentGroupEc2TagSet>>? ec2TagSets;
  /// Configuration block(s) of the ECS services for a deployment group (documented below).
  final pulumi.Input<DeploymentGroupEcsService>? ecsService;
  /// Single configuration block of the load balancer to use in a blue/green deployment (documented below).
  final pulumi.Input<DeploymentGroupLoadBalancerInfo>? loadBalancerInfo;
  /// On premise tag filters associated with the group. See the AWS docs for details.
  final pulumi.Input<List<DeploymentGroupOnPremisesInstanceTagFilter>>? onPremisesInstanceTagFilters;
  /// Configuration block of Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. Valid values are `UPDATE` and `IGNORE`. Defaults to `UPDATE`.
  final pulumi.Input<String>? outdatedInstancesStrategy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The service role ARN that allows deployments.
  final pulumi.Input<String>? serviceRoleArn;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  final pulumi.Input<bool>? terminationHookEnabled;
  /// Configuration block(s) of the triggers for the deployment group (documented below).
  final pulumi.Input<List<DeploymentGroupTriggerConfiguration>>? triggerConfigurations;

  /// Creates a new [DeploymentGroupState].
  /// [alarmConfiguration] Configuration block of alarms associated with the deployment group (documented below).
  /// [appName] The name of the application.
  /// [arn] The ARN of the CodeDeploy deployment group.
  /// [autoRollbackConfiguration] Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  /// [autoscalingGroups] Autoscaling groups associated with the deployment group.
  /// [blueGreenDeploymentConfig] Configuration block of the blue/green deployment options for a deployment group (documented below).
  /// [computePlatform] The destination platform type for the deployment.
  /// [deploymentConfigName] The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
  /// [deploymentGroupId] The ID of the CodeDeploy deployment group.
  /// [deploymentGroupName] The name of the deployment group.
  /// [deploymentStyle] Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below).
  /// [ec2TagFilters] Tag filters associated with the deployment group. See the AWS docs for details.
  /// [ec2TagSets] Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details.
  /// [ecsService] Configuration block(s) of the ECS services for a deployment group (documented below).
  /// [loadBalancerInfo] Single configuration block of the load balancer to use in a blue/green deployment (documented below).
  /// [onPremisesInstanceTagFilters] On premise tag filters associated with the group. See the AWS docs for details.
  /// [outdatedInstancesStrategy] Configuration block of Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. Valid values are `UPDATE` and `IGNORE`. Defaults to `UPDATE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRoleArn] The service role ARN that allows deployments.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [terminationHookEnabled] Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  /// [triggerConfigurations] Configuration block(s) of the triggers for the deployment group (documented below).
  DeploymentGroupState({
    this.alarmConfiguration,
    this.appName,
    this.arn,
    this.autoRollbackConfiguration,
    this.autoscalingGroups,
    this.blueGreenDeploymentConfig,
    this.computePlatform,
    this.deploymentConfigName,
    this.deploymentGroupId,
    this.deploymentGroupName,
    this.deploymentStyle,
    this.ec2TagFilters,
    this.ec2TagSets,
    this.ecsService,
    this.loadBalancerInfo,
    this.onPremisesInstanceTagFilters,
    this.outdatedInstancesStrategy,
    this.region,
    this.serviceRoleArn,
    this.tags,
    this.tagsAll,
    this.terminationHookEnabled,
    this.triggerConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmConfiguration': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupAlarmConfiguration, Map<String, dynamic>>(alarmConfiguration, (value) => value.toMap()),
      'appName': ?appName,
      'arn': ?arn,
      'autoRollbackConfiguration': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupAutoRollbackConfiguration, Map<String, dynamic>>(autoRollbackConfiguration, (value) => value.toMap()),
      'autoscalingGroups': ?autoscalingGroups,
      'blueGreenDeploymentConfig': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupBlueGreenDeploymentConfig, Map<String, dynamic>>(blueGreenDeploymentConfig, (value) => value.toMap()),
      'computePlatform': ?computePlatform,
      'deploymentConfigName': ?deploymentConfigName,
      'deploymentGroupId': ?deploymentGroupId,
      'deploymentGroupName': ?deploymentGroupName,
      'deploymentStyle': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupDeploymentStyle, Map<String, dynamic>>(deploymentStyle, (value) => value.toMap()),
      'ec2TagFilters': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupEc2TagFilter>, List<Map<String, dynamic>>>(ec2TagFilters, (value) => pulumi.Input.encodeList<DeploymentGroupEc2TagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2TagSets': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupEc2TagSet>, List<Map<String, dynamic>>>(ec2TagSets, (value) => pulumi.Input.encodeList<DeploymentGroupEc2TagSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsService': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupEcsService, Map<String, dynamic>>(ecsService, (value) => value.toMap()),
      'loadBalancerInfo': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupLoadBalancerInfo, Map<String, dynamic>>(loadBalancerInfo, (value) => value.toMap()),
      'onPremisesInstanceTagFilters': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupOnPremisesInstanceTagFilter>, List<Map<String, dynamic>>>(onPremisesInstanceTagFilters, (value) => pulumi.Input.encodeList<DeploymentGroupOnPremisesInstanceTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outdatedInstancesStrategy': ?outdatedInstancesStrategy,
      'region': ?region,
      'serviceRoleArn': ?serviceRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'terminationHookEnabled': ?terminationHookEnabled,
      'triggerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupTriggerConfiguration>, List<Map<String, dynamic>>>(triggerConfigurations, (value) => pulumi.Input.encodeList<DeploymentGroupTriggerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentGroupState.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupState(
      alarmConfiguration: (() { final guardedValue = map['alarmConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupAlarmConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRollbackConfiguration: (() { final guardedValue = map['autoRollbackConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupAutoRollbackConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoscalingGroups: (() { final guardedValue = map['autoscalingGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blueGreenDeploymentConfig: (() { final guardedValue = map['blueGreenDeploymentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupBlueGreenDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      computePlatform: (() { final guardedValue = map['computePlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfigName: (() { final guardedValue = map['deploymentConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentGroupId: (() { final guardedValue = map['deploymentGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentGroupName: (() { final guardedValue = map['deploymentGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStyle: (() { final guardedValue = map['deploymentStyle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupDeploymentStyle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ec2TagFilters: (() { final guardedValue = map['ec2TagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupEc2TagFilter>(guardedValue, (value) => DeploymentGroupEc2TagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2TagSets: (() { final guardedValue = map['ec2TagSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupEc2TagSet>(guardedValue, (value) => DeploymentGroupEc2TagSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ecsService: (() { final guardedValue = map['ecsService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupEcsService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loadBalancerInfo: (() { final guardedValue = map['loadBalancerInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupLoadBalancerInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremisesInstanceTagFilters: (() { final guardedValue = map['onPremisesInstanceTagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupOnPremisesInstanceTagFilter>(guardedValue, (value) => DeploymentGroupOnPremisesInstanceTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outdatedInstancesStrategy: (() { final guardedValue = map['outdatedInstancesStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRoleArn: (() { final guardedValue = map['serviceRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      terminationHookEnabled: (() { final guardedValue = map['terminationHookEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      triggerConfigurations: (() { final guardedValue = map['triggerConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupTriggerConfiguration>(guardedValue, (value) => DeploymentGroupTriggerConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

