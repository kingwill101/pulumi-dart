import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_config_args.dart';
import 'deployment_config_minimum_healthy_hosts.dart';
import 'deployment_config_state.dart';
import 'deployment_config_traffic_routing_config.dart';
import 'deployment_config_zonal_config.dart';

/// Provides a CodeDeploy deployment config for an application
///
/// ## Example Usage
///
/// ### Server Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.codedeploy.DeploymentConfig("foo", {
///     minimumHealthyHosts: {
///         type: "HOST_COUNT",
///         value: 2,
///     },
///     deploymentConfigName: "test-deployment-config",
/// });
/// const fooDeploymentGroup = new aws.codedeploy.DeploymentGroup("foo", {
///     autoRollbackConfiguration: {
///         enabled: true,
///         events: ["DEPLOYMENT_FAILURE"],
///     },
///     alarmConfiguration: {
///         alarms: ["my-alarm-name"],
///         enabled: true,
///     },
///     ec2TagFilters: [{
///         key: "filterkey",
///         type: "KEY_AND_VALUE",
///         value: "filtervalue",
///     }],
///     triggerConfigurations: [{
///         triggerEvents: ["DeploymentFailure"],
///         triggerName: "foo-trigger",
///         triggerTargetArn: "foo-topic-arn",
///     }],
///     appName: fooApp.name,
///     deploymentGroupName: "bar",
///     serviceRoleArn: fooRole.arn,
///     deploymentConfigName: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.codedeploy.DeploymentConfig("foo",
///     minimum_healthy_hosts={
///         "type": "HOST_COUNT",
///         "value": 2,
///     },
///     deployment_config_name="test-deployment-config")
/// foo_deployment_group = aws.codedeploy.DeploymentGroup("foo",
///     auto_rollback_configuration={
///         "enabled": True,
///         "events": ["DEPLOYMENT_FAILURE"],
///     },
///     alarm_configuration={
///         "alarms": ["my-alarm-name"],
///         "enabled": True,
///     },
///     ec2_tag_filters=[{
///         "key": "filterkey",
///         "type": "KEY_AND_VALUE",
///         "value": "filtervalue",
///     }],
///     trigger_configurations=[{
///         "trigger_events": ["DeploymentFailure"],
///         "trigger_name": "foo-trigger",
///         "trigger_target_arn": "foo-topic-arn",
///     }],
///     app_name=foo_app["name"],
///     deployment_group_name="bar",
///     service_role_arn=foo_role["arn"],
///     deployment_config_name=foo.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.CodeDeploy.DeploymentConfig("foo", new()
///     {
///         MinimumHealthyHosts = new Aws.CodeDeploy.Inputs.DeploymentConfigMinimumHealthyHostsArgs
///         {
///             Type = "HOST_COUNT",
///             Value = 2,
///         },
///         DeploymentConfigName = "test-deployment-config",
///     });
///
///     var fooDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("foo", new()
///     {
///         AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
///         {
///             Enabled = true,
///             Events = new[]
///             {
///                 "DEPLOYMENT_FAILURE",
///             },
///         },
///         AlarmConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAlarmConfigurationArgs
///         {
///             Alarms = new[]
///             {
///                 "my-alarm-name",
///             },
///             Enabled = true,
///         },
///         Ec2TagFilters = new[]
///         {
///             new Aws.CodeDeploy.Inputs.DeploymentGroupEc2TagFilterArgs
///             {
///                 Key = "filterkey",
///                 Type = "KEY_AND_VALUE",
///                 Value = "filtervalue",
///             },
///         },
///         TriggerConfigurations = new[]
///         {
///             new Aws.CodeDeploy.Inputs.DeploymentGroupTriggerConfigurationArgs
///             {
///                 TriggerEvents = new[]
///                 {
///                     "DeploymentFailure",
///                 },
///                 TriggerName = "foo-trigger",
///                 TriggerTargetArn = "foo-topic-arn",
///             },
///         },
///         AppName = fooApp.Name,
///         DeploymentGroupName = "bar",
///         ServiceRoleArn = fooRole.Arn,
///         DeploymentConfigName = foo.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := codedeploy.NewDeploymentConfig(ctx, "foo", &codedeploy.DeploymentConfigArgs{
/// 			MinimumHealthyHosts: &codedeploy.DeploymentConfigMinimumHealthyHostsArgs{
/// 				Type:  pulumi.String("HOST_COUNT"),
/// 				Value: pulumi.Int(2),
/// 			},
/// 			DeploymentConfigName: pulumi.String("test-deployment-config"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codedeploy.NewDeploymentGroup(ctx, "foo", &codedeploy.DeploymentGroupArgs{
/// 			AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("DEPLOYMENT_FAILURE"),
/// 				},
/// 			},
/// 			AlarmConfiguration: &codedeploy.DeploymentGroupAlarmConfigurationArgs{
/// 				Alarms: pulumi.StringArray{
/// 					pulumi.String("my-alarm-name"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			Ec2TagFilters: codedeploy.DeploymentGroupEc2TagFilterArray{
/// 				&codedeploy.DeploymentGroupEc2TagFilterArgs{
/// 					Key:   pulumi.String("filterkey"),
/// 					Type:  pulumi.String("KEY_AND_VALUE"),
/// 					Value: pulumi.String("filtervalue"),
/// 				},
/// 			},
/// 			TriggerConfigurations: codedeploy.DeploymentGroupTriggerConfigurationArray{
/// 				&codedeploy.DeploymentGroupTriggerConfigurationArgs{
/// 					TriggerEvents: pulumi.StringArray{
/// 						pulumi.String("DeploymentFailure"),
/// 					},
/// 					TriggerName:      pulumi.String("foo-trigger"),
/// 					TriggerTargetArn: pulumi.String("foo-topic-arn"),
/// 				},
/// 			},
/// 			AppName:              pulumi.Any(fooApp.Name),
/// 			DeploymentGroupName:  pulumi.String("bar"),
/// 			ServiceRoleArn:       pulumi.Any(fooRole.Arn),
/// 			DeploymentConfigName: foo.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codedeploy_deploymentconfig" "foo" {
///   minimum_healthy_hosts = {
///     type  = "HOST_COUNT"
///     value = 2
///   }
///   deployment_config_name = "test-deployment-config"
/// }
/// resource "aws_codedeploy_deploymentgroup" "foo" {
///   auto_rollback_configuration = {
///     enabled = true
///     events  = ["DEPLOYMENT_FAILURE"]
///   }
///   alarm_configuration = {
///     alarms  = ["my-alarm-name"]
///     enabled = true
///   }
///   ec2_tag_filters {
///     key   = "filterkey"
///     type  = "KEY_AND_VALUE"
///     value = "filtervalue"
///   }
///   trigger_configurations {
///     trigger_events     = ["DeploymentFailure"]
///     trigger_name       = "foo-trigger"
///     trigger_target_arn = "foo-topic-arn"
///   }
///   app_name               = fooApp.name
///   deployment_group_name  = "bar"
///   service_role_arn       = fooRole.arn
///   deployment_config_name = aws_codedeploy_deploymentconfig.foo.id
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
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAutoRollbackConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupAlarmConfigurationArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupEc2TagFilterArgs;
/// import com.pulumi.aws.codedeploy.inputs.DeploymentGroupTriggerConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var foo = new DeploymentConfig("foo", DeploymentConfigArgs.builder()
///             .minimumHealthyHosts(DeploymentConfigMinimumHealthyHostsArgs.builder()
///                 .type("HOST_COUNT")
///                 .value(2)
///                 .build())
///             .deploymentConfigName("test-deployment-config")
///             .build());
///
///         var fooDeploymentGroup = new DeploymentGroup("fooDeploymentGroup", DeploymentGroupArgs.builder()
///             .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
///                 .enabled(true)
///                 .events("DEPLOYMENT_FAILURE")
///                 .build())
///             .alarmConfiguration(DeploymentGroupAlarmConfigurationArgs.builder()
///                 .alarms("my-alarm-name")
///                 .enabled(true)
///                 .build())
///             .ec2TagFilters(DeploymentGroupEc2TagFilterArgs.builder()
///                 .key("filterkey")
///                 .type("KEY_AND_VALUE")
///                 .value("filtervalue")
///                 .build())
///             .triggerConfigurations(DeploymentGroupTriggerConfigurationArgs.builder()
///                 .triggerEvents("DeploymentFailure")
///                 .triggerName("foo-trigger")
///                 .triggerTargetArn("foo-topic-arn")
///                 .build())
///             .appName(fooApp.name())
///             .deploymentGroupName("bar")
///             .serviceRoleArn(fooRole.arn())
///             .deploymentConfigName(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:codedeploy:DeploymentConfig
///     properties:
///       minimumHealthyHosts:
///         type: HOST_COUNT
///         value: 2
///       deploymentConfigName: test-deployment-config
///   fooDeploymentGroup:
///     type: aws:codedeploy:DeploymentGroup
///     name: foo
///     properties:
///       autoRollbackConfiguration:
///         enabled: true
///         events:
///           - DEPLOYMENT_FAILURE
///       alarmConfiguration:
///         alarms:
///           - my-alarm-name
///         enabled: true
///       ec2TagFilters:
///         - key: filterkey
///           type: KEY_AND_VALUE
///           value: filtervalue
///       triggerConfigurations:
///         - triggerEvents:
///             - DeploymentFailure
///           triggerName: foo-trigger
///           triggerTargetArn: foo-topic-arn
///       appName: ${fooApp.name}
///       deploymentGroupName: bar
///       serviceRoleArn: ${fooRole.arn}
///       deploymentConfigName: ${foo.id}
/// ```
///
///
/// ### Lambda Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.codedeploy.DeploymentConfig("foo", {
///     trafficRoutingConfig: {
///         timeBasedLinear: {
///             interval: 10,
///             percentage: 10,
///         },
///         type: "TimeBasedLinear",
///     },
///     deploymentConfigName: "test-deployment-config",
///     computePlatform: "Lambda",
/// });
/// const fooDeploymentGroup = new aws.codedeploy.DeploymentGroup("foo", {
///     autoRollbackConfiguration: {
///         enabled: true,
///         events: ["DEPLOYMENT_STOP_ON_ALARM"],
///     },
///     alarmConfiguration: {
///         alarms: ["my-alarm-name"],
///         enabled: true,
///     },
///     appName: fooApp.name,
///     deploymentGroupName: "bar",
///     serviceRoleArn: fooRole.arn,
///     deploymentConfigName: foo.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.codedeploy.DeploymentConfig("foo",
///     traffic_routing_config={
///         "time_based_linear": {
///             "interval": 10,
///             "percentage": 10,
///         },
///         "type": "TimeBasedLinear",
///     },
///     deployment_config_name="test-deployment-config",
///     compute_platform="Lambda")
/// foo_deployment_group = aws.codedeploy.DeploymentGroup("foo",
///     auto_rollback_configuration={
///         "enabled": True,
///         "events": ["DEPLOYMENT_STOP_ON_ALARM"],
///     },
///     alarm_configuration={
///         "alarms": ["my-alarm-name"],
///         "enabled": True,
///     },
///     app_name=foo_app["name"],
///     deployment_group_name="bar",
///     service_role_arn=foo_role["arn"],
///     deployment_config_name=foo.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.CodeDeploy.DeploymentConfig("foo", new()
///     {
///         TrafficRoutingConfig = new Aws.CodeDeploy.Inputs.DeploymentConfigTrafficRoutingConfigArgs
///         {
///             TimeBasedLinear = new Aws.CodeDeploy.Inputs.DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs
///             {
///                 Interval = 10,
///                 Percentage = 10,
///             },
///             Type = "TimeBasedLinear",
///         },
///         DeploymentConfigName = "test-deployment-config",
///         ComputePlatform = "Lambda",
///     });
///
///     var fooDeploymentGroup = new Aws.CodeDeploy.DeploymentGroup("foo", new()
///     {
///         AutoRollbackConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAutoRollbackConfigurationArgs
///         {
///             Enabled = true,
///             Events = new[]
///             {
///                 "DEPLOYMENT_STOP_ON_ALARM",
///             },
///         },
///         AlarmConfiguration = new Aws.CodeDeploy.Inputs.DeploymentGroupAlarmConfigurationArgs
///         {
///             Alarms = new[]
///             {
///                 "my-alarm-name",
///             },
///             Enabled = true,
///         },
///         AppName = fooApp.Name,
///         DeploymentGroupName = "bar",
///         ServiceRoleArn = fooRole.Arn,
///         DeploymentConfigName = foo.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codedeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := codedeploy.NewDeploymentConfig(ctx, "foo", &codedeploy.DeploymentConfigArgs{
/// 			TrafficRoutingConfig: &codedeploy.DeploymentConfigTrafficRoutingConfigArgs{
/// 				TimeBasedLinear: &codedeploy.DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs{
/// 					Interval:   pulumi.Int(10),
/// 					Percentage: pulumi.Int(10),
/// 				},
/// 				Type: pulumi.String("TimeBasedLinear"),
/// 			},
/// 			DeploymentConfigName: pulumi.String("test-deployment-config"),
/// 			ComputePlatform:      pulumi.String("Lambda"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codedeploy.NewDeploymentGroup(ctx, "foo", &codedeploy.DeploymentGroupArgs{
/// 			AutoRollbackConfiguration: &codedeploy.DeploymentGroupAutoRollbackConfigurationArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Events: pulumi.StringArray{
/// 					pulumi.String("DEPLOYMENT_STOP_ON_ALARM"),
/// 				},
/// 			},
/// 			AlarmConfiguration: &codedeploy.DeploymentGroupAlarmConfigurationArgs{
/// 				Alarms: pulumi.StringArray{
/// 					pulumi.String("my-alarm-name"),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			AppName:              pulumi.Any(fooApp.Name),
/// 			DeploymentGroupName:  pulumi.String("bar"),
/// 			ServiceRoleArn:       pulumi.Any(fooRole.Arn),
/// 			DeploymentConfigName: foo.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_codedeploy_deploymentconfig" "foo" {
///   traffic_routing_config = {
///     time_based_linear = {
///       interval   = 10
///       percentage = 10
///     }
///     type = "TimeBasedLinear"
///   }
///   deployment_config_name = "test-deployment-config"
///   compute_platform       = "Lambda"
/// }
/// resource "aws_codedeploy_deploymentgroup" "foo" {
///   auto_rollback_configuration = {
///     enabled = true
///     events  = ["DEPLOYMENT_STOP_ON_ALARM"]
///   }
///   alarm_configuration = {
///     alarms  = ["my-alarm-name"]
///     enabled = true
///   }
///   app_name               = fooApp.name
///   deployment_group_name  = "bar"
///   service_role_arn       = fooRole.arn
///   deployment_config_name = aws_codedeploy_deploymentconfig.foo.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var foo = new DeploymentConfig("foo", DeploymentConfigArgs.builder()
///             .trafficRoutingConfig(DeploymentConfigTrafficRoutingConfigArgs.builder()
///                 .timeBasedLinear(DeploymentConfigTrafficRoutingConfigTimeBasedLinearArgs.builder()
///                     .interval(10)
///                     .percentage(10)
///                     .build())
///                 .type("TimeBasedLinear")
///                 .build())
///             .deploymentConfigName("test-deployment-config")
///             .computePlatform("Lambda")
///             .build());
///
///         var fooDeploymentGroup = new DeploymentGroup("fooDeploymentGroup", DeploymentGroupArgs.builder()
///             .autoRollbackConfiguration(DeploymentGroupAutoRollbackConfigurationArgs.builder()
///                 .enabled(true)
///                 .events("DEPLOYMENT_STOP_ON_ALARM")
///                 .build())
///             .alarmConfiguration(DeploymentGroupAlarmConfigurationArgs.builder()
///                 .alarms("my-alarm-name")
///                 .enabled(true)
///                 .build())
///             .appName(fooApp.name())
///             .deploymentGroupName("bar")
///             .serviceRoleArn(fooRole.arn())
///             .deploymentConfigName(foo.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:codedeploy:DeploymentConfig
///     properties:
///       trafficRoutingConfig:
///         timeBasedLinear:
///           interval: 10
///           percentage: 10
///         type: TimeBasedLinear
///       deploymentConfigName: test-deployment-config
///       computePlatform: Lambda
///   fooDeploymentGroup:
///     type: aws:codedeploy:DeploymentGroup
///     name: foo
///     properties:
///       autoRollbackConfiguration:
///         enabled: true
///         events:
///           - DEPLOYMENT_STOP_ON_ALARM
///       alarmConfiguration:
///         alarms:
///           - my-alarm-name
///         enabled: true
///       appName: ${fooApp.name}
///       deploymentGroupName: bar
///       serviceRoleArn: ${fooRole.arn}
///       deploymentConfigName: ${foo.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeDeploy Deployment Configurations using the `deploymentConfigName`. For example:
///
/// ```sh
/// $ pulumi import aws:codedeploy/deploymentConfig:DeploymentConfig example my-deployment-config
/// ```
class DeploymentConfig extends pulumi.CustomResource {
  /// The ARN of the deployment config.
  late final pulumi.Output<String> arn;
  /// The compute platform can be `Server`, `Lambda`, or `ECS`. Default is `Server`.
  late final pulumi.Output<String?> computePlatform;
  /// The AWS Assigned deployment config id
  late final pulumi.Output<String> deploymentConfigId;
  /// The name of the deployment config.
  late final pulumi.Output<String> deploymentConfigName;
  /// A minimumHealthyHosts block. Required for `Server` compute platform. Minimum Healthy Hosts are documented below.
  late final pulumi.Output<DeploymentConfigMinimumHealthyHosts?> minimumHealthyHosts;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A trafficRoutingConfig block. Traffic Routing Config is documented below.
  late final pulumi.Output<DeploymentConfigTrafficRoutingConfig?> trafficRoutingConfig;
  /// A zonalConfig block. Zonal Config is documented below.
  late final pulumi.Output<DeploymentConfigZonalConfig?> zonalConfig;

