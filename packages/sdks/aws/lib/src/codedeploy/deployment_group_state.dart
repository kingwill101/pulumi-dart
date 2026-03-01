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
    pulumi.Output<DeploymentGroupAlarmConfiguration>? alarmConfiguration,
    pulumi.Output<String>? appName,
    pulumi.Output<String>? arn,
    pulumi.Output<DeploymentGroupAutoRollbackConfiguration>? autoRollbackConfiguration,
    pulumi.Output<List<String>>? autoscalingGroups,
    pulumi.Output<DeploymentGroupBlueGreenDeploymentConfig>? blueGreenDeploymentConfig,
    pulumi.Output<String>? computePlatform,
    pulumi.Output<String>? deploymentConfigName,
    pulumi.Output<String>? deploymentGroupId,
    pulumi.Output<String>? deploymentGroupName,
    pulumi.Output<DeploymentGroupDeploymentStyle>? deploymentStyle,
    pulumi.Output<List<DeploymentGroupEc2TagFilter>>? ec2TagFilters,
    pulumi.Output<List<DeploymentGroupEc2TagSet>>? ec2TagSets,
    pulumi.Output<DeploymentGroupEcsService>? ecsService,
    pulumi.Output<DeploymentGroupLoadBalancerInfo>? loadBalancerInfo,
    pulumi.Output<List<DeploymentGroupOnPremisesInstanceTagFilter>>? onPremisesInstanceTagFilters,
    pulumi.Output<String>? outdatedInstancesStrategy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceRoleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? terminationHookEnabled,
    pulumi.Output<List<DeploymentGroupTriggerConfiguration>>? triggerConfigurations,
  }) :
      alarmConfiguration = pulumi.Input.asOptionalInput<DeploymentGroupAlarmConfiguration>(alarmConfiguration),
      appName = pulumi.Input.asOptionalInput<String>(appName),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoRollbackConfiguration = pulumi.Input.asOptionalInput<DeploymentGroupAutoRollbackConfiguration>(autoRollbackConfiguration),
      autoscalingGroups = pulumi.Input.asOptionalInput<List<String>>(autoscalingGroups),
      blueGreenDeploymentConfig = pulumi.Input.asOptionalInput<DeploymentGroupBlueGreenDeploymentConfig>(blueGreenDeploymentConfig),
      computePlatform = pulumi.Input.asOptionalInput<String>(computePlatform),
      deploymentConfigName = pulumi.Input.asOptionalInput<String>(deploymentConfigName),
      deploymentGroupId = pulumi.Input.asOptionalInput<String>(deploymentGroupId),
      deploymentGroupName = pulumi.Input.asOptionalInput<String>(deploymentGroupName),
      deploymentStyle = pulumi.Input.asOptionalInput<DeploymentGroupDeploymentStyle>(deploymentStyle),
      ec2TagFilters = pulumi.Input.asOptionalInput<List<DeploymentGroupEc2TagFilter>>(ec2TagFilters),
      ec2TagSets = pulumi.Input.asOptionalInput<List<DeploymentGroupEc2TagSet>>(ec2TagSets),
      ecsService = pulumi.Input.asOptionalInput<DeploymentGroupEcsService>(ecsService),
      loadBalancerInfo = pulumi.Input.asOptionalInput<DeploymentGroupLoadBalancerInfo>(loadBalancerInfo),
      onPremisesInstanceTagFilters = pulumi.Input.asOptionalInput<List<DeploymentGroupOnPremisesInstanceTagFilter>>(onPremisesInstanceTagFilters),
      outdatedInstancesStrategy = pulumi.Input.asOptionalInput<String>(outdatedInstancesStrategy),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceRoleArn = pulumi.Input.asOptionalInput<String>(serviceRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      terminationHookEnabled = pulumi.Input.asOptionalInput<bool>(terminationHookEnabled),
      triggerConfigurations = pulumi.Input.asOptionalInput<List<DeploymentGroupTriggerConfiguration>>(triggerConfigurations);

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
      alarmConfiguration: map['alarmConfiguration'] == null ? null : pulumi.Output.create<DeploymentGroupAlarmConfiguration>(DeploymentGroupAlarmConfiguration.fromMap((map['alarmConfiguration'] as Map).cast<String, dynamic>())),
      appName: map['appName'] == null ? null : pulumi.Output.create<String>(map['appName'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoRollbackConfiguration: map['autoRollbackConfiguration'] == null ? null : pulumi.Output.create<DeploymentGroupAutoRollbackConfiguration>(DeploymentGroupAutoRollbackConfiguration.fromMap((map['autoRollbackConfiguration'] as Map).cast<String, dynamic>())),
      autoscalingGroups: map['autoscalingGroups'] == null ? null : pulumi.Output.create<List<String>>((map['autoscalingGroups'] as List).cast<String>()),
      blueGreenDeploymentConfig: map['blueGreenDeploymentConfig'] == null ? null : pulumi.Output.create<DeploymentGroupBlueGreenDeploymentConfig>(DeploymentGroupBlueGreenDeploymentConfig.fromMap((map['blueGreenDeploymentConfig'] as Map).cast<String, dynamic>())),
      computePlatform: map['computePlatform'] == null ? null : pulumi.Output.create<String>(map['computePlatform'] as String),
      deploymentConfigName: map['deploymentConfigName'] == null ? null : pulumi.Output.create<String>(map['deploymentConfigName'] as String),
      deploymentGroupId: map['deploymentGroupId'] == null ? null : pulumi.Output.create<String>(map['deploymentGroupId'] as String),
      deploymentGroupName: map['deploymentGroupName'] == null ? null : pulumi.Output.create<String>(map['deploymentGroupName'] as String),
      deploymentStyle: map['deploymentStyle'] == null ? null : pulumi.Output.create<DeploymentGroupDeploymentStyle>(DeploymentGroupDeploymentStyle.fromMap((map['deploymentStyle'] as Map).cast<String, dynamic>())),
      ec2TagFilters: map['ec2TagFilters'] == null ? null : pulumi.Output.create<List<DeploymentGroupEc2TagFilter>>(pulumi.Input.decodeList<DeploymentGroupEc2TagFilter>(map['ec2TagFilters'], (value) => DeploymentGroupEc2TagFilter.fromMap((value as Map).cast<String, dynamic>()))),
      ec2TagSets: map['ec2TagSets'] == null ? null : pulumi.Output.create<List<DeploymentGroupEc2TagSet>>(pulumi.Input.decodeList<DeploymentGroupEc2TagSet>(map['ec2TagSets'], (value) => DeploymentGroupEc2TagSet.fromMap((value as Map).cast<String, dynamic>()))),
      ecsService: map['ecsService'] == null ? null : pulumi.Output.create<DeploymentGroupEcsService>(DeploymentGroupEcsService.fromMap((map['ecsService'] as Map).cast<String, dynamic>())),
      loadBalancerInfo: map['loadBalancerInfo'] == null ? null : pulumi.Output.create<DeploymentGroupLoadBalancerInfo>(DeploymentGroupLoadBalancerInfo.fromMap((map['loadBalancerInfo'] as Map).cast<String, dynamic>())),
      onPremisesInstanceTagFilters: map['onPremisesInstanceTagFilters'] == null ? null : pulumi.Output.create<List<DeploymentGroupOnPremisesInstanceTagFilter>>(pulumi.Input.decodeList<DeploymentGroupOnPremisesInstanceTagFilter>(map['onPremisesInstanceTagFilters'], (value) => DeploymentGroupOnPremisesInstanceTagFilter.fromMap((value as Map).cast<String, dynamic>()))),
      outdatedInstancesStrategy: map['outdatedInstancesStrategy'] == null ? null : pulumi.Output.create<String>(map['outdatedInstancesStrategy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceRoleArn: map['serviceRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      terminationHookEnabled: map['terminationHookEnabled'] == null ? null : pulumi.Output.create<bool>(map['terminationHookEnabled'] as bool),
      triggerConfigurations: map['triggerConfigurations'] == null ? null : pulumi.Output.create<List<DeploymentGroupTriggerConfiguration>>(pulumi.Input.decodeList<DeploymentGroupTriggerConfiguration>(map['triggerConfigurations'], (value) => DeploymentGroupTriggerConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

