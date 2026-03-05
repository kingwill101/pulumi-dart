import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_predictive_scaling_configuration.dart';
import 'policy_state.dart';
import 'policy_target_tracking_configuration.dart';

/// Provides an AutoScaling Scaling Policy resource.
///
/// &gt; **NOTE:** You may want to omit `desired_capacity` attribute from attached `aws.autoscaling.Group`
/// when using autoscaling policies. It's good practice to pick either
/// [manual](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-manual-scaling.html)
/// or [dynamic](https://docs.aws.amazon.com/AutoScaling/latest/DeveloperGuide/as-scale-based-on-demand.html)
/// (policy-based) scaling.
///
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.autoscaling.Group("bar", {
///     availabilityZones: ["us-east-1a"],
///     name: "foobar3-test",
///     maxSize: 5,
///     minSize: 2,
///     healthCheckGracePeriod: 300,
///     healthCheckType: "ELB",
///     forceDelete: true,
///     launchConfiguration: foo.name,
/// });
/// const bat = new aws.autoscaling.Policy("bat", {
///     name: "foobar3-test",
///     scalingAdjustment: 4,
///     adjustmentType: "ChangeInCapacity",
///     cooldown: 300,
///     autoscalingGroupName: bar.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.autoscaling.Group("bar",
///     availability_zones=["us-east-1a"],
///     name="foobar3-test",
///     max_size=5,
///     min_size=2,
///     health_check_grace_period=300,
///     health_check_type="ELB",
///     force_delete=True,
///     launch_configuration=foo["name"])
/// bat = aws.autoscaling.Policy("bat",
///     name="foobar3-test",
///     scaling_adjustment=4,
///     adjustment_type="ChangeInCapacity",
///     cooldown=300,
///     autoscaling_group_name=bar.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.AutoScaling.Group("bar", new()
///     {
///         AvailabilityZones = new[]
///         {
///             "us-east-1a",
///         },
///         Name = "foobar3-test",
///         MaxSize = 5,
///         MinSize = 2,
///         HealthCheckGracePeriod = 300,
///         HealthCheckType = "ELB",
///         ForceDelete = true,
///         LaunchConfiguration = foo.Name,
///     });
///
///     var bat = new Aws.AutoScaling.Policy("bat", new()
///     {
///         Name = "foobar3-test",
///         ScalingAdjustment = 4,
///         AdjustmentType = "ChangeInCapacity",
///         Cooldown = 300,
///         AutoscalingGroupName = bar.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bar, err := autoscaling.NewGroup(ctx, "bar", &autoscaling.GroupArgs{
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-east-1a"),
/// 			},
/// 			Name:                   pulumi.String("foobar3-test"),
/// 			MaxSize:                pulumi.Int(5),
/// 			MinSize:                pulumi.Int(2),
/// 			HealthCheckGracePeriod: pulumi.Int(300),
/// 			HealthCheckType:        pulumi.String("ELB"),
/// 			ForceDelete:            pulumi.Bool(true),
/// 			LaunchConfiguration:    pulumi.Any(foo.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = autoscaling.NewPolicy(ctx, "bat", &autoscaling.PolicyArgs{
/// 			Name:                 pulumi.String("foobar3-test"),
/// 			ScalingAdjustment:    pulumi.Int(4),
/// 			AdjustmentType:       pulumi.String("ChangeInCapacity"),
/// 			Cooldown:             pulumi.Int(300),
/// 			AutoscalingGroupName: bar.Name,
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
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.Policy;
/// import com.pulumi.aws.autoscaling.PolicyArgs;
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
///         var bar = new Group("bar", GroupArgs.builder()
///             .availabilityZones("us-east-1a")
///             .name("foobar3-test")
///             .maxSize(5)
///             .minSize(2)
///             .healthCheckGracePeriod(300)
///             .healthCheckType("ELB")
///             .forceDelete(true)
///             .launchConfiguration(foo.name())
///             .build());
///
///         var bat = new Policy("bat", PolicyArgs.builder()
///             .name("foobar3-test")
///             .scalingAdjustment(4)
///             .adjustmentType("ChangeInCapacity")
///             .cooldown(300)
///             .autoscalingGroupName(bar.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bat:
///     type: aws:autoscaling:Policy
///     properties:
///       name: foobar3-test
///       scalingAdjustment: 4
///       adjustmentType: ChangeInCapacity
///       cooldown: 300
///       autoscalingGroupName: ${bar.name}
///   bar:
///     type: aws:autoscaling:Group
///     properties:
///       availabilityZones:
///         - us-east-1a
///       name: foobar3-test
///       maxSize: 5
///       minSize: 2
///       healthCheckGracePeriod: 300
///       healthCheckType: ELB
///       forceDelete: true
///       launchConfiguration: ${foo.name}
/// ```
///
///
/// ### Create target tracking scaling policy using metric math
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.autoscaling.Policy("example", {
///     autoscalingGroupName: "my-test-asg",
///     name: "foo",
///     policyType: "TargetTrackingScaling",
///     targetTrackingConfiguration: {
///         targetValue: 100,
///         customizedMetricSpecification: {
///             metrics: [
///                 {
///                     label: "Get the queue size (the number of messages waiting to be processed)",
///                     id: "m1",
///                     metricStat: {
///                         metric: {
///                             namespace: "AWS/SQS",
///                             metricName: "ApproximateNumberOfMessagesVisible",
///                             dimensions: [{
///                                 name: "QueueName",
///                                 value: "my-queue",
///                             }],
///                         },
///                         stat: "Sum",
///                         period: 10,
///                     },
///                     returnData: false,
///                 },
///                 {
///                     label: "Get the group size (the number of InService instances)",
///                     id: "m2",
///                     metricStat: {
///                         metric: {
///                             namespace: "AWS/AutoScaling",
///                             metricName: "GroupInServiceInstances",
///                             dimensions: [{
///                                 name: "AutoScalingGroupName",
///                                 value: "my-asg",
///                             }],
///                         },
///                         stat: "Average",
///                         period: 10,
///                     },
///                     returnData: false,
///                 },
///                 {
///                     label: "Calculate the backlog per instance",
///                     id: "e1",
///                     expression: "m1 / m2",
///                     returnData: true,
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.Policy("example",
///     autoscaling_group_name="my-test-asg",
///     name="foo",
///     policy_type="TargetTrackingScaling",
///     target_tracking_configuration={
///         "target_value": 100,
///         "customized_metric_specification": {
///             "metrics": [
///                 {
///                     "label": "Get the queue size (the number of messages waiting to be processed)",
///                     "id": "m1",
///                     "metric_stat": {
///                         "metric": {
///                             "namespace": "AWS/SQS",
///                             "metric_name": "ApproximateNumberOfMessagesVisible",
///                             "dimensions": [{
///                                 "name": "QueueName",
///                                 "value": "my-queue",
///                             }],
///                         },
///                         "stat": "Sum",
///                         "period": 10,
///                     },
///                     "return_data": False,
///                 },
///                 {
///                     "label": "Get the group size (the number of InService instances)",
///                     "id": "m2",
///                     "metric_stat": {
///                         "metric": {
///                             "namespace": "AWS/AutoScaling",
///                             "metric_name": "GroupInServiceInstances",
///                             "dimensions": [{
///                                 "name": "AutoScalingGroupName",
///                                 "value": "my-asg",
///                             }],
///                         },
///                         "stat": "Average",
///                         "period": 10,
///                     },
///                     "return_data": False,
///                 },
///                 {
///                     "label": "Calculate the backlog per instance",
///                     "id": "e1",
///                     "expression": "m1 / m2",
///                     "return_data": True,
///                 },
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AutoScaling.Policy("example", new()
///     {
///         AutoscalingGroupName = "my-test-asg",
///         Name = "foo",
///         PolicyType = "TargetTrackingScaling",
///         TargetTrackingConfiguration = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationArgs
///         {
///             TargetValue = 100,
///             CustomizedMetricSpecification = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationArgs
///             {
///                 Metrics = new[]
///                 {
///                     new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Get the queue size (the number of messages waiting to be processed)",
///                         Id = "m1",
///                         MetricStat = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs
///                         {
///                             Metric = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs
///                             {
///                                 Namespace = "AWS/SQS",
///                                 MetricName = "ApproximateNumberOfMessagesVisible",
///                                 Dimensions = new[]
///                                 {
///                                     new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs
///                                     {
///                                         Name = "QueueName",
///                                         Value = "my-queue",
///                                     },
///                                 },
///                             },
///                             Stat = "Sum",
///                             Period = 10,
///                         },
///                         ReturnData = false,
///                     },
///                     new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Get the group size (the number of InService instances)",
///                         Id = "m2",
///                         MetricStat = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs
///                         {
///                             Metric = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs
///                             {
///                                 Namespace = "AWS/AutoScaling",
///                                 MetricName = "GroupInServiceInstances",
///                                 Dimensions = new[]
///                                 {
///                                     new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs
///                                     {
///                                         Name = "AutoScalingGroupName",
///                                         Value = "my-asg",
///                                     },
///                                 },
///                             },
///                             Stat = "Average",
///                             Period = 10,
///                         },
///                         ReturnData = false,
///                     },
///                     new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs
///                     {
///                         Label = "Calculate the backlog per instance",
///                         Id = "e1",
///                         Expression = "m1 / m2",
///                         ReturnData = true,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
/// 			AutoscalingGroupName: pulumi.String("my-test-asg"),
/// 			Name:                 pulumi.String("foo"),
/// 			PolicyType:           pulumi.String("TargetTrackingScaling"),
/// 			TargetTrackingConfiguration: &autoscaling.PolicyTargetTrackingConfigurationArgs{
/// 				TargetValue: pulumi.Float64(100),
/// 				CustomizedMetricSpecification: &autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationArgs{
/// 					Metrics: autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArray{
/// 						&autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label: pulumi.String("Get the queue size (the number of messages waiting to be processed)"),
/// 							Id:    pulumi.String("m1"),
/// 							MetricStat: &autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs{
/// 								Metric: &autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs{
/// 									Namespace:  pulumi.String("AWS/SQS"),
/// 									MetricName: pulumi.String("ApproximateNumberOfMessagesVisible"),
/// 									Dimensions: autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArray{
/// 										&autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs{
/// 											Name:  pulumi.String("QueueName"),
/// 											Value: pulumi.String("my-queue"),
/// 										},
/// 									},
/// 								},
/// 								Stat:   pulumi.String("Sum"),
/// 								Period: pulumi.Int(10),
/// 							},
/// 							ReturnData: pulumi.Bool(false),
/// 						},
/// 						&autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label: pulumi.String("Get the group size (the number of InService instances)"),
/// 							Id:    pulumi.String("m2"),
/// 							MetricStat: &autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs{
/// 								Metric: &autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs{
/// 									Namespace:  pulumi.String("AWS/AutoScaling"),
/// 									MetricName: pulumi.String("GroupInServiceInstances"),
/// 									Dimensions: autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArray{
/// 										&autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs{
/// 											Name:  pulumi.String("AutoScalingGroupName"),
/// 											Value: pulumi.String("my-asg"),
/// 										},
/// 									},
/// 								},
/// 								Stat:   pulumi.String("Average"),
/// 								Period: pulumi.Int(10),
/// 							},
/// 							ReturnData: pulumi.Bool(false),
/// 						},
/// 						&autoscaling.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs{
/// 							Label:      pulumi.String("Calculate the backlog per instance"),
/// 							Id:         pulumi.String("e1"),
/// 							Expression: pulumi.String("m1 / m2"),
/// 							ReturnData: pulumi.Bool(true),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.Policy;
/// import com.pulumi.aws.autoscaling.PolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationCustomizedMetricSpecificationArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .autoscalingGroupName("my-test-asg")
///             .name("foo")
///             .policyType("TargetTrackingScaling")
///             .targetTrackingConfiguration(PolicyTargetTrackingConfigurationArgs.builder()
///                 .targetValue(100.0)
///                 .customizedMetricSpecification(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationArgs.builder()
///                     .metrics(
///                         PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Get the queue size (the number of messages waiting to be processed)")
///                             .id("m1")
///                             .metricStat(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs.builder()
///                                 .metric(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs.builder()
///                                     .namespace("AWS/SQS")
///                                     .metricName("ApproximateNumberOfMessagesVisible")
///                                     .dimensions(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs.builder()
///                                         .name("QueueName")
///                                         .value("my-queue")
///                                         .build())
///                                     .build())
///                                 .stat("Sum")
///                                 .period(10)
///                                 .build())
///                             .returnData(false)
///                             .build(),
///                         PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Get the group size (the number of InService instances)")
///                             .id("m2")
///                             .metricStat(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatArgs.builder()
///                                 .metric(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricArgs.builder()
///                                     .namespace("AWS/AutoScaling")
///                                     .metricName("GroupInServiceInstances")
///                                     .dimensions(PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricMetricStatMetricDimensionArgs.builder()
///                                         .name("AutoScalingGroupName")
///                                         .value("my-asg")
///                                         .build())
///                                     .build())
///                                 .stat("Average")
///                                 .period(10)
///                                 .build())
///                             .returnData(false)
///                             .build(),
///                         PolicyTargetTrackingConfigurationCustomizedMetricSpecificationMetricArgs.builder()
///                             .label("Calculate the backlog per instance")
///                             .id("e1")
///                             .expression("m1 / m2")
///                             .returnData(true)
///                             .build())
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
///     type: aws:autoscaling:Policy
///     properties:
///       autoscalingGroupName: my-test-asg
///       name: foo
///       policyType: TargetTrackingScaling
///       targetTrackingConfiguration:
///         targetValue: 100
///         customizedMetricSpecification:
///           metrics:
///             - label: Get the queue size (the number of messages waiting to be processed)
///               id: m1
///               metricStat:
///                 metric:
///                   namespace: AWS/SQS
///                   metricName: ApproximateNumberOfMessagesVisible
///                   dimensions:
///                     - name: QueueName
///                       value: my-queue
///                 stat: Sum
///                 period: 10
///               returnData: false
///             - label: Get the group size (the number of InService instances)
///               id: m2
///               metricStat:
///                 metric:
///                   namespace: AWS/AutoScaling
///                   metricName: GroupInServiceInstances
///                   dimensions:
///                     - name: AutoScalingGroupName
///                       value: my-asg
///                 stat: Average
///                 period: 10
///               returnData: false
///             - label: Calculate the backlog per instance
///               id: e1
///               expression: m1 / m2
///               returnData: true
/// ```
///
///
/// ### Create predictive scaling policy using customized metrics
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.autoscaling.Policy("example", {
///     autoscalingGroupName: "my-test-asg",
///     name: "foo",
///     policyType: "PredictiveScaling",
///     predictiveScalingConfiguration: {
///         metricSpecification: {
///             targetValue: 10,
///             customizedLoadMetricSpecification: {
///                 metricDataQueries: [{
///                     id: "load_sum",
///                     expression: "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 3600))",
///                 }],
///             },
///             customizedCapacityMetricSpecification: {
///                 metricDataQueries: [{
///                     id: "capacity_sum",
///                     expression: "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                 }],
///             },
///             customizedScalingMetricSpecification: {
///                 metricDataQueries: [
///                     {
///                         id: "capacity_sum",
///                         expression: "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                         returnData: false,
///                     },
///                     {
///                         id: "load_sum",
///                         expression: "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 300))",
///                         returnData: false,
///                     },
///                     {
///                         id: "weighted_average",
///                         expression: "load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)",
///                     },
///                 ],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.Policy("example",
///     autoscaling_group_name="my-test-asg",
///     name="foo",
///     policy_type="PredictiveScaling",
///     predictive_scaling_configuration={
///         "metric_specification": {
///             "target_value": 10,
///             "customized_load_metric_specification": {
///                 "metric_data_queries": [{
///                     "id": "load_sum",
///                     "expression": "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 3600))",
///                 }],
///             },
///             "customized_capacity_metric_specification": {
///                 "metric_data_queries": [{
///                     "id": "capacity_sum",
///                     "expression": "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                 }],
///             },
///             "customized_scaling_metric_specification": {
///                 "metric_data_queries": [
///                     {
///                         "id": "capacity_sum",
///                         "expression": "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                         "return_data": False,
///                     },
///                     {
///                         "id": "load_sum",
///                         "expression": "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 300))",
///                         "return_data": False,
///                     },
///                     {
///                         "id": "weighted_average",
///                         "expression": "load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)",
///                     },
///                 ],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AutoScaling.Policy("example", new()
///     {
///         AutoscalingGroupName = "my-test-asg",
///         Name = "foo",
///         PolicyType = "PredictiveScaling",
///         PredictiveScalingConfiguration = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationArgs
///         {
///             MetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationArgs
///             {
///                 TargetValue = 10,
///                 CustomizedLoadMetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationArgs
///                 {
///                     MetricDataQueries = new[]
///                     {
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "load_sum",
///                             Expression = "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 3600))",
///                         },
///                     },
///                 },
///                 CustomizedCapacityMetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationArgs
///                 {
///                     MetricDataQueries = new[]
///                     {
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "capacity_sum",
///                             Expression = "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                         },
///                     },
///                 },
///                 CustomizedScalingMetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs
///                 {
///                     MetricDataQueries = new[]
///                     {
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "capacity_sum",
///                             Expression = "SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))",
///                             ReturnData = false,
///                         },
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "load_sum",
///                             Expression = "SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 300))",
///                             ReturnData = false,
///                         },
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "weighted_average",
///                             Expression = "load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)",
///                         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
/// 			AutoscalingGroupName: pulumi.String("my-test-asg"),
/// 			Name:                 pulumi.String("foo"),
/// 			PolicyType:           pulumi.String("PredictiveScaling"),
/// 			PredictiveScalingConfiguration: &autoscaling.PolicyPredictiveScalingConfigurationArgs{
/// 				MetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationArgs{
/// 					TargetValue: pulumi.Float64(10),
/// 					CustomizedLoadMetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationArgs{
/// 						MetricDataQueries: autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryArray{
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryArgs{
/// 								Id:         pulumi.String("load_sum"),
/// 								Expression: pulumi.String("SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 3600))"),
/// 							},
/// 						},
/// 					},
/// 					CustomizedCapacityMetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationArgs{
/// 						MetricDataQueries: autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryArray{
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryArgs{
/// 								Id:         pulumi.String("capacity_sum"),
/// 								Expression: pulumi.String("SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))"),
/// 							},
/// 						},
/// 					},
/// 					CustomizedScalingMetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs{
/// 						MetricDataQueries: autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArray{
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs{
/// 								Id:         pulumi.String("capacity_sum"),
/// 								Expression: pulumi.String("SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))"),
/// 								ReturnData: pulumi.Bool(false),
/// 							},
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs{
/// 								Id:         pulumi.String("load_sum"),
/// 								Expression: pulumi.String("SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 300))"),
/// 								ReturnData: pulumi.Bool(false),
/// 							},
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs{
/// 								Id:         pulumi.String("weighted_average"),
/// 								Expression: pulumi.String("load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)"),
/// 							},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.Policy;
/// import com.pulumi.aws.autoscaling.PolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .autoscalingGroupName("my-test-asg")
///             .name("foo")
///             .policyType("PredictiveScaling")
///             .predictiveScalingConfiguration(PolicyPredictiveScalingConfigurationArgs.builder()
///                 .metricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationArgs.builder()
///                     .targetValue(10.0)
///                     .customizedLoadMetricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationArgs.builder()
///                         .metricDataQueries(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedLoadMetricSpecificationMetricDataQueryArgs.builder()
///                             .id("load_sum")
///                             .expression("SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 3600))")
///                             .build())
///                         .build())
///                     .customizedCapacityMetricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationArgs.builder()
///                         .metricDataQueries(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedCapacityMetricSpecificationMetricDataQueryArgs.builder()
///                             .id("capacity_sum")
///                             .expression("SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))")
///                             .build())
///                         .build())
///                     .customizedScalingMetricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs.builder()
///                         .metricDataQueries(
///                             PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs.builder()
///                                 .id("capacity_sum")
///                                 .expression("SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName=\"GroupInServiceIntances\" my-test-asg', 'Average', 300))")
///                                 .returnData(false)
///                                 .build(),
///                             PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs.builder()
///                                 .id("load_sum")
///                                 .expression("SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName=\"CPUUtilization\" my-test-asg', 'Sum', 300))")
///                                 .returnData(false)
///                                 .build(),
///                             PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs.builder()
///                                 .id("weighted_average")
///                                 .expression("load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)")
///                                 .build())
///                         .build())
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
///     type: aws:autoscaling:Policy
///     properties:
///       autoscalingGroupName: my-test-asg
///       name: foo
///       policyType: PredictiveScaling
///       predictiveScalingConfiguration:
///         metricSpecification:
///           targetValue: 10
///           customizedLoadMetricSpecification:
///             metricDataQueries:
///               - id: load_sum
///                 expression: SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName="CPUUtilization" my-test-asg', 'Sum', 3600))
///           customizedCapacityMetricSpecification:
///             metricDataQueries:
///               - id: capacity_sum
///                 expression: SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName="GroupInServiceIntances" my-test-asg', 'Average', 300))
///           customizedScalingMetricSpecification:
///             metricDataQueries:
///               - id: capacity_sum
///                 expression: SUM(SEARCH('{AWS/AutoScaling,AutoScalingGroupName} MetricName="GroupInServiceIntances" my-test-asg', 'Average', 300))
///                 returnData: false
///               - id: load_sum
///                 expression: SUM(SEARCH('{AWS/EC2,AutoScalingGroupName} MetricName="CPUUtilization" my-test-asg', 'Sum', 300))
///                 returnData: false
///               - id: weighted_average
///                 expression: load_sum / (capacity_sum * PERIOD(capacity_sum) / 60)
/// ```
///
///
/// ### Create predictive scaling policy using customized scaling and predefined load metric
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.autoscaling.Policy("example", {
///     autoscalingGroupName: "my-test-asg",
///     name: "foo",
///     policyType: "PredictiveScaling",
///     predictiveScalingConfiguration: {
///         metricSpecification: {
///             targetValue: 10,
///             predefinedLoadMetricSpecification: {
///                 predefinedMetricType: "ASGTotalCPUUtilization",
///                 resourceLabel: "app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff",
///             },
///             customizedScalingMetricSpecification: {
///                 metricDataQueries: [{
///                     id: "scaling",
///                     metricStat: {
///                         metric: {
///                             metricName: "CPUUtilization",
///                             namespace: "AWS/EC2",
///                             dimensions: [{
///                                 name: "AutoScalingGroupName",
///                                 value: "my-test-asg",
///                             }],
///                         },
///                         stat: "Average",
///                     },
///                 }],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.autoscaling.Policy("example",
///     autoscaling_group_name="my-test-asg",
///     name="foo",
///     policy_type="PredictiveScaling",
///     predictive_scaling_configuration={
///         "metric_specification": {
///             "target_value": 10,
///             "predefined_load_metric_specification": {
///                 "predefined_metric_type": "ASGTotalCPUUtilization",
///                 "resource_label": "app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff",
///             },
///             "customized_scaling_metric_specification": {
///                 "metric_data_queries": [{
///                     "id": "scaling",
///                     "metric_stat": {
///                         "metric": {
///                             "metric_name": "CPUUtilization",
///                             "namespace": "AWS/EC2",
///                             "dimensions": [{
///                                 "name": "AutoScalingGroupName",
///                                 "value": "my-test-asg",
///                             }],
///                         },
///                         "stat": "Average",
///                     },
///                 }],
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AutoScaling.Policy("example", new()
///     {
///         AutoscalingGroupName = "my-test-asg",
///         Name = "foo",
///         PolicyType = "PredictiveScaling",
///         PredictiveScalingConfiguration = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationArgs
///         {
///             MetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationArgs
///             {
///                 TargetValue = 10,
///                 PredefinedLoadMetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecificationArgs
///                 {
///                     PredefinedMetricType = "ASGTotalCPUUtilization",
///                     ResourceLabel = "app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff",
///                 },
///                 CustomizedScalingMetricSpecification = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs
///                 {
///                     MetricDataQueries = new[]
///                     {
///                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs
///                         {
///                             Id = "scaling",
///                             MetricStat = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatArgs
///                             {
///                                 Metric = new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricArgs
///                                 {
///                                     MetricName = "CPUUtilization",
///                                     Namespace = "AWS/EC2",
///                                     Dimensions = new[]
///                                     {
///                                         new Aws.AutoScaling.Inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimensionArgs
///                                         {
///                                             Name = "AutoScalingGroupName",
///                                             Value = "my-test-asg",
///                                         },
///                                     },
///                                 },
///                                 Stat = "Average",
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
/// 			AutoscalingGroupName: pulumi.String("my-test-asg"),
/// 			Name:                 pulumi.String("foo"),
/// 			PolicyType:           pulumi.String("PredictiveScaling"),
/// 			PredictiveScalingConfiguration: &autoscaling.PolicyPredictiveScalingConfigurationArgs{
/// 				MetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationArgs{
/// 					TargetValue: pulumi.Float64(10),
/// 					PredefinedLoadMetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecificationArgs{
/// 						PredefinedMetricType: pulumi.String("ASGTotalCPUUtilization"),
/// 						ResourceLabel:        pulumi.String("app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff"),
/// 					},
/// 					CustomizedScalingMetricSpecification: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs{
/// 						MetricDataQueries: autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArray{
/// 							&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs{
/// 								Id: pulumi.String("scaling"),
/// 								MetricStat: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatArgs{
/// 									Metric: &autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricArgs{
/// 										MetricName: pulumi.String("CPUUtilization"),
/// 										Namespace:  pulumi.String("AWS/EC2"),
/// 										Dimensions: autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimensionArray{
/// 											&autoscaling.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimensionArgs{
/// 												Name:  pulumi.String("AutoScalingGroupName"),
/// 												Value: pulumi.String("my-test-asg"),
/// 											},
/// 										},
/// 									},
/// 									Stat: pulumi.String("Average"),
/// 								},
/// 							},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.Policy;
/// import com.pulumi.aws.autoscaling.PolicyArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecificationArgs;
/// import com.pulumi.aws.autoscaling.inputs.PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs;
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
///         var example = new Policy("example", PolicyArgs.builder()
///             .autoscalingGroupName("my-test-asg")
///             .name("foo")
///             .policyType("PredictiveScaling")
///             .predictiveScalingConfiguration(PolicyPredictiveScalingConfigurationArgs.builder()
///                 .metricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationArgs.builder()
///                     .targetValue(10.0)
///                     .predefinedLoadMetricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationPredefinedLoadMetricSpecificationArgs.builder()
///                         .predefinedMetricType("ASGTotalCPUUtilization")
///                         .resourceLabel("app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff")
///                         .build())
///                     .customizedScalingMetricSpecification(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationArgs.builder()
///                         .metricDataQueries(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryArgs.builder()
///                             .id("scaling")
///                             .metricStat(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatArgs.builder()
///                                 .metric(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricArgs.builder()
///                                     .metricName("CPUUtilization")
///                                     .namespace("AWS/EC2")
///                                     .dimensions(PolicyPredictiveScalingConfigurationMetricSpecificationCustomizedScalingMetricSpecificationMetricDataQueryMetricStatMetricDimensionArgs.builder()
///                                         .name("AutoScalingGroupName")
///                                         .value("my-test-asg")
///                                         .build())
///                                     .build())
///                                 .stat("Average")
///                                 .build())
///                             .build())
///                         .build())
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
///     type: aws:autoscaling:Policy
///     properties:
///       autoscalingGroupName: my-test-asg
///       name: foo
///       policyType: PredictiveScaling
///       predictiveScalingConfiguration:
///         metricSpecification:
///           targetValue: 10
///           predefinedLoadMetricSpecification:
///             predefinedMetricType: ASGTotalCPUUtilization
///             resourceLabel: app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff
///           customizedScalingMetricSpecification:
///             metricDataQueries:
///               - id: scaling
///                 metricStat:
///                   metric:
///                     metricName: CPUUtilization
///                     namespace: AWS/EC2
///                     dimensions:
///                       - name: AutoScalingGroupName
///                         value: my-test-asg
///                   stat: Average
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling scaling policy using the role autoscaling_group_name and name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/policy:Policy test-policy asg-name/policy-name
/// ```
class Policy extends pulumi.CustomResource {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  late final pulumi.Output<String?> adjustmentType;
  /// ARN assigned by AWS to the scaling policy.
  late final pulumi.Output<String> arn;
  /// Name of the autoscaling group.
  late final pulumi.Output<String> autoscalingGroupName;
  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  late final pulumi.Output<int?> cooldown;
  /// Whether the scaling policy is enabled or disabled. Default: `true`.
  ///
  /// The following argument is only available to "SimpleScaling" and "StepScaling" type policies:
  late final pulumi.Output<bool?> enabled;
  /// Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  late final pulumi.Output<int?> estimatedInstanceWarmup;
  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  late final pulumi.Output<String> metricAggregationType;
  /// Minimum value to scale by when `adjustment_type` is set to `PercentChangeInCapacity`.
  ///
  /// The following arguments are only available to "SimpleScaling" type policies:
  late final pulumi.Output<int?> minAdjustmentMagnitude;
  /// Name of the policy.
  late final pulumi.Output<String> name;
  /// Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  late final pulumi.Output<String?> policyType;
  /// Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  late final pulumi.Output<PolicyPredictiveScalingConfiguration?> predictiveScalingConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  late final pulumi.Output<int?> scalingAdjustment;
  /// Set of adjustments that manage
  /// group scaling. These have the following structure:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {stepAdjustments: [
  ///     {
  ///         scalingAdjustment: -1,
  ///         metricIntervalLowerBound: "1",
  ///         metricIntervalUpperBound: "2",
  ///     },
  ///     {
  ///         scalingAdjustment: 1,
  ///         metricIntervalLowerBound: "2",
  ///         metricIntervalUpperBound: "3",
  ///     },
  /// ]});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", step_adjustments=[
  ///     {
  ///         "scaling_adjustment": -1,
  ///         "metric_interval_lower_bound": "1",
  ///         "metric_interval_upper_bound": "2",
  ///     },
  ///     {
  ///         "scaling_adjustment": 1,
  ///         "metric_interval_lower_bound": "2",
  ///         "metric_interval_upper_bound": "3",
  ///     },
  /// ])
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Aws.AutoScaling.Policy("example", new()
  ///     {
  ///         StepAdjustments = new[]
  ///         {
  ///             new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  ///             {
  ///                 ScalingAdjustment = -1,
  ///                 MetricIntervalLowerBound = "1",
  ///                 MetricIntervalUpperBound = "2",
  ///             },
  ///             new Aws.AutoScaling.Inputs.PolicyStepAdjustmentArgs
  ///             {
  ///                 ScalingAdjustment = 1,
  ///                 MetricIntervalLowerBound = "2",
  ///                 MetricIntervalUpperBound = "3",
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
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// 			StepAdjustments: autoscaling.PolicyStepAdjustmentArray{
  /// 				&autoscaling.PolicyStepAdjustmentArgs{
  /// 					ScalingAdjustment:        pulumi.Int(-1),
  /// 					MetricIntervalLowerBound: pulumi.String("1"),
  /// 					MetricIntervalUpperBound: pulumi.String("2"),
  /// 				},
  /// 				&autoscaling.PolicyStepAdjustmentArgs{
  /// 					ScalingAdjustment:        pulumi.Int(1),
  /// 					MetricIntervalLowerBound: pulumi.String("2"),
  /// 					MetricIntervalUpperBound: pulumi.String("3"),
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
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyStepAdjustmentArgs;
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
  ///         var example = new Policy("example", PolicyArgs.builder()
  ///             .stepAdjustments(
  ///                 PolicyStepAdjustmentArgs.builder()
  ///                     .scalingAdjustment(-1)
  ///                     .metricIntervalLowerBound("1")
  ///                     .metricIntervalUpperBound("2")
  ///                     .build(),
  ///                 PolicyStepAdjustmentArgs.builder()
  ///                     .scalingAdjustment(1)
  ///                     .metricIntervalLowerBound("2")
  ///                     .metricIntervalUpperBound("3")
  ///                     .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: aws:autoscaling:Policy
  ///     properties:
  ///       stepAdjustments:
  ///         - scalingAdjustment: -1
  ///           metricIntervalLowerBound: 1
  ///           metricIntervalUpperBound: 2
  ///         - scalingAdjustment: 1
  ///           metricIntervalLowerBound: 2
  ///           metricIntervalUpperBound: 3
  /// ```
  ///
  ///
  /// The following fields are available in step adjustments:
  late final pulumi.Output<List<Map<String, dynamic>>?> stepAdjustments;
  /// Target tracking policy. These have the following structure:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.autoscaling.Policy("example", {targetTrackingConfiguration: {
  ///     predefinedMetricSpecification: {
  ///         predefinedMetricType: "ASGAverageCPUUtilization",
  ///     },
  ///     targetValue: 40,
  /// }});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.autoscaling.Policy("example", target_tracking_configuration={
  ///     "predefined_metric_specification": {
  ///         "predefined_metric_type": "ASGAverageCPUUtilization",
  ///     },
  ///     "target_value": 40,
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
  ///     var example = new Aws.AutoScaling.Policy("example", new()
  ///     {
  ///         TargetTrackingConfiguration = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationArgs
  ///         {
  ///             PredefinedMetricSpecification = new Aws.AutoScaling.Inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs
  ///             {
  ///                 PredefinedMetricType = "ASGAverageCPUUtilization",
  ///             },
  ///             TargetValue = 40,
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := autoscaling.NewPolicy(ctx, "example", &autoscaling.PolicyArgs{
  /// 			TargetTrackingConfiguration: &autoscaling.PolicyTargetTrackingConfigurationArgs{
  /// 				PredefinedMetricSpecification: &autoscaling.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs{
  /// 					PredefinedMetricType: pulumi.String("ASGAverageCPUUtilization"),
  /// 				},
  /// 				TargetValue: pulumi.Float64(40),
  /// 			},
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
  /// import com.pulumi.aws.autoscaling.Policy;
  /// import com.pulumi.aws.autoscaling.PolicyArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationArgs;
  /// import com.pulumi.aws.autoscaling.inputs.PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs;
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
  ///         var example = new Policy("example", PolicyArgs.builder()
  ///             .targetTrackingConfiguration(PolicyTargetTrackingConfigurationArgs.builder()
  ///                 .predefinedMetricSpecification(PolicyTargetTrackingConfigurationPredefinedMetricSpecificationArgs.builder()
  ///                     .predefinedMetricType("ASGAverageCPUUtilization")
  ///                     .build())
  ///                 .targetValue(40.0)
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: aws:autoscaling:Policy
  ///     properties:
  ///       targetTrackingConfiguration:
  ///         predefinedMetricSpecification:
  ///           predefinedMetricType: ASGAverageCPUUtilization
  ///         targetValue: 40
  /// ```
  ///
  ///
  /// The following fields are available in target tracking configuration:
  late final pulumi.Output<PolicyTargetTrackingConfiguration?> targetTrackingConfiguration;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_autoscaling_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(
    String name, {
    PolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/policy:Policy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adjustmentType = registerOutput<String?>('adjustmentType');
    arn = registerOutput<String>('arn');
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    cooldown = registerOutput<int?>('cooldown');
    enabled = registerOutput<bool?>('enabled');
    estimatedInstanceWarmup = registerOutput<int?>('estimatedInstanceWarmup');
    metricAggregationType = registerOutput<String>('metricAggregationType');
    minAdjustmentMagnitude = registerOutput<int?>('minAdjustmentMagnitude');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    predictiveScalingConfiguration = registerOutput<PolicyPredictiveScalingConfiguration?>('predictiveScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPredictiveScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scalingAdjustment = registerOutput<int?>('scalingAdjustment');
    stepAdjustments = registerOutput<List<Map<String, dynamic>>?>('stepAdjustments');
    targetTrackingConfiguration = registerOutput<PolicyTargetTrackingConfiguration?>('targetTrackingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTargetTrackingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/policy:Policy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adjustmentType = registerOutput<String?>('adjustmentType');
    arn = registerOutput<String>('arn');
    autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    cooldown = registerOutput<int?>('cooldown');
    enabled = registerOutput<bool?>('enabled');
    estimatedInstanceWarmup = registerOutput<int?>('estimatedInstanceWarmup');
    metricAggregationType = registerOutput<String>('metricAggregationType');
    minAdjustmentMagnitude = registerOutput<int?>('minAdjustmentMagnitude');
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    predictiveScalingConfiguration = registerOutput<PolicyPredictiveScalingConfiguration?>('predictiveScalingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyPredictiveScalingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scalingAdjustment = registerOutput<int?>('scalingAdjustment');
    stepAdjustments = registerOutput<List<Map<String, dynamic>>?>('stepAdjustments');
    targetTrackingConfiguration = registerOutput<PolicyTargetTrackingConfiguration?>('targetTrackingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyTargetTrackingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
