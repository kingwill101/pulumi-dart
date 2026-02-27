import 'package:pulumi/pulumi.dart';
import '../deployment_group_alarm_configuration/deployment_group_alarm_configuration.dart';
import '../deployment_group_auto_rollback_configuration/deployment_group_auto_rollback_configuration.dart';
import '../deployment_group_blue_green_deployment_config/deployment_group_blue_green_deployment_config.dart';
import '../deployment_group_deployment_style/deployment_group_deployment_style.dart';
import '../deployment_group_ec2_tag_filter/deployment_group_ec2_tag_filter.dart';
import '../deployment_group_ec2_tag_set/deployment_group_ec2_tag_set.dart';
import '../deployment_group_ecs_service/deployment_group_ecs_service.dart';
import '../deployment_group_load_balancer_info/deployment_group_load_balancer_info.dart';
import '../deployment_group_on_premises_instance_tag_filter/deployment_group_on_premises_instance_tag_filter.dart';
import '../deployment_group_trigger_configuration/deployment_group_trigger_configuration.dart';
import 'deployment_group_args.dart';

/// Provides a CodeDeploy Deployment Group for a CodeDeploy Application
///
/// > **NOTE on blue/green deployments:** When using `green_fleet_provisioning_option` with the `COPY_AUTO_SCALING_GROUP` action, CodeDeploy will create a new ASG with a different name. This ASG is _not_ managed by this provider and will conflict with existing configuration and state. You may want to use a different approach to managing deployments that involve multiple ASG, such as `DISCOVER_EXISTING` with separate blue and green ASG.
///
/// ## Example Usage
///
///
///
/// ### Blue Green Deployments with ECS
///
///
///
/// ### Blue Green Deployments with Servers and Classic ELB
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Deployment Groups using `app_name`, a colon, and `deployment_group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/deploymentGroup:DeploymentGroup example my-application:my-deployment-group
/// ```
///
/// [1]: http://docs.aws.amazon.com/codedeploy/latest/userguide/monitoring-sns-event-notifications-create-trigger.html
class DeploymentGroup extends CustomResource {
  /// Configuration block of alarms associated with the deployment group (documented below).
  late final Output<DeploymentGroupAlarmConfiguration?> alarmConfiguration;

  /// The name of the application.
  late final Output<String> appName;

  /// The ARN of the CodeDeploy deployment group.
  late final Output<String> arn;

  /// Configuration block of the automatic rollback configuration associated with the deployment group (documented below).
  late final Output<DeploymentGroupAutoRollbackConfiguration?>
      autoRollbackConfiguration;

  /// Autoscaling groups associated with the deployment group.
  late final Output<List<String>?> autoscalingGroups;

  /// Configuration block of the blue/green deployment options for a deployment group (documented below).
  late final Output<DeploymentGroupBlueGreenDeploymentConfig>
      blueGreenDeploymentConfig;

  /// The destination platform type for the deployment.
  late final Output<String> computePlatform;

  /// The name of the group's deployment config. The default is "CodeDeployDefault.OneAtATime".
  late final Output<String?> deploymentConfigName;

  /// The ID of the CodeDeploy deployment group.
  late final Output<String> deploymentGroupId;

  /// The name of the deployment group.
  late final Output<String> deploymentGroupName;

  /// Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below).
  late final Output<DeploymentGroupDeploymentStyle?> deploymentStyle;

  /// Tag filters associated with the deployment group. See the AWS docs for details.
  late final Output<List<DeploymentGroupEc2TagFilter>?> ec2TagFilters;

  /// Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details.
  late final Output<List<DeploymentGroupEc2TagSet>?> ec2TagSets;

  /// Configuration block(s) of the ECS services for a deployment group (documented below).
  late final Output<DeploymentGroupEcsService?> ecsService;

  /// Single configuration block of the load balancer to use in a blue/green deployment (documented below).
  late final Output<DeploymentGroupLoadBalancerInfo?> loadBalancerInfo;

  /// On premise tag filters associated with the group. See the AWS docs for details.
  late final Output<List<DeploymentGroupOnPremisesInstanceTagFilter>?>
      onPremisesInstanceTagFilters;

  /// Configuration block of Indicates what happens when new Amazon EC2 instances are launched mid-deployment and do not receive the deployed application revision. Valid values are `UPDATE` and `IGNORE`. Defaults to `UPDATE`.
  late final Output<String?> outdatedInstancesStrategy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The service role ARN that allows deployments.
  late final Output<String> serviceRoleArn;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Indicates whether the deployment group was configured to have CodeDeploy install a termination hook into an Auto Scaling group.
  late final Output<bool?> terminationHookEnabled;

  /// Configuration block(s) of the triggers for the deployment group (documented below).
  late final Output<List<DeploymentGroupTriggerConfiguration>?>
      triggerConfigurations;

  DeploymentGroup(
    String name, {
    DeploymentGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/deploymentGroup:DeploymentGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alarmConfiguration =
        registerOutput<DeploymentGroupAlarmConfiguration?>(
            'alarmConfiguration');
    this.appName = registerOutput<String>('appName');
    this.arn = registerOutput<String>('arn');
    this.autoRollbackConfiguration =
        registerOutput<DeploymentGroupAutoRollbackConfiguration?>(
            'autoRollbackConfiguration');
    this.autoscalingGroups = registerOutput<List<String>?>('autoscalingGroups');
    this.blueGreenDeploymentConfig =
        registerOutput<DeploymentGroupBlueGreenDeploymentConfig>(
            'blueGreenDeploymentConfig');
    this.computePlatform = registerOutput<String>('computePlatform');
    this.deploymentConfigName = registerOutput<String?>('deploymentConfigName');
    this.deploymentGroupId = registerOutput<String>('deploymentGroupId');
    this.deploymentGroupName = registerOutput<String>('deploymentGroupName');
    this.deploymentStyle =
        registerOutput<DeploymentGroupDeploymentStyle?>('deploymentStyle');
    this.ec2TagFilters =
        registerOutput<List<DeploymentGroupEc2TagFilter>?>('ec2TagFilters');
    this.ec2TagSets =
        registerOutput<List<DeploymentGroupEc2TagSet>?>('ec2TagSets');
    this.ecsService = registerOutput<DeploymentGroupEcsService?>('ecsService');
    this.loadBalancerInfo =
        registerOutput<DeploymentGroupLoadBalancerInfo?>('loadBalancerInfo');
    this.onPremisesInstanceTagFilters =
        registerOutput<List<DeploymentGroupOnPremisesInstanceTagFilter>?>(
            'onPremisesInstanceTagFilters');
    this.outdatedInstancesStrategy =
        registerOutput<String?>('outdatedInstancesStrategy');
    this.region = registerOutput<String>('region');
    this.serviceRoleArn = registerOutput<String>('serviceRoleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.terminationHookEnabled =
        registerOutput<bool?>('terminationHookEnabled');
    this.triggerConfigurations =
        registerOutput<List<DeploymentGroupTriggerConfiguration>?>(
            'triggerConfigurations');
  }
}
