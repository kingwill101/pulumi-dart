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

/// {@template pulumi_codedeploy_deployment_group_deployment_group_args_doc}
/// The set of arguments for DeploymentGroup.
/// {@endtemplate}
/// {@macro pulumi_codedeploy_deployment_group_deployment_group_args_doc}
class DeploymentGroupArgs {
  /// Configuration block of alarms associated with the deployment group (documented below).
  final pulumi.Input<DeploymentGroupAlarmConfiguration>? alarmConfiguration;

  /// The name of the application.
  final pulumi.Input<String> appName;

  /// Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  final pulumi.Input<DeploymentGroupAutoRollbackConfiguration>?
      autoRollbackConfiguration;

  /// Autoscaling groups associated with the deployment group.
  final pulumi.Input<List<String>>? autoscalingGroups;

  /// Configuration block of the blue/green deployment options for a deployment group (documented below).
  final pulumi.Input<DeploymentGroupBlueGreenDeploymentConfig>?
      blueGreenDeploymentConfig;

  /// The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
  final pulumi.Input<String>? deploymentConfigName;

  /// The name of the deployment group.
  final pulumi.Input<String> deploymentGroupName;

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
  final pulumi.Input<List<DeploymentGroupOnPremisesInstanceTagFilter>>?
      onPremisesInstanceTagFilters;

  /// Configuration block of Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. Valid values are `UPDATE` and `IGNORE`. Defaults to `UPDATE`.
  final pulumi.Input<String>? outdatedInstancesStrategy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The service role ARN that allows deployments.
  final pulumi.Input<String> serviceRoleArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  final pulumi.Input<bool>? terminationHookEnabled;

  /// Configuration block(s) of the triggers for the deployment group (documented below).
  final pulumi.Input<List<DeploymentGroupTriggerConfiguration>>?
      triggerConfigurations;

