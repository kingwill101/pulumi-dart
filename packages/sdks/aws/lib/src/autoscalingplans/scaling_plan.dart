import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_application_source.dart';
import 'scaling_plan_args.dart';
import 'scaling_plan_state.dart';

/// Manages an AWS Auto Scaling scaling plan.
/// More information can be found in the [AWS Auto Scaling User Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
///
/// &gt; **NOTE:** The AWS Auto Scaling service uses an AWS IAM service-linked role to manage predictive scaling of Amazon EC2 Auto Scaling groups. The service attempts to automatically create this role the first time a scaling plan with predictive scaling enabled is created.
/// An `aws.iam.ServiceLinkedRole` resource can be used to manually manage this role.
/// See the [AWS documentation](https://docs.aws.amazon.com/autoscaling/plans/userguide/aws-auto-scaling-service-linked-roles.html#create-service-linked-role-manual) for more details.
///
/// ## Example Usage
///
/// ### Basic Dynamic Scaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const available = aws.getAvailabilityZones({});
/// const example = new aws.autoscaling.Group("example", {
///     namePrefix: "example",
///     launchConfiguration: exampleAwsLaunchConfiguration.name,
///     availabilityZones: [available.then(available => available.names?.[0])],
///     minSize: 0,
///     maxSize: 3,
///     tags: [{
///         key: "application",
///         value: "example",
///         propagateAtLaunch: true,
///     }],
/// });
/// const exampleScalingPlan = new aws.autoscalingplans.ScalingPlan("example", {
///     name: "example-dynamic-cost-optimization",
///     applicationSource: {
///         tagFilters: [{
///             key: "application",
///             values: ["example"],
///         }],
///     },
///     scalingInstructions: [{
///         maxCapacity: 3,
///         minCapacity: 0,
///         resourceId: std.format({
///             input: "autoScalingGroup/%s",
///             args: [example.name],
///         }).then(invoke => invoke.result),
///         scalableDimension: "autoscaling:autoScalingGroup:DesiredCapacity",
///         serviceNamespace: "autoscaling",
///         targetTrackingConfigurations: [{
///             predefinedScalingMetricSpecification: {
///                 predefinedScalingMetricType: "ASGAverageCPUUtilization",
///             },
///             targetValue: 70,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// available = aws.get_availability_zones()
/// example = aws.autoscaling.Group("example",
///     name_prefix="example",
///     launch_configuration=example_aws_launch_configuration["name"],
///     availability_zones=[available.names[0]],
///     min_size=0,
///     max_size=3,
///     tags=[{
///         "key": "application",
///         "value": "example",
///         "propagate_at_launch": True,
///     }])
/// example_scaling_plan = aws.autoscalingplans.ScalingPlan("example",
///     name="example-dynamic-cost-optimization",
///     application_source={
///         "tag_filters": [{
///             "key": "application",
///             "values": ["example"],
///         }],
///     },
///     scaling_instructions=[{
///         "max_capacity": 3,
///         "min_capacity": 0,
///         "resource_id": std.format(input="autoScalingGroup/%s",
///             args=[example.name]).result,
///         "scalable_dimension": "autoscaling:autoScalingGroup:DesiredCapacity",
///         "service_namespace": "autoscaling",
///         "target_tracking_configurations": [{
///             "predefined_scaling_metric_specification": {
///                 "predefined_scaling_metric_type": "ASGAverageCPUUtilization",
///             },
///             "target_value": float(70),
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var example = new Aws.AutoScaling.Group("example", new()
///     {
///         NamePrefix = "example",
///         LaunchConfiguration = exampleAwsLaunchConfiguration.Name,
///         AvailabilityZones = new[]
///         {
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///         },
///         MinSize = 0,
///         MaxSize = 3,
///         Tags = new[]
///         {
///             new Aws.AutoScaling.Inputs.GroupTagArgs
///             {
///                 Key = "application",
///                 Value = "example",
///                 PropagateAtLaunch = true,
///             },
///         },
///     });
///
///     var exampleScalingPlan = new Aws.AutoScalingPlans.ScalingPlan("example", new()
///     {
///         Name = "example-dynamic-cost-optimization",
///         ApplicationSource = new Aws.AutoScalingPlans.Inputs.ScalingPlanApplicationSourceArgs
///         {
///             TagFilters = new[]
///             {
///                 new Aws.AutoScalingPlans.Inputs.ScalingPlanApplicationSourceTagFilterArgs
///                 {
///                     Key = "application",
///                     Values = new[]
///                     {
///                         "example",
///                     },
///                 },
///             },
///         },
///         ScalingInstructions = new[]
///         {
///             new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionArgs
///             {
///                 MaxCapacity = 3,
///                 MinCapacity = 0,
///                 ResourceId = Std.Format.Invoke(new()
///                 {
///                     Input = "autoScalingGroup/%s",
///                     Args = new[]
///                     {
///                         example.Name,
///                     },
///                 }).Apply(invoke => invoke.Result),
///                 ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity",
///                 ServiceNamespace = "autoscaling",
///                 TargetTrackingConfigurations = new[]
///                 {
///                     new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs
///                     {
///                         PredefinedScalingMetricSpecification = new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs
///                         {
///                             PredefinedScalingMetricType = "ASGAverageCPUUtilization",
///                         },
///                         TargetValue = 70,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscalingplans"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// 			NamePrefix:          pulumi.String("example"),
/// 			LaunchConfiguration: pulumi.Any(exampleAwsLaunchConfiguration.Name),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String(available.Names[0]),
/// 			},
/// 			MinSize: pulumi.Int(0),
/// 			MaxSize: pulumi.Int(3),
/// 			Tags: autoscaling.GroupTagArray{
/// 				&autoscaling.GroupTagArgs{
/// 					Key:               pulumi.String("application"),
/// 					Value:             pulumi.String("example"),
/// 					PropagateAtLaunch: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "autoScalingGroup/%s",
/// 			Args: pulumi.StringArray{
/// 				example.Name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = autoscalingplans.NewScalingPlan(ctx, "example", &autoscalingplans.ScalingPlanArgs{
/// 			Name: pulumi.String("example-dynamic-cost-optimization"),
/// 			ApplicationSource: &autoscalingplans.ScalingPlanApplicationSourceArgs{
/// 				TagFilters: autoscalingplans.ScalingPlanApplicationSourceTagFilterArray{
/// 					&autoscalingplans.ScalingPlanApplicationSourceTagFilterArgs{
/// 						Key: pulumi.String("application"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ScalingInstructions: autoscalingplans.ScalingPlanScalingInstructionArray{
/// 				&autoscalingplans.ScalingPlanScalingInstructionArgs{
/// 					MaxCapacity:       pulumi.Int(3),
/// 					MinCapacity:       pulumi.Int(0),
/// 					ResourceId:        pulumi.String(invokeFormat.Result),
/// 					ScalableDimension: pulumi.String("autoscaling:autoScalingGroup:DesiredCapacity"),
/// 					ServiceNamespace:  pulumi.String("autoscaling"),
/// 					TargetTrackingConfigurations: autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationArray{
/// 						&autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs{
/// 							PredefinedScalingMetricSpecification: &autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs{
/// 								PredefinedScalingMetricType: pulumi.String("ASGAverageCPUUtilization"),
/// 							},
/// 							TargetValue: pulumi.Float64(70),
/// 						},
/// 					},
/// 				},
/// 			},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "std_format" "invoke_0" {
///   input = "autoScalingGroup/%s"
///   args  = [aws_autoscaling_group.example.name]
/// }
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_autoscaling_group" "example" {
///   name_prefix          = "example"
///   launch_configuration = exampleAwsLaunchConfiguration.name
///   availability_zones   = [data.aws_getavailabilityzones.available.names[0]]
///   min_size             = 0
///   max_size             = 3
///   tags {
///     key                 = "application"
///     value               = "example"
///     propagate_at_launch = true
///   }
/// }
/// resource "aws_autoscalingplans_scalingplan" "example" {
///   name = "example-dynamic-cost-optimization"
///   application_source = {
///     tag_filters = [{
///       "key"    = "application"
///       "values" = ["example"]
///     }]
///   }
///   scaling_instructions {
///     max_capacity       = 3
///     min_capacity       = 0
///     resource_id        = data.std_format.invoke_0.result
///     scalable_dimension = "autoscaling:autoScalingGroup:DesiredCapacity"
///     service_namespace  = "autoscaling"
///     target_tracking_configurations {
///       predefined_scaling_metric_specification = {
///         predefined_scaling_metric_type = "ASGAverageCPUUtilization"
///       }
///       target_value = 70
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import com.pulumi.aws.autoscalingplans.ScalingPlan;
/// import com.pulumi.aws.autoscalingplans.ScalingPlanArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanApplicationSourceArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanApplicationSourceTagFilterArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var example = new Group("example", GroupArgs.builder()
///             .namePrefix("example")
///             .launchConfiguration(exampleAwsLaunchConfiguration.name())
///             .availabilityZones(available.names()[0])
///             .minSize(0)
///             .maxSize(3)
///             .tags(GroupTagArgs.builder()
///                 .key("application")
///                 .value("example")
///                 .propagateAtLaunch(true)
///                 .build())
///             .build());
///
///         var exampleScalingPlan = new ScalingPlan("exampleScalingPlan", ScalingPlanArgs.builder()
///             .name("example-dynamic-cost-optimization")
///             .applicationSource(ScalingPlanApplicationSourceArgs.builder()
///                 .tagFilters(ScalingPlanApplicationSourceTagFilterArgs.builder()
///                     .key("application")
///                     .values("example")
///                     .build())
///                 .build())
///             .scalingInstructions(ScalingPlanScalingInstructionArgs.builder()
///                 .maxCapacity(3)
///                 .minCapacity(0)
///                 .resourceId(StdFunctions.format(FormatArgs.builder()
///                     .input("autoScalingGroup/%s")
///                     .args(example.name())
///                     .build()).result())
///                 .scalableDimension("autoscaling:autoScalingGroup:DesiredCapacity")
///                 .serviceNamespace("autoscaling")
///                 .targetTrackingConfigurations(ScalingPlanScalingInstructionTargetTrackingConfigurationArgs.builder()
///                     .predefinedScalingMetricSpecification(ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs.builder()
///                         .predefinedScalingMetricType("ASGAverageCPUUtilization")
///                         .build())
///                     .targetValue(70.0)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:autoscaling:Group
///     properties:
///       namePrefix: example
///       launchConfiguration: ${exampleAwsLaunchConfiguration.name}
///       availabilityZones:
///         - ${available.names[0]}
///       minSize: 0
///       maxSize: 3
///       tags:
///         - key: application
///           value: example
///           propagateAtLaunch: true
///   exampleScalingPlan:
///     type: aws:autoscalingplans:ScalingPlan
///     name: example
///     properties:
///       name: example-dynamic-cost-optimization
///       applicationSource:
///         tagFilters:
///           - key: application
///             values:
///               - example
///       scalingInstructions:
///         - maxCapacity: 3
///           minCapacity: 0
///           resourceId:
///             fn::invoke:
///               function: std:format
///               arguments:
///                 input: autoScalingGroup/%s
///                 args:
///                   - ${example.name}
///               return: result
///           scalableDimension: autoscaling:autoScalingGroup:DesiredCapacity
///           serviceNamespace: autoscaling
///           targetTrackingConfigurations:
///             - predefinedScalingMetricSpecification:
///                 predefinedScalingMetricType: ASGAverageCPUUtilization
///               targetValue: 70
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments: {}
/// ```
///
///
/// ### Basic Predictive Scaling
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const available = aws.getAvailabilityZones({});
/// const example = new aws.autoscaling.Group("example", {
///     namePrefix: "example",
///     launchConfiguration: exampleAwsLaunchConfiguration.name,
///     availabilityZones: [available.then(available => available.names?.[0])],
///     minSize: 0,
///     maxSize: 3,
///     tags: [{
///         key: "application",
///         value: "example",
///         propagateAtLaunch: true,
///     }],
/// });
/// const exampleScalingPlan = new aws.autoscalingplans.ScalingPlan("example", {
///     name: "example-predictive-cost-optimization",
///     applicationSource: {
///         tagFilters: [{
///             key: "application",
///             values: ["example"],
///         }],
///     },
///     scalingInstructions: [{
///         disableDynamicScaling: true,
///         maxCapacity: 3,
///         minCapacity: 0,
///         resourceId: std.format({
///             input: "autoScalingGroup/%s",
///             args: [example.name],
///         }).then(invoke => invoke.result),
///         scalableDimension: "autoscaling:autoScalingGroup:DesiredCapacity",
///         serviceNamespace: "autoscaling",
///         targetTrackingConfigurations: [{
///             predefinedScalingMetricSpecification: {
///                 predefinedScalingMetricType: "ASGAverageCPUUtilization",
///             },
///             targetValue: 70,
///         }],
///         predictiveScalingMaxCapacityBehavior: "SetForecastCapacityToMaxCapacity",
///         predictiveScalingMode: "ForecastAndScale",
///         predefinedLoadMetricSpecification: {
///             predefinedLoadMetricType: "ASGTotalCPUUtilization",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// available = aws.get_availability_zones()
/// example = aws.autoscaling.Group("example",
///     name_prefix="example",
///     launch_configuration=example_aws_launch_configuration["name"],
///     availability_zones=[available.names[0]],
///     min_size=0,
///     max_size=3,
///     tags=[{
///         "key": "application",
///         "value": "example",
///         "propagate_at_launch": True,
///     }])
/// example_scaling_plan = aws.autoscalingplans.ScalingPlan("example",
///     name="example-predictive-cost-optimization",
///     application_source={
///         "tag_filters": [{
///             "key": "application",
///             "values": ["example"],
///         }],
///     },
///     scaling_instructions=[{
///         "disable_dynamic_scaling": True,
///         "max_capacity": 3,
///         "min_capacity": 0,
///         "resource_id": std.format(input="autoScalingGroup/%s",
///             args=[example.name]).result,
///         "scalable_dimension": "autoscaling:autoScalingGroup:DesiredCapacity",
///         "service_namespace": "autoscaling",
///         "target_tracking_configurations": [{
///             "predefined_scaling_metric_specification": {
///                 "predefined_scaling_metric_type": "ASGAverageCPUUtilization",
///             },
///             "target_value": float(70),
///         }],
///         "predictive_scaling_max_capacity_behavior": "SetForecastCapacityToMaxCapacity",
///         "predictive_scaling_mode": "ForecastAndScale",
///         "predefined_load_metric_specification": {
///             "predefined_load_metric_type": "ASGTotalCPUUtilization",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var example = new Aws.AutoScaling.Group("example", new()
///     {
///         NamePrefix = "example",
///         LaunchConfiguration = exampleAwsLaunchConfiguration.Name,
///         AvailabilityZones = new[]
///         {
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///         },
///         MinSize = 0,
///         MaxSize = 3,
///         Tags = new[]
///         {
///             new Aws.AutoScaling.Inputs.GroupTagArgs
///             {
///                 Key = "application",
///                 Value = "example",
///                 PropagateAtLaunch = true,
///             },
///         },
///     });
///
///     var exampleScalingPlan = new Aws.AutoScalingPlans.ScalingPlan("example", new()
///     {
///         Name = "example-predictive-cost-optimization",
///         ApplicationSource = new Aws.AutoScalingPlans.Inputs.ScalingPlanApplicationSourceArgs
///         {
///             TagFilters = new[]
///             {
///                 new Aws.AutoScalingPlans.Inputs.ScalingPlanApplicationSourceTagFilterArgs
///                 {
///                     Key = "application",
///                     Values = new[]
///                     {
///                         "example",
///                     },
///                 },
///             },
///         },
///         ScalingInstructions = new[]
///         {
///             new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionArgs
///             {
///                 DisableDynamicScaling = true,
///                 MaxCapacity = 3,
///                 MinCapacity = 0,
///                 ResourceId = Std.Format.Invoke(new()
///                 {
///                     Input = "autoScalingGroup/%s",
///                     Args = new[]
///                     {
///                         example.Name,
///                     },
///                 }).Apply(invoke => invoke.Result),
///                 ScalableDimension = "autoscaling:autoScalingGroup:DesiredCapacity",
///                 ServiceNamespace = "autoscaling",
///                 TargetTrackingConfigurations = new[]
///                 {
///                     new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs
///                     {
///                         PredefinedScalingMetricSpecification = new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs
///                         {
///                             PredefinedScalingMetricType = "ASGAverageCPUUtilization",
///                         },
///                         TargetValue = 70,
///                     },
///                 },
///                 PredictiveScalingMaxCapacityBehavior = "SetForecastCapacityToMaxCapacity",
///                 PredictiveScalingMode = "ForecastAndScale",
///                 PredefinedLoadMetricSpecification = new Aws.AutoScalingPlans.Inputs.ScalingPlanScalingInstructionPredefinedLoadMetricSpecificationArgs
///                 {
///                     PredefinedLoadMetricType = "ASGTotalCPUUtilization",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscalingplans"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := autoscaling.NewGroup(ctx, "example", &autoscaling.GroupArgs{
/// 			NamePrefix:          pulumi.String("example"),
/// 			LaunchConfiguration: pulumi.Any(exampleAwsLaunchConfiguration.Name),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String(available.Names[0]),
/// 			},
/// 			MinSize: pulumi.Int(0),
/// 			MaxSize: pulumi.Int(3),
/// 			Tags: autoscaling.GroupTagArray{
/// 				&autoscaling.GroupTagArgs{
/// 					Key:               pulumi.String("application"),
/// 					Value:             pulumi.String("example"),
/// 					PropagateAtLaunch: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "autoScalingGroup/%s",
/// 			Args: pulumi.StringArray{
/// 				example.Name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = autoscalingplans.NewScalingPlan(ctx, "example", &autoscalingplans.ScalingPlanArgs{
/// 			Name: pulumi.String("example-predictive-cost-optimization"),
/// 			ApplicationSource: &autoscalingplans.ScalingPlanApplicationSourceArgs{
/// 				TagFilters: autoscalingplans.ScalingPlanApplicationSourceTagFilterArray{
/// 					&autoscalingplans.ScalingPlanApplicationSourceTagFilterArgs{
/// 						Key: pulumi.String("application"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ScalingInstructions: autoscalingplans.ScalingPlanScalingInstructionArray{
/// 				&autoscalingplans.ScalingPlanScalingInstructionArgs{
/// 					DisableDynamicScaling: pulumi.Bool(true),
/// 					MaxCapacity:           pulumi.Int(3),
/// 					MinCapacity:           pulumi.Int(0),
/// 					ResourceId:            pulumi.String(invokeFormat.Result),
/// 					ScalableDimension:     pulumi.String("autoscaling:autoScalingGroup:DesiredCapacity"),
/// 					ServiceNamespace:      pulumi.String("autoscaling"),
/// 					TargetTrackingConfigurations: autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationArray{
/// 						&autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs{
/// 							PredefinedScalingMetricSpecification: &autoscalingplans.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs{
/// 								PredefinedScalingMetricType: pulumi.String("ASGAverageCPUUtilization"),
/// 							},
/// 							TargetValue: pulumi.Float64(70),
/// 						},
/// 					},
/// 					PredictiveScalingMaxCapacityBehavior: pulumi.String("SetForecastCapacityToMaxCapacity"),
/// 					PredictiveScalingMode:                pulumi.String("ForecastAndScale"),
/// 					PredefinedLoadMetricSpecification: &autoscalingplans.ScalingPlanScalingInstructionPredefinedLoadMetricSpecificationArgs{
/// 						PredefinedLoadMetricType: pulumi.String("ASGTotalCPUUtilization"),
/// 					},
/// 				},
/// 			},
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "std_format" "invoke_0" {
///   input = "autoScalingGroup/%s"
///   args  = [aws_autoscaling_group.example.name]
/// }
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_autoscaling_group" "example" {
///   name_prefix          = "example"
///   launch_configuration = exampleAwsLaunchConfiguration.name
///   availability_zones   = [data.aws_getavailabilityzones.available.names[0]]
///   min_size             = 0
///   max_size             = 3
///   tags {
///     key                 = "application"
///     value               = "example"
///     propagate_at_launch = true
///   }
/// }
/// resource "aws_autoscalingplans_scalingplan" "example" {
///   name = "example-predictive-cost-optimization"
///   application_source = {
///     tag_filters = [{
///       "key"    = "application"
///       "values" = ["example"]
///     }]
///   }
///   scaling_instructions {
///     disable_dynamic_scaling = true
///     max_capacity            = 3
///     min_capacity            = 0
///     resource_id             = data.std_format.invoke_0.result
///     scalable_dimension      = "autoscaling:autoScalingGroup:DesiredCapacity"
///     service_namespace       = "autoscaling"
///     target_tracking_configurations {
///       predefined_scaling_metric_specification = {
///         predefined_scaling_metric_type = "ASGAverageCPUUtilization"
///       }
///       target_value = 70
///     }
///     predictive_scaling_max_capacity_behavior = "SetForecastCapacityToMaxCapacity"
///     predictive_scaling_mode                  = "ForecastAndScale"
///     predefined_load_metric_specification = {
///       predefined_load_metric_type = "ASGTotalCPUUtilization"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import com.pulumi.aws.autoscalingplans.ScalingPlan;
/// import com.pulumi.aws.autoscalingplans.ScalingPlanArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanApplicationSourceArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanApplicationSourceTagFilterArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs;
/// import com.pulumi.aws.autoscalingplans.inputs.ScalingPlanScalingInstructionPredefinedLoadMetricSpecificationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var example = new Group("example", GroupArgs.builder()
///             .namePrefix("example")
///             .launchConfiguration(exampleAwsLaunchConfiguration.name())
///             .availabilityZones(available.names()[0])
///             .minSize(0)
///             .maxSize(3)
///             .tags(GroupTagArgs.builder()
///                 .key("application")
///                 .value("example")
///                 .propagateAtLaunch(true)
///                 .build())
///             .build());
///
///         var exampleScalingPlan = new ScalingPlan("exampleScalingPlan", ScalingPlanArgs.builder()
///             .name("example-predictive-cost-optimization")
///             .applicationSource(ScalingPlanApplicationSourceArgs.builder()
///                 .tagFilters(ScalingPlanApplicationSourceTagFilterArgs.builder()
///                     .key("application")
///                     .values("example")
///                     .build())
///                 .build())
///             .scalingInstructions(ScalingPlanScalingInstructionArgs.builder()
///                 .disableDynamicScaling(true)
///                 .maxCapacity(3)
///                 .minCapacity(0)
///                 .resourceId(StdFunctions.format(FormatArgs.builder()
///                     .input("autoScalingGroup/%s")
///                     .args(example.name())
///                     .build()).result())
///                 .scalableDimension("autoscaling:autoScalingGroup:DesiredCapacity")
///                 .serviceNamespace("autoscaling")
///                 .targetTrackingConfigurations(ScalingPlanScalingInstructionTargetTrackingConfigurationArgs.builder()
///                     .predefinedScalingMetricSpecification(ScalingPlanScalingInstructionTargetTrackingConfigurationPredefinedScalingMetricSpecificationArgs.builder()
///                         .predefinedScalingMetricType("ASGAverageCPUUtilization")
///                         .build())
///                     .targetValue(70.0)
///                     .build())
///                 .predictiveScalingMaxCapacityBehavior("SetForecastCapacityToMaxCapacity")
///                 .predictiveScalingMode("ForecastAndScale")
///                 .predefinedLoadMetricSpecification(ScalingPlanScalingInstructionPredefinedLoadMetricSpecificationArgs.builder()
///                     .predefinedLoadMetricType("ASGTotalCPUUtilization")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:autoscaling:Group
///     properties:
///       namePrefix: example
///       launchConfiguration: ${exampleAwsLaunchConfiguration.name}
///       availabilityZones:
///         - ${available.names[0]}
///       minSize: 0
///       maxSize: 3
///       tags:
///         - key: application
///           value: example
///           propagateAtLaunch: true
///   exampleScalingPlan:
///     type: aws:autoscalingplans:ScalingPlan
///     name: example
///     properties:
///       name: example-predictive-cost-optimization
///       applicationSource:
///         tagFilters:
///           - key: application
///             values:
///               - example
///       scalingInstructions:
///         - disableDynamicScaling: true
///           maxCapacity: 3
///           minCapacity: 0
///           resourceId:
///             fn::invoke:
///               function: std:format
///               arguments:
///                 input: autoScalingGroup/%s
///                 args:
///                   - ${example.name}
///               return: result
///           scalableDimension: autoscaling:autoScalingGroup:DesiredCapacity
///           serviceNamespace: autoscaling
///           targetTrackingConfigurations:
///             - predefinedScalingMetricSpecification:
///                 predefinedScalingMetricType: ASGAverageCPUUtilization
///               targetValue: 70
///           predictiveScalingMaxCapacityBehavior: SetForecastCapacityToMaxCapacity
///           predictiveScalingMode: ForecastAndScale
///           predefinedLoadMetricSpecification:
///             predefinedLoadMetricType: ASGTotalCPUUtilization
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Auto Scaling scaling plans using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscalingplans/scalingPlan:ScalingPlan example MyScale1
/// ```
class ScalingPlan extends pulumi.CustomResource {
  /// CloudFormation stack or set of tags. You can create one scaling plan per application source.
  late final pulumi.Output<ScalingPlanApplicationSource> applicationSource;
  /// Name of the scaling plan. Names cannot contain vertical bars, colons, or forward slashes.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Scaling instructions. More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_ScalingInstruction.html).
  late final pulumi.Output<List<Map<String, dynamic>>> scalingInstructions;
  /// The version number of the scaling plan. This value is always 1.
  late final pulumi.Output<int> scalingPlanVersion;

  /// Creates a new [ScalingPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScalingPlan]. {@macro pulumi_autoscalingplans_scaling_plan_scaling_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScalingPlan(
    String name, {
    ScalingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscalingplans/scalingPlan:ScalingPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSource = registerOutput<ScalingPlanApplicationSource>('applicationSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScalingPlanApplicationSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scalingInstructions = registerOutput<List<Map<String, dynamic>>>('scalingInstructions');
    scalingPlanVersion = registerOutput<int>('scalingPlanVersion');
  }

  /// Gets an existing [ScalingPlan] resource's state with the given [name] and [id].
  static ScalingPlan get(
    String name,
    pulumi.Input<String> id, {
    ScalingPlanState? state,
  }) {
    return ScalingPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScalingPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscalingplans/scalingPlan:ScalingPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSource = registerOutput<ScalingPlanApplicationSource>('applicationSource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScalingPlanApplicationSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scalingInstructions = registerOutput<List<Map<String, dynamic>>>('scalingInstructions');
    scalingPlanVersion = registerOutput<int>('scalingPlanVersion');
  }
}