  /// Creates a new [DeploymentConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentConfig]. {@macro pulumi_codedeploy_deployment_config_deployment_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentConfig(
    String name, {
    DeploymentConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/deploymentConfig:DeploymentConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String?>('computePlatform');
    deploymentConfigId = registerOutput<String>('deploymentConfigId');
    deploymentConfigName = registerOutput<String>('deploymentConfigName');
    minimumHealthyHosts = registerOutput<DeploymentConfigMinimumHealthyHosts?>('minimumHealthyHosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigMinimumHealthyHosts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    trafficRoutingConfig = registerOutput<DeploymentConfigTrafficRoutingConfig?>('trafficRoutingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigTrafficRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalConfig = registerOutput<DeploymentConfigZonalConfig?>('zonalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigZonalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DeploymentConfig] resource's state with the given [name] and [id].
  static DeploymentConfig get(
    String name,
    pulumi.Input<String> id, {
    DeploymentConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DeploymentConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DeploymentConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codedeploy/deploymentConfig:DeploymentConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String?>('computePlatform');
    deploymentConfigId = registerOutput<String>('deploymentConfigId');
    deploymentConfigName = registerOutput<String>('deploymentConfigName');
    minimumHealthyHosts = registerOutput<DeploymentConfigMinimumHealthyHosts?>('minimumHealthyHosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigMinimumHealthyHosts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    trafficRoutingConfig = registerOutput<DeploymentConfigTrafficRoutingConfig?>('trafficRoutingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigTrafficRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalConfig = registerOutput<DeploymentConfigZonalConfig?>('zonalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigZonalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DeploymentConfig] resource.
  DeploymentConfig.reference(String urn)
    : super(
        'aws:codedeploy/deploymentConfig:DeploymentConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    computePlatform = registerOutput<String?>('computePlatform');
    deploymentConfigId = registerOutput<String>('deploymentConfigId');
    deploymentConfigName = registerOutput<String>('deploymentConfigName');
    minimumHealthyHosts = registerOutput<DeploymentConfigMinimumHealthyHosts?>('minimumHealthyHosts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigMinimumHealthyHosts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    trafficRoutingConfig = registerOutput<DeploymentConfigTrafficRoutingConfig?>('trafficRoutingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigTrafficRoutingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zonalConfig = registerOutput<DeploymentConfigZonalConfig?>('zonalConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentConfigZonalConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