  /// Creates a new [DeploymentGroupArgs].
  /// [alarmConfiguration] Configuration block of alarms associated with the deployment group (documented below).
  /// [appName] The name of the application.
  /// [autoRollbackConfiguration] Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  /// [autoscalingGroups] Autoscaling groups associated with the deployment group.
  /// [blueGreenDeploymentConfig] Configuration block of the blue/green deployment options for a deployment group (documented below).
  /// [deploymentConfigName] The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
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
  /// [terminationHookEnabled] Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  /// [triggerConfigurations] Configuration block(s) of the triggers for the deployment group (documented below).
  DeploymentGroupArgs({
    DeploymentGroupAlarmConfiguration? alarmConfiguration,
    required String appName,
    DeploymentGroupAutoRollbackConfiguration? autoRollbackConfiguration,
    List<String>? autoscalingGroups,
    DeploymentGroupBlueGreenDeploymentConfig? blueGreenDeploymentConfig,
    String? deploymentConfigName,
    required String deploymentGroupName,
    DeploymentGroupDeploymentStyle? deploymentStyle,
    List<DeploymentGroupEc2TagFilter>? ec2TagFilters,
    List<DeploymentGroupEc2TagSet>? ec2TagSets,
    DeploymentGroupEcsService? ecsService,
    DeploymentGroupLoadBalancerInfo? loadBalancerInfo,
    List<DeploymentGroupOnPremisesInstanceTagFilter>?
        onPremisesInstanceTagFilters,
    String? outdatedInstancesStrategy,
    String? region,
    required String serviceRoleArn,
    Map<String, String>? tags,
    bool? terminationHookEnabled,
    List<DeploymentGroupTriggerConfiguration>? triggerConfigurations,
  })  : alarmConfiguration =
            pulumi.Input.asOptionalInput<DeploymentGroupAlarmConfiguration>(
                alarmConfiguration),
        appName = pulumi.Input.asInput<String>(appName),
        autoRollbackConfiguration = pulumi.Input.asOptionalInput<
                DeploymentGroupAutoRollbackConfiguration>(
            autoRollbackConfiguration),
        autoscalingGroups =
            pulumi.Input.asOptionalInput<List<String>>(autoscalingGroups),
        blueGreenDeploymentConfig = pulumi.Input.asOptionalInput<
                DeploymentGroupBlueGreenDeploymentConfig>(
            blueGreenDeploymentConfig),
        deploymentConfigName =
            pulumi.Input.asOptionalInput<String>(deploymentConfigName),
        deploymentGroupName = pulumi.Input.asInput<String>(deploymentGroupName),
        deploymentStyle =
            pulumi.Input.asOptionalInput<DeploymentGroupDeploymentStyle>(
                deploymentStyle),
        ec2TagFilters =
            pulumi.Input.asOptionalInput<List<DeploymentGroupEc2TagFilter>>(
                ec2TagFilters),
        ec2TagSets =
            pulumi.Input.asOptionalInput<List<DeploymentGroupEc2TagSet>>(
                ec2TagSets),
        ecsService =
            pulumi.Input.asOptionalInput<DeploymentGroupEcsService>(ecsService),
        loadBalancerInfo =
            pulumi.Input.asOptionalInput<DeploymentGroupLoadBalancerInfo>(
                loadBalancerInfo),
        onPremisesInstanceTagFilters = pulumi.Input.asOptionalInput<
                List<DeploymentGroupOnPremisesInstanceTagFilter>>(
            onPremisesInstanceTagFilters),
        outdatedInstancesStrategy =
            pulumi.Input.asOptionalInput<String>(outdatedInstancesStrategy),
        region = pulumi.Input.asOptionalInput<String>(region),
        serviceRoleArn = pulumi.Input.asInput<String>(serviceRoleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        terminationHookEnabled =
            pulumi.Input.asOptionalInput<bool>(terminationHookEnabled),
        triggerConfigurations = pulumi.Input.asOptionalInput<
            List<DeploymentGroupTriggerConfiguration>>(triggerConfigurations);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmConfigurationValue = alarmConfiguration;
    if (alarmConfigurationValue != null) {
      map['alarmConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DeploymentGroupAlarmConfiguration, Map<String, dynamic>>(
          alarmConfigurationValue, (value) => value.toMap());
    }
    map['appName'] = appName;
    final autoRollbackConfigurationValue = autoRollbackConfiguration;
    if (autoRollbackConfigurationValue != null) {
      map['autoRollbackConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DeploymentGroupAutoRollbackConfiguration, Map<String, dynamic>>(
          autoRollbackConfigurationValue, (value) => value.toMap());
    }
    final autoscalingGroupsValue = autoscalingGroups;
    if (autoscalingGroupsValue != null) {
      map['autoscalingGroups'] = autoscalingGroupsValue;
    }
    final blueGreenDeploymentConfigValue = blueGreenDeploymentConfig;
    if (blueGreenDeploymentConfigValue != null) {
      map['blueGreenDeploymentConfig'] = pulumi.Input.mapOptionalInputValue<
              DeploymentGroupBlueGreenDeploymentConfig, Map<String, dynamic>>(
          blueGreenDeploymentConfigValue, (value) => value.toMap());
    }
    final deploymentConfigNameValue = deploymentConfigName;
    if (deploymentConfigNameValue != null) {
      map['deploymentConfigName'] = deploymentConfigNameValue;
    }
    map['deploymentGroupName'] = deploymentGroupName;
    final deploymentStyleValue = deploymentStyle;
    if (deploymentStyleValue != null) {
      map['deploymentStyle'] = pulumi.Input.mapOptionalInputValue<
          DeploymentGroupDeploymentStyle,
          Map<String, dynamic>>(deploymentStyleValue, (value) => value.toMap());
    }
    final ec2TagFiltersValue = ec2TagFilters;
    if (ec2TagFiltersValue != null) {
      map['ec2TagFilters'] = pulumi.Input.mapOptionalInputValue<
              List<DeploymentGroupEc2TagFilter>, List<Map<String, dynamic>>>(
          ec2TagFiltersValue,
          (value) => pulumi.Input.encodeList<DeploymentGroupEc2TagFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ec2TagSetsValue = ec2TagSets;
    if (ec2TagSetsValue != null) {
      map['ec2TagSets'] = pulumi.Input.mapOptionalInputValue<
              List<DeploymentGroupEc2TagSet>, List<Map<String, dynamic>>>(
          ec2TagSetsValue,
          (value) => pulumi.Input.encodeList<DeploymentGroupEc2TagSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ecsServiceValue = ecsService;
    if (ecsServiceValue != null) {
      map['ecsService'] = pulumi.Input.mapOptionalInputValue<
          DeploymentGroupEcsService,
          Map<String, dynamic>>(ecsServiceValue, (value) => value.toMap());
    }
    final loadBalancerInfoValue = loadBalancerInfo;
    if (loadBalancerInfoValue != null) {
      map['loadBalancerInfo'] = pulumi.Input.mapOptionalInputValue<
              DeploymentGroupLoadBalancerInfo, Map<String, dynamic>>(
          loadBalancerInfoValue, (value) => value.toMap());
    }
    final onPremisesInstanceTagFiltersValue = onPremisesInstanceTagFilters;
    if (onPremisesInstanceTagFiltersValue != null) {
      map['onPremisesInstanceTagFilters'] = pulumi.Input.mapOptionalInputValue<
              List<DeploymentGroupOnPremisesInstanceTagFilter>,
              List<Map<String, dynamic>>>(
          onPremisesInstanceTagFiltersValue,
          (value) => pulumi.Input.encodeList<
              DeploymentGroupOnPremisesInstanceTagFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final outdatedInstancesStrategyValue = outdatedInstancesStrategy;
    if (outdatedInstancesStrategyValue != null) {
      map['outdatedInstancesStrategy'] = outdatedInstancesStrategyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceRoleArn'] = serviceRoleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final terminationHookEnabledValue = terminationHookEnabled;
    if (terminationHookEnabledValue != null) {
      map['terminationHookEnabled'] = terminationHookEnabledValue;
    }
    final triggerConfigurationsValue = triggerConfigurations;
    if (triggerConfigurationsValue != null) {
      map['triggerConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<DeploymentGroupTriggerConfiguration>,
              List<Map<String, dynamic>>>(
          triggerConfigurationsValue,
          (value) => pulumi.Input.encodeList<
              DeploymentGroupTriggerConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DeploymentGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupArgs(
      alarmConfiguration: map['alarmConfiguration'] == null
          ? null
          : DeploymentGroupAlarmConfiguration.fromMap(
              (map['alarmConfiguration'] as Map).cast<String, dynamic>()),
      appName: map['appName'] as String,
      autoRollbackConfiguration: map['autoRollbackConfiguration'] == null
          ? null
          : DeploymentGroupAutoRollbackConfiguration.fromMap(
              (map['autoRollbackConfiguration'] as Map)
                  .cast<String, dynamic>()),
      autoscalingGroups: map['autoscalingGroups'] == null
          ? null
          : (map['autoscalingGroups'] as List).cast<String>(),
      blueGreenDeploymentConfig: map['blueGreenDeploymentConfig'] == null
          ? null
          : DeploymentGroupBlueGreenDeploymentConfig.fromMap(
              (map['blueGreenDeploymentConfig'] as Map)
                  .cast<String, dynamic>()),
      deploymentConfigName: map['deploymentConfigName'] == null
          ? null
          : map['deploymentConfigName'] as String,
      deploymentGroupName: map['deploymentGroupName'] as String,
      deploymentStyle: map['deploymentStyle'] == null
          ? null
          : DeploymentGroupDeploymentStyle.fromMap(
              (map['deploymentStyle'] as Map).cast<String, dynamic>()),
      ec2TagFilters: map['ec2TagFilters'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentGroupEc2TagFilter>(
              map['ec2TagFilters'],
              (value) => DeploymentGroupEc2TagFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ec2TagSets: map['ec2TagSets'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentGroupEc2TagSet>(
              map['ec2TagSets'],
              (value) => DeploymentGroupEc2TagSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecsService: map['ecsService'] == null
          ? null
          : DeploymentGroupEcsService.fromMap(
              (map['ecsService'] as Map).cast<String, dynamic>()),
      loadBalancerInfo: map['loadBalancerInfo'] == null
          ? null
          : DeploymentGroupLoadBalancerInfo.fromMap(
              (map['loadBalancerInfo'] as Map).cast<String, dynamic>()),
      onPremisesInstanceTagFilters: map['onPremisesInstanceTagFilters'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentGroupOnPremisesInstanceTagFilter>(
              map['onPremisesInstanceTagFilters'],
              (value) => DeploymentGroupOnPremisesInstanceTagFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      outdatedInstancesStrategy: map['outdatedInstancesStrategy'] == null
          ? null
          : map['outdatedInstancesStrategy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceRoleArn: map['serviceRoleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      terminationHookEnabled: map['terminationHookEnabled'] == null
          ? null
          : map['terminationHookEnabled'] as bool,
      triggerConfigurations: map['triggerConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<DeploymentGroupTriggerConfiguration>(
              map['triggerConfigurations'],
              (value) => DeploymentGroupTriggerConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
