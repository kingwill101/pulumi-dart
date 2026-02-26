import 'package:pulumi/pulumi.dart';
import '../deployment_config_minimum_healthy_hosts/deployment_config_minimum_healthy_hosts.dart';
import '../deployment_config_traffic_routing_config/deployment_config_traffic_routing_config.dart';
import '../deployment_config_zonal_config/deployment_config_zonal_config.dart';
import 'deployment_config_args.dart';

/// Provides a CodeDeploy deployment config for an application
///
/// ## Example Usage
///
/// ### Server Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.codedeploy.DeploymentConfig("foo", {
/// deploymentConfigName: "test-deployment-config",
/// minimumHealthyHosts: {
/// type: "HOST_COUNT",
/// value: 2,
/// },
/// });
/// const fooDeploymentGroup = new aws.codedeploy.DeploymentGroup("foo", {
/// appName: fooApp.name,
/// deploymentGroupName: "bar",
/// serviceRoleArn: fooRole.arn,
/// deploymentConfigName: foo.id,
/// ec2TagFilters: [{
/// key: "filterkey",
/// type: "KEY_AND_VALUE",
/// value: "filtervalue",
/// }],
/// triggerConfigurations: [{
/// triggerEvents: ["DeploymentFailure"],
/// triggerName: "foo-trigger",
/// triggerTargetArn: "foo-topic-arn",
/// }],
/// autoRollbackConfiguration: {
/// enabled: true,
/// events: ["DEPLOYMENT_FAILURE"],
/// },
/// alarmConfiguration: {
/// alarms: ["my-alarm-name"],
/// enabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.codedeploy.DeploymentConfig("foo",
/// deployment_config_name="test-deployment-config",
/// minimum_healthy_hosts={
/// "type": "HOST_COUNT",
/// "value": 2,
/// })
/// foo_deployment_group = aws.codedeploy.DeploymentGroup("foo",
/// app_name=foo_app["name"],
/// deployment_group_name="bar",
/// service_role_arn=foo_role["arn"],
/// deployment_config_name=foo.id,
/// ec2_tag_filters=[{
/// "key": "filterkey",
/// "type": "KEY_AND_VALUE",
/// "value": "filtervalue",
/// }],
/// trigger_configurations=[{
/// "trigger_events": ["DeploymentFailure"],
/// "trigger_name": "foo-trigger",
/// "trigger_target_arn": "foo-topic-arn",
/// }],
/// auto_rollback_configuration={
/// "enabled": True,
/// "events": ["DEPLOYMENT_FAILURE"],
/// },
/// alarm_configuration={
/// "alarms": ["my-alarm-name"],
/// "enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.CodeDeploy.DeploymentConfig("foo", new()
/// {
/// DeploymentConfigName = "test-deployment-config",
/// MinimumHealthyHosts = new Aws.CodeDeploy.Inputs.DeploymentConfigMinimumHealthyHostsArgs
/// {
/// Type = "HOST_COUNT",
/// Value = 2,
/// },
/// });
///
/// var fooDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("foo", new()
/// {
/// AppName = fooApp.Name,
/// DeploymentGroupName = "bar",
/// ServiceRoleArn = fooRole.Arn,
/// DeploymentConfigName = foo.Id,
/// Ec2TagFilters = new[]
/// {
/// new Aws.CodeDeploy.Inputs.DeploymentGroupEc2TagFilterArgs
/// {
/// Key = "filterkey",
/// Type = "KEY_AND_VALUE",
/// Value = "filtervalue",
/// },
/// },
/// TriggerConfigurations = new[]
/// {
/// new Aws.CodeDeploy.Inputs.DeploymentGroupTriggerConfigurationArgs
/// {
/// TriggerEvents = new[]
/// {
/// "DeploymentFailure",
/// },
/// TriggerName = "foo-trigger",
/// TriggerTargetArn = "foo-topic-arn",
/// },
/// },
/// AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
/// {
/// Enabled = true,
/// Events = new[]
/// {
/// "DEPLOYMENT_FAILURE",
/// },
/// },
/// AlarmConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAlarmConfigurationArgs
/// {
/// Alarms = new[]
/// {
/// "my-alarm-name",
/// },
/// Enabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foo, err := codedeploy.NewDeploymentConfig(ctx, "foo", &codedeploy.DeploymentConfigArgs{
/// DeploymentConfigName: pulumi.String("test-deployment-config"),
/// MinimumHealthyHosts: &codedeploy.DeploymentConfigMinimumHealthyHostsArgs{
/// Type:  pulumi.String("HOST_COUNT"),
/// Value: pulumi.Int(2),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codedeploy.NewDeploymentGroup(ctx, "foo", &codedeploy.DeploymentGroupArgs{
/// AppName:              pulumi.Any(fooApp.Name),
/// DeploymentGroupName:  pulumi.String("bar"),
/// ServiceRoleArn:       pulumi.Any(fooRole.Arn),
/// DeploymentConfigName: foo.ID(),
/// Ec2TagFilters: codedeploy.DeploymentGroupEc2TagFilterArray{
/// &codedeploy.DeploymentGroupEc2TagFilterArgs{
/// Key:   pulumi.String("filterkey"),
/// Type:  pulumi.String("KEY_AND_VALUE"),
/// Value: pulumi.String("filtervalue"),
/// },
/// },
/// TriggerConfigurations: codedeploy.DeploymentGroupTriggerConfigurationArray{
/// &codedeploy.DeploymentGroupTriggerConfigurationArgs{
/// TriggerEvents: pulumi.StringArray{
/// pulumi.String("DeploymentFailure"),
/// },
/// TriggerName:      pulumi.String("foo-trigger"),
/// TriggerTargetArn: pulumi.String("foo-topic-arn"),
/// },
/// },
/// AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Events: pulumi.StringArray{
/// pulumi.String("DEPLOYMENT_FAILURE"),
/// },
/// },
/// AlarmConfiguration: &codedeploy.DeploymentGroupAlarmConfigurationArgs{
/// Alarms: pulumi.StringArray{
/// pulumi.String("my-alarm-name"),
/// },
/// Enabled: pulumi.Bool(true),
/// },
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
/// import com.pulumi.aws.codedeploy.DeploymentConfig;
/// import com.pulumi.aws.codedeploy.DeploymentConfigArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentConfigMinimumHealthyHostsArgs;
/// import com.pulumi.aws.codedeploy.DeploymentGroup;
/// import com.pulumi.aws.codedeploy.DeploymentGroupArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupEc2TagFilterArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupTriggerConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAlarmConfigurationArgs;
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
/// var foo = new DeploymentConfig("foo", DeploymentConfigArgs.builder()
/// .deploymentConfigName("test-deployment-config")
/// .minimumHealthyHosts(DeploymentConfigMinimumHealthyHostsArgs.builder()
/// .type("HOST_COUNT")
/// .value(2)
/// .build())
/// .build());
///
/// var fooDeploymentGroup = new DeploymentGroup("fooDeploymentGroup", DeploymentGroupArgs.builder()
/// .appName(fooApp.name())
/// .deploymentGroupName("bar")
/// .serviceRoleArn(fooRole.arn())
/// .deploymentConfigName(foo.id())
/// .ec2TagFilters(DeploymentGroupEc2TagFilterArgs.builder()
/// .key("filterkey")
/// .type("KEY_AND_VALUE")
/// .value("filtervalue")
/// .build())
/// .triggerConfigurations(DeploymentGroupTriggerConfigurationArgs.builder()
/// .triggerEvents("DeploymentFailure")
/// .triggerName("foo-trigger")
/// .triggerTargetArn("foo-topic-arn")
/// .build())
/// .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
/// .enabled(true)
/// .events("DEPLOYMENT_FAILURE")
/// .build())
/// .alarmConfiguration(DeploymentGroupAlarmConfigurationArgs.builder()
/// .alarms("my-alarm-name")
/// .enabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:codedeploy:DeploymentConfig
/// properties:
/// deploymentConfigName: test-deployment-config
/// minimumHealthyHosts:
/// type: HOST_COUNT
/// value: 2
/// fooDeploymentGroup:
/// type: aws:codedeploy:DeploymentGroup
/// name: foo
/// properties:
/// appName: ${fooApp.name}
/// deploymentGroupName: bar
/// serviceRoleArn: ${fooRole.arn}
/// deploymentConfigName: ${foo.id}
/// ec2TagFilters:
/// - key: filterkey
/// type: KEY_AND_VALUE
/// value: filtervalue
/// triggerConfigurations:
/// - triggerEvents:
/// - DeploymentFailure
/// triggerName: foo-trigger
/// triggerTargetArn: foo-topic-arn
/// autoRollbackConfiguration:
/// enabled: true
/// events:
/// - DEPLOYMENT_FAILURE
/// alarmConfiguration:
/// alarms:
/// - my-alarm-name
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Lambda Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.codedeploy.DeploymentConfig("foo", {
/// deploymentConfigName: "test-deployment-config",
/// computePlatform: "Lambda",
/// trafficRoutingConfig: {
/// type: "TimeBasedLinear",
/// timeBasedLinear: {
/// interval: 10,
/// percentage: 10,
/// },
/// },
/// });
/// const fooDeploymentGroup = new aws.codedeploy.DeploymentGroup("foo", {
/// appName: fooApp.name,
/// deploymentGroupName: "bar",
/// serviceRoleArn: fooRole.arn,
/// deploymentConfigName: foo.id,
/// autoRollbackConfiguration: {
/// enabled: true,
/// events: ["DEPLOYMENT_STOP_ON_ALARM"],
/// },
/// alarmConfiguration: {
/// alarms: ["my-alarm-name"],
/// enabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.codedeploy.DeploymentConfig("foo",
/// deployment_config_name="test-deployment-config",
/// compute_platform="Lambda",
/// traffic_routing_config={
/// "type": "TimeBasedLinear",
/// "time_based_linear": {
/// "interval": 10,
/// "percentage": 10,
/// },
/// })
/// foo_deployment_group = aws.codedeploy.DeploymentGroup("foo",
/// app_name=foo_app["name"],
/// deployment_group_name="bar",
/// service_role_arn=foo_role["arn"],
/// deployment_config_name=foo.id,
/// auto_rollback_configuration={
/// "enabled": True,
/// "events": ["DEPLOYMENT_STOP_ON_ALARM"],
/// },
/// alarm_configuration={
/// "alarms": ["my-alarm-name"],
/// "enabled": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.CodeDeploy.DeploymentConfig("foo", new()
/// {
/// DeploymentConfigName = "test-deployment-config",
/// ComputePlatform = "Lambda",
/// TrafficRoutingConfig = new Aws.CodeDeploy.Inputs.DeploymentConfigTrafficRoutingConfigArgs
/// {
/// Type = "TimeBasedLinear",
/// TimeBasedLinear = new Aws.CodeDeploy.Inputs.DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs
/// {
/// Interval = 10,
/// Percentage = 10,
/// },
/// },
/// });
///
/// var fooDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("foo", new()
/// {
/// AppName = fooApp.Name,
/// DeploymentGroupName = "bar",
/// ServiceRoleArn = fooRole.Arn,
/// DeploymentConfigName = foo.Id,
/// AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
/// {
/// Enabled = true,
/// Events = new[]
/// {
/// "DEPLOYMENT_STOP_ON_ALARM",
/// },
/// },
/// AlarmConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAlarmConfigurationArgs
/// {
/// Alarms = new[]
/// {
/// "my-alarm-name",
/// },
/// Enabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foo, err := codedeploy.NewDeploymentConfig(ctx, "foo", &codedeploy.DeploymentConfigArgs{
/// DeploymentConfigName: pulumi.String("test-deployment-config"),
/// ComputePlatform:      pulumi.String("Lambda"),
/// TrafficRoutingConfig: &codedeploy.DeploymentConfigTrafficRoutingConfigArgs{
/// Type: pulumi.String("TimeBasedLinear"),
/// TimeBasedLinear: &codedeploy.DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs{
/// Interval:   pulumi.Int(10),
/// Percentage: pulumi.Int(10),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codedeploy.NewDeploymentGroup(ctx, "foo", &codedeploy.DeploymentGroupArgs{
/// AppName:              pulumi.Any(fooApp.Name),
/// DeploymentGroupName:  pulumi.String("bar"),
/// ServiceRoleArn:       pulumi.Any(fooRole.Arn),
/// DeploymentConfigName: foo.ID(),
/// AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// Enabled: pulumi.Bool(true),
/// Events: pulumi.StringArray{
/// pulumi.String("DEPLOYMENT_STOP_ON_ALARM"),
/// },
/// },
/// AlarmConfiguration: &codedeploy.DeploymentGroupAlarmConfigurationArgs{
/// Alarms: pulumi.StringArray{
/// pulumi.String("my-alarm-name"),
/// },
/// Enabled: pulumi.Bool(true),
/// },
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
/// import com.pulumi.aws.codedeploy.DeploymentConfig;
/// import com.pulumi.aws.codedeploy.DeploymentConfigArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentConfigTrafficRoutingConfigArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs;
/// import com.pulumi.aws.codedeploy.DeploymentGroup;
/// import com.pulumi.aws.codedeploy.DeploymentGroupArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAlarmConfigurationArgs;
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
/// var foo = new DeploymentConfig("foo", DeploymentConfigArgs.builder()
/// .deploymentConfigName("test-deployment-config")
/// .computePlatform("Lambda")
/// .trafficRoutingConfig(DeploymentConfigTrafficRoutingConfigArgs.builder()
/// .type("TimeBasedLinear")
/// .timeBasedLinear(DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs.builder()
/// .interval(10)
/// .percentage(10)
/// .build())
/// .build())
/// .build());
///
/// var fooDeploymentGroup = new DeploymentGroup("fooDeploymentGroup", DeploymentGroupArgs.builder()
/// .appName(fooApp.name())
/// .deploymentGroupName("bar")
/// .serviceRoleArn(fooRole.arn())
/// .deploymentConfigName(foo.id())
/// .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
/// .enabled(true)
/// .events("DEPLOYMENT_STOP_ON_ALARM")
/// .build())
/// .alarmConfiguration(DeploymentGroupAlarmConfigurationArgs.builder()
/// .alarms("my-alarm-name")
/// .enabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:codedeploy:DeploymentConfig
/// properties:
/// deploymentConfigName: test-deployment-config
/// computePlatform: Lambda
/// trafficRoutingConfig:
/// type: TimeBasedLinear
/// timeBasedLinear:
/// interval: 10
/// percentage: 10
/// fooDeploymentGroup:
/// type: aws:codedeploy:DeploymentGroup
/// name: foo
/// properties:
/// appName: ${fooApp.name}
/// deploymentGroupName: bar
/// serviceRoleArn: ${fooRole.arn}
/// deploymentConfigName: ${foo.id}
/// autoRollbackConfiguration:
/// enabled: true
/// events:
/// - DEPLOYMENT_STOP_ON_ALARM
/// alarmConfiguration:
/// alarms:
/// - my-alarm-name
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Deployment Configurations using the <span pulumi-lang-nodejs="`deploymentConfigName`" pulumi-lang-dotnet="`DeploymentConfigName`" pulumi-lang-go="`deploymentConfigName`" pulumi-lang-python="`deployment_config_name`" pulumi-lang-yaml="`deploymentConfigName`" pulumi-lang-java="`deploymentConfigName`">`deployment_config_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/deploymentConfig:DeploymentConfig example my-deployment-config
/// ```
class DeploymentConfig extends CustomResource {
  /// The ARN of the deployment config.
  late final Output<String> arn;

  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  late final Output<String?> computePlatform;

  /// The AWS Assigned deployment config id
  late final Output<String> deploymentConfigId;

  /// The name of the deployment config.
  late final Output<String> deploymentConfigName;

  /// A<span pulumi-lang-nodejs=" minimumHealthyHosts " pulumi-lang-dotnet=" MinimumHealthyHosts " pulumi-lang-go=" minimumHealthyHosts " pulumi-lang-python=" minimum_healthy_hosts " pulumi-lang-yaml=" minimumHealthyHosts " pulumi-lang-java=" minimumHealthyHosts "> minimum_healthy_hosts </span>block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  late final Output<DeploymentConfigMinimumHealthyHosts?> minimumHealthyHosts;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A<span pulumi-lang-nodejs=" trafficRoutingConfig " pulumi-lang-dotnet=" TrafficRoutingConfig " pulumi-lang-go=" trafficRoutingConfig " pulumi-lang-python=" traffic_routing_config " pulumi-lang-yaml=" trafficRoutingConfig " pulumi-lang-java=" trafficRoutingConfig "> traffic_routing_config </span>block. Traffic Routing Config is documented below.
  late final Output<DeploymentConfigTrafficRoutingConfig?> trafficRoutingConfig;

  /// A<span pulumi-lang-nodejs=" zonalConfig " pulumi-lang-dotnet=" ZonalConfig " pulumi-lang-go=" zonalConfig " pulumi-lang-python=" zonal_config " pulumi-lang-yaml=" zonalConfig " pulumi-lang-java=" zonalConfig "> zonal_config </span>block. Zonal Config is documented below.
  late final Output<DeploymentConfigZonalConfig?> zonalConfig;

  DeploymentConfig(
    String name, {
    DeploymentConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/deploymentConfig:DeploymentConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.computePlatform = Output.createUnknown<String?>();
    this.deploymentConfigId = Output.createUnknown<String>();
    this.deploymentConfigName = Output.createUnknown<String>();
    this.minimumHealthyHosts =
        Output.createUnknown<DeploymentConfigMinimumHealthyHosts?>();
    this.region = Output.createUnknown<String>();
    this.trafficRoutingConfig =
        Output.createUnknown<DeploymentConfigTrafficRoutingConfig?>();
    this.zonalConfig = Output.createUnknown<DeploymentConfigZonalConfig?>();
  }
}
