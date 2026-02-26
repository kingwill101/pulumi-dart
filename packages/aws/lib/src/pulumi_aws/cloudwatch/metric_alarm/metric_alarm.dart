import 'package:pulumi/pulumi.dart';
import '../metric_alarm_metric_query/metric_alarm_metric_query.dart';
import 'metric_alarm_args.dart';

/// Provides a CloudWatch Metric Alarm resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.cloudwatch.MetricAlarm("foobar", {
/// name: "test-foobar5",
/// comparisonOperator: "GreaterThanOrEqualToThreshold",
/// evaluationPeriods: 2,
/// metricName: "CPUUtilization",
/// namespace: "AWS/EC2",
/// period: 120,
/// statistic: "Average",
/// threshold: 80,
/// alarmDescription: "This metric monitors ec2 cpu utilization",
/// insufficientDataActions: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foobar = aws.cloudwatch.MetricAlarm("foobar",
/// name="test-foobar5",
/// comparison_operator="GreaterThanOrEqualToThreshold",
/// evaluation_periods=2,
/// metric_name="CPUUtilization",
/// namespace="AWS/EC2",
/// period=120,
/// statistic="Average",
/// threshold=80,
/// alarm_description="This metric monitors ec2 cpu utilization",
/// insufficient_data_actions=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Aws.CloudWatch.MetricAlarm("foobar", new()
/// {
/// Name = "test-foobar5",
/// ComparisonOperator = "GreaterThanOrEqualToThreshold",
/// EvaluationPeriods = 2,
/// MetricName = "CPUUtilization",
/// Namespace = "AWS/EC2",
/// Period = 120,
/// Statistic = "Average",
/// Threshold = 80,
/// AlarmDescription = "This metric monitors ec2 cpu utilization",
/// InsufficientDataActions = new[] {},
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricAlarm(ctx, "foobar", &cloudwatch.MetricAlarmArgs{
/// Name:                    pulumi.String("test-foobar5"),
/// ComparisonOperator:      pulumi.String("GreaterThanOrEqualToThreshold"),
/// EvaluationPeriods:       pulumi.Int(2),
/// MetricName:              pulumi.String("CPUUtilization"),
/// Namespace:               pulumi.String("AWS/EC2"),
/// Period:                  pulumi.Int(120),
/// Statistic:               pulumi.String("Average"),
/// Threshold:               pulumi.Float64(80),
/// AlarmDescription:        pulumi.String("This metric monitors ec2 cpu utilization"),
/// InsufficientDataActions: pulumi.Array{},
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
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
/// var foobar = new MetricAlarm("foobar", MetricAlarmArgs.builder()
/// .name("test-foobar5")
/// .comparisonOperator("GreaterThanOrEqualToThreshold")
/// .evaluationPeriods(2)
/// .metricName("CPUUtilization")
/// .namespace("AWS/EC2")
/// .period(120)
/// .statistic("Average")
/// .threshold(80.0)
/// .alarmDescription("This metric monitors ec2 cpu utilization")
/// .insufficientDataActions()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: aws:cloudwatch:MetricAlarm
/// properties:
/// name: test-foobar5
/// comparisonOperator: GreaterThanOrEqualToThreshold
/// evaluationPeriods: 2
/// metricName: CPUUtilization
/// namespace: AWS/EC2
/// period: 120
/// statistic: Average
/// threshold: 80
/// alarmDescription: This metric monitors ec2 cpu utilization
/// insufficientDataActions: []
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Scaling Policies
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bat = new aws.autoscaling.Policy("bat", {
/// name: "foobar3-test",
/// scalingAdjustment: 4,
/// adjustmentType: "ChangeInCapacity",
/// cooldown: 300,
/// autoscalingGroupName: bar.name,
/// });
/// const batMetricAlarm = new aws.cloudwatch.MetricAlarm("bat", {
/// name: "test-foobar5",
/// comparisonOperator: "GreaterThanOrEqualToThreshold",
/// evaluationPeriods: 2,
/// metricName: "CPUUtilization",
/// namespace: "AWS/EC2",
/// period: 120,
/// statistic: "Average",
/// threshold: 80,
/// dimensions: {
/// AutoScalingGroupName: bar.name,
/// },
/// alarmDescription: "This metric monitors ec2 cpu utilization",
/// alarmActions: [bat.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bat = aws.autoscaling.Policy("bat",
/// name="foobar3-test",
/// scaling_adjustment=4,
/// adjustment_type="ChangeInCapacity",
/// cooldown=300,
/// autoscaling_group_name=bar["name"])
/// bat_metric_alarm = aws.cloudwatch.MetricAlarm("bat",
/// name="test-foobar5",
/// comparison_operator="GreaterThanOrEqualToThreshold",
/// evaluation_periods=2,
/// metric_name="CPUUtilization",
/// namespace="AWS/EC2",
/// period=120,
/// statistic="Average",
/// threshold=80,
/// dimensions={
/// "AutoScalingGroupName": bar["name"],
/// },
/// alarm_description="This metric monitors ec2 cpu utilization",
/// alarm_actions=[bat.arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var bat = new Aws.AutoScaling.Policy("bat", new()
/// {
/// Name = "foobar3-test",
/// ScalingAdjustment = 4,
/// AdjustmentType = "ChangeInCapacity",
/// Cooldown = 300,
/// AutoscalingGroupName = bar.Name,
/// });
///
/// var batMetricAlarm = new Aws.CloudWatch.MetricAlarm("bat", new()
/// {
/// Name = "test-foobar5",
/// ComparisonOperator = "GreaterThanOrEqualToThreshold",
/// EvaluationPeriods = 2,
/// MetricName = "CPUUtilization",
/// Namespace = "AWS/EC2",
/// Period = 120,
/// Statistic = "Average",
/// Threshold = 80,
/// Dimensions =
/// {
/// { "AutoScalingGroupName", bar.Name },
/// },
/// AlarmDescription = "This metric monitors ec2 cpu utilization",
/// AlarmActions = new[]
/// {
/// bat.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// bat, err := autoscaling.NewPolicy(ctx, "bat", &autoscaling.PolicyArgs{
/// Name:                 pulumi.String("foobar3-test"),
/// ScalingAdjustment:    pulumi.Int(4),
/// AdjustmentType:       pulumi.String("ChangeInCapacity"),
/// Cooldown:             pulumi.Int(300),
/// AutoscalingGroupName: pulumi.Any(bar.Name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewMetricAlarm(ctx, "bat", &cloudwatch.MetricAlarmArgs{
/// Name:               pulumi.String("test-foobar5"),
/// ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// EvaluationPeriods:  pulumi.Int(2),
/// MetricName:         pulumi.String("CPUUtilization"),
/// Namespace:          pulumi.String("AWS/EC2"),
/// Period:             pulumi.Int(120),
/// Statistic:          pulumi.String("Average"),
/// Threshold:          pulumi.Float64(80),
/// Dimensions: pulumi.StringMap{
/// "AutoScalingGroupName": pulumi.Any(bar.Name),
/// },
/// AlarmDescription: pulumi.String("This metric monitors ec2 cpu utilization"),
/// AlarmActions: pulumi.Array{
/// bat.Arn,
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
/// import com.pulumi.aws.autoscaling.Policy;
/// import com.pulumi.aws.autoscaling.PolicyArgs;
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
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
/// var bat = new Policy("bat", PolicyArgs.builder()
/// .name("foobar3-test")
/// .scalingAdjustment(4)
/// .adjustmentType("ChangeInCapacity")
/// .cooldown(300)
/// .autoscalingGroupName(bar.name())
/// .build());
///
/// var batMetricAlarm = new MetricAlarm("batMetricAlarm", MetricAlarmArgs.builder()
/// .name("test-foobar5")
/// .comparisonOperator("GreaterThanOrEqualToThreshold")
/// .evaluationPeriods(2)
/// .metricName("CPUUtilization")
/// .namespace("AWS/EC2")
/// .period(120)
/// .statistic("Average")
/// .threshold(80.0)
/// .dimensions(Map.of("AutoScalingGroupName", bar.name()))
/// .alarmDescription("This metric monitors ec2 cpu utilization")
/// .alarmActions(bat.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bat:
/// type: aws:autoscaling:Policy
/// properties:
/// name: foobar3-test
/// scalingAdjustment: 4
/// adjustmentType: ChangeInCapacity
/// cooldown: 300
/// autoscalingGroupName: ${bar.name}
/// batMetricAlarm:
/// type: aws:cloudwatch:MetricAlarm
/// name: bat
/// properties:
/// name: test-foobar5
/// comparisonOperator: GreaterThanOrEqualToThreshold
/// evaluationPeriods: 2
/// metricName: CPUUtilization
/// namespace: AWS/EC2
/// period: 120
/// statistic: Average
/// threshold: 80
/// dimensions:
/// AutoScalingGroupName: ${bar.name}
/// alarmDescription: This metric monitors ec2 cpu utilization
/// alarmActions:
/// - ${bat.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With a Metrics Math Expression
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.cloudwatch.MetricAlarm("foobar", {
/// name: "test-foobar",
/// comparisonOperator: "GreaterThanOrEqualToThreshold",
/// evaluationPeriods: 2,
/// threshold: 10,
/// alarmDescription: "Request error rate has exceeded 10%",
/// insufficientDataActions: [],
/// metricQueries: [
/// {
/// id: "e1",
/// expression: "m2/m1*100",
/// label: "Error Rate",
/// returnData: true,
/// },
/// {
/// id: "m1",
/// metric: {
/// metricName: "RequestCount",
/// namespace: "AWS/ApplicationELB",
/// period: 120,
/// stat: "Sum",
/// unit: "Count",
/// dimensions: {
/// LoadBalancer: "app/web",
/// },
/// },
/// },
/// {
/// id: "m2",
/// metric: {
/// metricName: "HTTPCode_ELB_5XX_Count",
/// namespace: "AWS/ApplicationELB",
/// period: 120,
/// stat: "Sum",
/// unit: "Count",
/// dimensions: {
/// LoadBalancer: "app/web",
/// },
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foobar = aws.cloudwatch.MetricAlarm("foobar",
/// name="test-foobar",
/// comparison_operator="GreaterThanOrEqualToThreshold",
/// evaluation_periods=2,
/// threshold=10,
/// alarm_description="Request error rate has exceeded 10%",
/// insufficient_data_actions=[],
/// metric_queries=[
/// {
/// "id": "e1",
/// "expression": "m2/m1*100",
/// "label": "Error Rate",
/// "return_data": True,
/// },
/// {
/// "id": "m1",
/// "metric": {
/// "metric_name": "RequestCount",
/// "namespace": "AWS/ApplicationELB",
/// "period": 120,
/// "stat": "Sum",
/// "unit": "Count",
/// "dimensions": {
/// "LoadBalancer": "app/web",
/// },
/// },
/// },
/// {
/// "id": "m2",
/// "metric": {
/// "metric_name": "HTTPCode_ELB_5XX_Count",
/// "namespace": "AWS/ApplicationELB",
/// "period": 120,
/// "stat": "Sum",
/// "unit": "Count",
/// "dimensions": {
/// "LoadBalancer": "app/web",
/// },
/// },
/// },
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
/// var foobar = new Aws.CloudWatch.MetricAlarm("foobar", new()
/// {
/// Name = "test-foobar",
/// ComparisonOperator = "GreaterThanOrEqualToThreshold",
/// EvaluationPeriods = 2,
/// Threshold = 10,
/// AlarmDescription = "Request error rate has exceeded 10%",
/// InsufficientDataActions = new[] {},
/// MetricQueries = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "e1",
/// Expression = "m2/m1*100",
/// Label = "Error Rate",
/// ReturnData = true,
/// },
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "m1",
/// Metric = new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryMetricArgs
/// {
/// MetricName = "RequestCount",
/// Namespace = "AWS/ApplicationELB",
/// Period = 120,
/// Stat = "Sum",
/// Unit = "Count",
/// Dimensions =
/// {
/// { "LoadBalancer", "app/web" },
/// },
/// },
/// },
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "m2",
/// Metric = new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryMetricArgs
/// {
/// MetricName = "HTTPCode_ELB_5XX_Count",
/// Namespace = "AWS/ApplicationELB",
/// Period = 120,
/// Stat = "Sum",
/// Unit = "Count",
/// Dimensions =
/// {
/// { "LoadBalancer", "app/web" },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricAlarm(ctx, "foobar", &cloudwatch.MetricAlarmArgs{
/// Name:                    pulumi.String("test-foobar"),
/// ComparisonOperator:      pulumi.String("GreaterThanOrEqualToThreshold"),
/// EvaluationPeriods:       pulumi.Int(2),
/// Threshold:               pulumi.Float64(10),
/// AlarmDescription:        pulumi.String("Request error rate has exceeded 10%"),
/// InsufficientDataActions: pulumi.Array{},
/// MetricQueries: cloudwatch.MetricAlarmMetricQueryArray{
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id:         pulumi.String("e1"),
/// Expression: pulumi.String("m2/m1*100"),
/// Label:      pulumi.String("Error Rate"),
/// ReturnData: pulumi.Bool(true),
/// },
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id: pulumi.String("m1"),
/// Metric: &cloudwatch.MetricAlarmMetricQueryMetricArgs{
/// MetricName: pulumi.String("RequestCount"),
/// Namespace:  pulumi.String("AWS/ApplicationELB"),
/// Period:     pulumi.Int(120),
/// Stat:       pulumi.String("Sum"),
/// Unit:       pulumi.String("Count"),
/// Dimensions: pulumi.StringMap{
/// "LoadBalancer": pulumi.String("app/web"),
/// },
/// },
/// },
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id: pulumi.String("m2"),
/// Metric: &cloudwatch.MetricAlarmMetricQueryMetricArgs{
/// MetricName: pulumi.String("HTTPCode_ELB_5XX_Count"),
/// Namespace:  pulumi.String("AWS/ApplicationELB"),
/// Period:     pulumi.Int(120),
/// Stat:       pulumi.String("Sum"),
/// Unit:       pulumi.String("Count"),
/// Dimensions: pulumi.StringMap{
/// "LoadBalancer": pulumi.String("app/web"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricAlarmMetricQueryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricAlarmMetricQueryMetricArgs;
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
/// var foobar = new MetricAlarm("foobar", MetricAlarmArgs.builder()
/// .name("test-foobar")
/// .comparisonOperator("GreaterThanOrEqualToThreshold")
/// .evaluationPeriods(2)
/// .threshold(10.0)
/// .alarmDescription("Request error rate has exceeded 10%")
/// .insufficientDataActions()
/// .metricQueries(
/// MetricAlarmMetricQueryArgs.builder()
/// .id("e1")
/// .expression("m2/m1*100")
/// .label("Error Rate")
/// .returnData(true)
/// .build(),
/// MetricAlarmMetricQueryArgs.builder()
/// .id("m1")
/// .metric(MetricAlarmMetricQueryMetricArgs.builder()
/// .metricName("RequestCount")
/// .namespace("AWS/ApplicationELB")
/// .period(120)
/// .stat("Sum")
/// .unit("Count")
/// .dimensions(Map.of("LoadBalancer", "app/web"))
/// .build())
/// .build(),
/// MetricAlarmMetricQueryArgs.builder()
/// .id("m2")
/// .metric(MetricAlarmMetricQueryMetricArgs.builder()
/// .metricName("HTTPCode_ELB_5XX_Count")
/// .namespace("AWS/ApplicationELB")
/// .period(120)
/// .stat("Sum")
/// .unit("Count")
/// .dimensions(Map.of("LoadBalancer", "app/web"))
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: aws:cloudwatch:MetricAlarm
/// properties:
/// name: test-foobar
/// comparisonOperator: GreaterThanOrEqualToThreshold
/// evaluationPeriods: 2
/// threshold: 10
/// alarmDescription: Request error rate has exceeded 10%
/// insufficientDataActions: []
/// metricQueries:
/// - id: e1
/// expression: m2/m1*100
/// label: Error Rate
/// returnData: 'true'
/// - id: m1
/// metric:
/// metricName: RequestCount
/// namespace: AWS/ApplicationELB
/// period: 120
/// stat: Sum
/// unit: Count
/// dimensions:
/// LoadBalancer: app/web
/// - id: m2
/// metric:
/// metricName: HTTPCode_ELB_5XX_Count
/// namespace: AWS/ApplicationELB
/// period: 120
/// stat: Sum
/// unit: Count
/// dimensions:
/// LoadBalancer: app/web
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const xxAnomalyDetection = new aws.cloudwatch.MetricAlarm("xx_anomaly_detection", {
/// name: "test-foobar",
/// comparisonOperator: "GreaterThanUpperThreshold",
/// evaluationPeriods: 2,
/// thresholdMetricId: "e1",
/// alarmDescription: "This metric monitors ec2 cpu utilization",
/// insufficientDataActions: [],
/// metricQueries: [
/// {
/// id: "e1",
/// returnData: true,
/// expression: "ANOMALY_DETECTION_BAND(m1)",
/// label: "CPUUtilization (Expected)",
/// },
/// {
/// id: "m1",
/// returnData: true,
/// metric: {
/// metricName: "CPUUtilization",
/// namespace: "AWS/EC2",
/// period: 120,
/// stat: "Average",
/// unit: "Count",
/// dimensions: {
/// InstanceId: "i-abc123",
/// },
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// xx_anomaly_detection = aws.cloudwatch.MetricAlarm("xx_anomaly_detection",
/// name="test-foobar",
/// comparison_operator="GreaterThanUpperThreshold",
/// evaluation_periods=2,
/// threshold_metric_id="e1",
/// alarm_description="This metric monitors ec2 cpu utilization",
/// insufficient_data_actions=[],
/// metric_queries=[
/// {
/// "id": "e1",
/// "return_data": True,
/// "expression": "ANOMALY_DETECTION_BAND(m1)",
/// "label": "CPUUtilization (Expected)",
/// },
/// {
/// "id": "m1",
/// "return_data": True,
/// "metric": {
/// "metric_name": "CPUUtilization",
/// "namespace": "AWS/EC2",
/// "period": 120,
/// "stat": "Average",
/// "unit": "Count",
/// "dimensions": {
/// "InstanceId": "i-abc123",
/// },
/// },
/// },
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
/// var xxAnomalyDetection = new Aws.CloudWatch.MetricAlarm("xx_anomaly_detection", new()
/// {
/// Name = "test-foobar",
/// ComparisonOperator = "GreaterThanUpperThreshold",
/// EvaluationPeriods = 2,
/// ThresholdMetricId = "e1",
/// AlarmDescription = "This metric monitors ec2 cpu utilization",
/// InsufficientDataActions = new[] {},
/// MetricQueries = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "e1",
/// ReturnData = true,
/// Expression = "ANOMALY_DETECTION_BAND(m1)",
/// Label = "CPUUtilization (Expected)",
/// },
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "m1",
/// ReturnData = true,
/// Metric = new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryMetricArgs
/// {
/// MetricName = "CPUUtilization",
/// Namespace = "AWS/EC2",
/// Period = 120,
/// Stat = "Average",
/// Unit = "Count",
/// Dimensions =
/// {
/// { "InstanceId", "i-abc123" },
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricAlarm(ctx, "xx_anomaly_detection", &cloudwatch.MetricAlarmArgs{
/// Name:                    pulumi.String("test-foobar"),
/// ComparisonOperator:      pulumi.String("GreaterThanUpperThreshold"),
/// EvaluationPeriods:       pulumi.Int(2),
/// ThresholdMetricId:       pulumi.String("e1"),
/// AlarmDescription:        pulumi.String("This metric monitors ec2 cpu utilization"),
/// InsufficientDataActions: pulumi.Array{},
/// MetricQueries: cloudwatch.MetricAlarmMetricQueryArray{
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id:         pulumi.String("e1"),
/// ReturnData: pulumi.Bool(true),
/// Expression: pulumi.String("ANOMALY_DETECTION_BAND(m1)"),
/// Label:      pulumi.String("CPUUtilization (Expected)"),
/// },
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id:         pulumi.String("m1"),
/// ReturnData: pulumi.Bool(true),
/// Metric: &cloudwatch.MetricAlarmMetricQueryMetricArgs{
/// MetricName: pulumi.String("CPUUtilization"),
/// Namespace:  pulumi.String("AWS/EC2"),
/// Period:     pulumi.Int(120),
/// Stat:       pulumi.String("Average"),
/// Unit:       pulumi.String("Count"),
/// Dimensions: pulumi.StringMap{
/// "InstanceId": pulumi.String("i-abc123"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricAlarmMetricQueryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricAlarmMetricQueryMetricArgs;
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
/// var xxAnomalyDetection = new MetricAlarm("xxAnomalyDetection", MetricAlarmArgs.builder()
/// .name("test-foobar")
/// .comparisonOperator("GreaterThanUpperThreshold")
/// .evaluationPeriods(2)
/// .thresholdMetricId("e1")
/// .alarmDescription("This metric monitors ec2 cpu utilization")
/// .insufficientDataActions()
/// .metricQueries(
/// MetricAlarmMetricQueryArgs.builder()
/// .id("e1")
/// .returnData(true)
/// .expression("ANOMALY_DETECTION_BAND(m1)")
/// .label("CPUUtilization (Expected)")
/// .build(),
/// MetricAlarmMetricQueryArgs.builder()
/// .id("m1")
/// .returnData(true)
/// .metric(MetricAlarmMetricQueryMetricArgs.builder()
/// .metricName("CPUUtilization")
/// .namespace("AWS/EC2")
/// .period(120)
/// .stat("Average")
/// .unit("Count")
/// .dimensions(Map.of("InstanceId", "i-abc123"))
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// xxAnomalyDetection:
/// type: aws:cloudwatch:MetricAlarm
/// name: xx_anomaly_detection
/// properties:
/// name: test-foobar
/// comparisonOperator: GreaterThanUpperThreshold
/// evaluationPeriods: 2
/// thresholdMetricId: e1
/// alarmDescription: This metric monitors ec2 cpu utilization
/// insufficientDataActions: []
/// metricQueries:
/// - id: e1
/// returnData: true
/// expression: ANOMALY_DETECTION_BAND(m1)
/// label: CPUUtilization (Expected)
/// - id: m1
/// returnData: true
/// metric:
/// metricName: CPUUtilization
/// namespace: AWS/EC2
/// period: 120
/// stat: Average
/// unit: Count
/// dimensions:
/// InstanceId: i-abc123
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With a Metrics Insights Query
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.MetricAlarm("example", {
/// name: "example-alarm",
/// alarmDescription: "Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold",
/// comparisonOperator: "GreaterThanThreshold",
/// evaluationPeriods: 1,
/// threshold: 0.6,
/// treatMissingData: "notBreaching",
/// metricQueries: [{
/// id: "q1",
/// expression: `SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\\"AWS/RDS\\", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// `,
/// period: 60,
/// returnData: true,
/// label: "Max DB Load of the Least-Loaded RDS Instance",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.MetricAlarm("example",
/// name="example-alarm",
/// alarm_description="Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold",
/// comparison_operator="GreaterThanThreshold",
/// evaluation_periods=1,
/// threshold=0.6,
/// treat_missing_data="notBreaching",
/// metric_queries=[{
/// "id": "q1",
/// "expression": """SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\"AWS/RDS\", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// """,
/// "period": 60,
/// "return_data": True,
/// "label": "Max DB Load of the Least-Loaded RDS Instance",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudWatch.MetricAlarm("example", new()
/// {
/// Name = "example-alarm",
/// AlarmDescription = "Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold",
/// ComparisonOperator = "GreaterThanThreshold",
/// EvaluationPeriods = 1,
/// Threshold = 0.6,
/// TreatMissingData = "notBreaching",
/// MetricQueries = new[]
/// {
/// new Aws.CloudWatch.Inputs.MetricAlarmMetricQueryArgs
/// {
/// Id = "q1",
/// Expression = @"SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\""AWS/RDS\"", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// ",
/// Period = 60,
/// ReturnData = true,
/// Label = "Max DB Load of the Least-Loaded RDS Instance",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricAlarm(ctx, "example", &cloudwatch.MetricAlarmArgs{
/// Name:               pulumi.String("example-alarm"),
/// AlarmDescription:   pulumi.String("Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold"),
/// ComparisonOperator: pulumi.String("GreaterThanThreshold"),
/// EvaluationPeriods:  pulumi.Int(1),
/// Threshold:          pulumi.Float64(0.6),
/// TreatMissingData:   pulumi.String("notBreaching"),
/// MetricQueries: cloudwatch.MetricAlarmMetricQueryArray{
/// &cloudwatch.MetricAlarmMetricQueryArgs{
/// Id: pulumi.String("q1"),
/// Expression: pulumi.String(`SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\"AWS/RDS\", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// `),
/// Period:     pulumi.Int(60),
/// ReturnData: pulumi.Bool(true),
/// Label:      pulumi.String("Max DB Load of the Least-Loaded RDS Instance"),
/// },
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.cloudwatch.inputs.MetricAlarmMetricQueryArgs;
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
/// var example = new MetricAlarm("example", MetricAlarmArgs.builder()
/// .name("example-alarm")
/// .alarmDescription("Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold")
/// .comparisonOperator("GreaterThanThreshold")
/// .evaluationPeriods(1)
/// .threshold(0.6)
/// .treatMissingData("notBreaching")
/// .metricQueries(MetricAlarmMetricQueryArgs.builder()
/// .id("q1")
/// .expression("""
/// SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\"AWS/RDS\", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// """)
/// .period(60)
/// .returnData(true)
/// .label("Max DB Load of the Least-Loaded RDS Instance")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudwatch:MetricAlarm
/// properties:
/// name: example-alarm
/// alarmDescription: Triggers if the smallest per-instance maximum load during the evaluation period exceeds the threshold
/// comparisonOperator: GreaterThanThreshold
/// evaluationPeriods: 1
/// threshold: 0.6
/// treatMissingData: notBreaching
/// metricQueries:
/// - id: q1
/// expression: |
/// SELECT
/// MAX(DBLoadRelativeToNumVCPUs)
/// FROM SCHEMA(\"AWS/RDS\", DBInstanceIdentifier)
/// WHERE DBInstanceIdentifier != 'example-rds-instance'
/// GROUP BY DBInstanceIdentifier
/// ORDER BY MIN() ASC
/// LIMIT 1
/// period: 60
/// returnData: true
/// label: Max DB Load of the Least-Loaded RDS Instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Monitoring Healthy NLB Hosts with Target Group and NLB
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const nlbHealthyhosts = new aws.cloudwatch.MetricAlarm("nlb_healthyhosts", {
/// name: "alarmname",
/// comparisonOperator: "LessThanThreshold",
/// evaluationPeriods: 1,
/// metricName: "HealthyHostCount",
/// namespace: "AWS/NetworkELB",
/// period: 60,
/// statistic: "Average",
/// threshold: logstashServersCount,
/// alarmDescription: "Number of healthy nodes in Target Group",
/// actionsEnabled: true,
/// alarmActions: [sns.arn],
/// okActions: [sns.arn],
/// dimensions: {
/// TargetGroup: lb_tg.arnSuffix,
/// LoadBalancer: lb.arnSuffix,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// nlb_healthyhosts = aws.cloudwatch.MetricAlarm("nlb_healthyhosts",
/// name="alarmname",
/// comparison_operator="LessThanThreshold",
/// evaluation_periods=1,
/// metric_name="HealthyHostCount",
/// namespace="AWS/NetworkELB",
/// period=60,
/// statistic="Average",
/// threshold=logstash_servers_count,
/// alarm_description="Number of healthy nodes in Target Group",
/// actions_enabled=True,
/// alarm_actions=[sns["arn"]],
/// ok_actions=[sns["arn"]],
/// dimensions={
/// "TargetGroup": lb_tg["arnSuffix"],
/// "LoadBalancer": lb["arnSuffix"],
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
/// var nlbHealthyhosts = new Aws.CloudWatch.MetricAlarm("nlb_healthyhosts", new()
/// {
/// Name = "alarmname",
/// ComparisonOperator = "LessThanThreshold",
/// EvaluationPeriods = 1,
/// MetricName = "HealthyHostCount",
/// Namespace = "AWS/NetworkELB",
/// Period = 60,
/// Statistic = "Average",
/// Threshold = logstashServersCount,
/// AlarmDescription = "Number of healthy nodes in Target Group",
/// ActionsEnabled = true,
/// AlarmActions = new[]
/// {
/// sns.Arn,
/// },
/// OkActions = new[]
/// {
/// sns.Arn,
/// },
/// Dimensions =
/// {
/// { "TargetGroup", lb_tg.ArnSuffix },
/// { "LoadBalancer", lb.ArnSuffix },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudwatch.NewMetricAlarm(ctx, "nlb_healthyhosts", &cloudwatch.MetricAlarmArgs{
/// Name:               pulumi.String("alarmname"),
/// ComparisonOperator: pulumi.String("LessThanThreshold"),
/// EvaluationPeriods:  pulumi.Int(1),
/// MetricName:         pulumi.String("HealthyHostCount"),
/// Namespace:          pulumi.String("AWS/NetworkELB"),
/// Period:             pulumi.Int(60),
/// Statistic:          pulumi.String("Average"),
/// Threshold:          pulumi.Any(logstashServersCount),
/// AlarmDescription:   pulumi.String("Number of healthy nodes in Target Group"),
/// ActionsEnabled:     pulumi.Bool(true),
/// AlarmActions: pulumi.Array{
/// sns.Arn,
/// },
/// OkActions: pulumi.Array{
/// sns.Arn,
/// },
/// Dimensions: pulumi.StringMap{
/// "TargetGroup":  pulumi.Any(lb_tg.ArnSuffix),
/// "LoadBalancer": pulumi.Any(lb.ArnSuffix),
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
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
/// var nlbHealthyhosts = new MetricAlarm("nlbHealthyhosts", MetricAlarmArgs.builder()
/// .name("alarmname")
/// .comparisonOperator("LessThanThreshold")
/// .evaluationPeriods(1)
/// .metricName("HealthyHostCount")
/// .namespace("AWS/NetworkELB")
/// .period(60)
/// .statistic("Average")
/// .threshold(logstashServersCount)
/// .alarmDescription("Number of healthy nodes in Target Group")
/// .actionsEnabled(true)
/// .alarmActions(sns.arn())
/// .okActions(sns.arn())
/// .dimensions(Map.ofEntries(
/// Map.entry("TargetGroup", lb_tg.arnSuffix()),
/// Map.entry("LoadBalancer", lb.arnSuffix())
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// nlbHealthyhosts:
/// type: aws:cloudwatch:MetricAlarm
/// name: nlb_healthyhosts
/// properties:
/// name: alarmname
/// comparisonOperator: LessThanThreshold
/// evaluationPeriods: 1
/// metricName: HealthyHostCount
/// namespace: AWS/NetworkELB
/// period: 60
/// statistic: Average
/// threshold: ${logstashServersCount}
/// alarmDescription: Number of healthy nodes in Target Group
/// actionsEnabled: 'true'
/// alarmActions:
/// - ${sns.arn}
/// okActions:
/// - ${sns.arn}
/// dimensions:
/// TargetGroup: ${["lb-tg"].arnSuffix}
/// LoadBalancer: ${lb.arnSuffix}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// > **NOTE:**  You cannot create a metric alarm consisting of both <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span> and <span pulumi-lang-nodejs="`extendedStatistic`" pulumi-lang-dotnet="`ExtendedStatistic`" pulumi-lang-go="`extendedStatistic`" pulumi-lang-python="`extended_statistic`" pulumi-lang-yaml="`extendedStatistic`" pulumi-lang-java="`extendedStatistic`">`extended_statistic`</span> parameters.
/// You must choose one or the other.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`alarmName`" pulumi-lang-dotnet="`AlarmName`" pulumi-lang-go="`alarmName`" pulumi-lang-python="`alarm_name`" pulumi-lang-yaml="`alarmName`" pulumi-lang-java="`alarmName`">`alarm_name`</span> (String) Name of the CloudWatch metric alarm.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import CloudWatch Metric Alarm using the <span pulumi-lang-nodejs="`alarmName`" pulumi-lang-dotnet="`AlarmName`" pulumi-lang-go="`alarmName`" pulumi-lang-python="`alarm_name`" pulumi-lang-yaml="`alarmName`" pulumi-lang-java="`alarmName`">`alarm_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/metricAlarm:MetricAlarm example alarm-12345
/// ```
class MetricAlarm extends CustomResource {
  /// Indicates whether or not actions should be executed during any changes to the alarm's state. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> actionsEnabled;

  /// The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final Output<List<String>?> alarmActions;

  /// The description for the alarm.
  late final Output<String?> alarmDescription;

  /// The ARN of the CloudWatch Metric Alarm.
  late final Output<String> arn;

  /// The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: `GreaterThanOrEqualToThreshold`, `GreaterThanThreshold`, `LessThanThreshold`, `LessThanOrEqualToThreshold`. Additionally, the values  `LessThanLowerOrGreaterThanUpperThreshold`, `LessThanLowerThreshold`, and `GreaterThanUpperThreshold` are used only for alarms based on anomaly detection models.
  late final Output<String> comparisonOperator;

  /// The number of data points that must be breaching to trigger the alarm.
  late final Output<int?> datapointsToAlarm;

  /// The dimensions for the alarm's associated metric.  For the list of available dimensions see the AWS documentation [here](http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final Output<Map<String, String>?> dimensions;

  /// Used only for alarms based on percentiles.
  /// If you specify <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, the alarm state will not change during periods with too few data points to be statistically significant.
  /// If you specify <span pulumi-lang-nodejs="`evaluate`" pulumi-lang-dotnet="`Evaluate`" pulumi-lang-go="`evaluate`" pulumi-lang-python="`evaluate`" pulumi-lang-yaml="`evaluate`" pulumi-lang-java="`evaluate`">`evaluate`</span> or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available.
  /// The following values are supported: <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, and <span pulumi-lang-nodejs="`evaluate`" pulumi-lang-dotnet="`Evaluate`" pulumi-lang-go="`evaluate`" pulumi-lang-python="`evaluate`" pulumi-lang-yaml="`evaluate`" pulumi-lang-java="`evaluate`">`evaluate`</span>.
  late final Output<String> evaluateLowSampleCountPercentiles;

  /// The number of periods over which data is compared to the specified threshold.
  late final Output<int> evaluationPeriods;

  /// The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.
  late final Output<String?> extendedStatistic;

  /// The list of actions to execute when this alarm transitions into an INSUFFICIENT_DATA state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final Output<List<String>?> insufficientDataActions;

  /// The name for the alarm's associated metric.
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final Output<String?> metricName;

  /// Enables you to create an alarm based on a metric math expression. You may specify at most 20.
  late final Output<List<MetricAlarmMetricQuery>?> metricQueries;

  /// The descriptive name for the alarm. This name must be unique within the user's AWS account
  late final Output<String> name;

  /// The namespace for the alarm's associated metric. See docs for the [list of namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/aws-namespaces.html).
  /// See docs for [supported metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html).
  late final Output<String?> namespace;

  /// The list of actions to execute when this alarm transitions into an OK state from any other state. Each action is specified as an Amazon Resource Name (ARN).
  late final Output<List<String>?> okActions;

  /// The period in seconds over which the specified <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span> is applied.
  /// Valid values are <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`10`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`10`</span>, <span pulumi-lang-nodejs="`20`" pulumi-lang-dotnet="`20`" pulumi-lang-go="`20`" pulumi-lang-python="`20`" pulumi-lang-yaml="`20`" pulumi-lang-java="`20`">`20`</span>, <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>, or any multiple of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  late final Output<int?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The statistic to apply to the alarm's associated metric.
  /// Either of the following is supported: `SampleCount`, `Average`, `Sum`, `Minimum`, `Maximum`
  late final Output<String?> statistic;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// See [related part of AWS Docs](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html)
  /// for details about valid values.
  ///
  /// > **NOTE:**  If you specify at least one <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span>, you may not specify a <span pulumi-lang-nodejs="`metricName`" pulumi-lang-dotnet="`MetricName`" pulumi-lang-go="`metricName`" pulumi-lang-python="`metric_name`" pulumi-lang-yaml="`metricName`" pulumi-lang-java="`metricName`">`metric_name`</span>, <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, <span pulumi-lang-nodejs="`period`" pulumi-lang-dotnet="`Period`" pulumi-lang-go="`period`" pulumi-lang-python="`period`" pulumi-lang-yaml="`period`" pulumi-lang-java="`period`">`period`</span> or <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span>. If you do not specify a <span pulumi-lang-nodejs="`metricQuery`" pulumi-lang-dotnet="`MetricQuery`" pulumi-lang-go="`metricQuery`" pulumi-lang-python="`metric_query`" pulumi-lang-yaml="`metricQuery`" pulumi-lang-java="`metricQuery`">`metric_query`</span>, you must specify each of these (although you may use <span pulumi-lang-nodejs="`extendedStatistic`" pulumi-lang-dotnet="`ExtendedStatistic`" pulumi-lang-go="`extendedStatistic`" pulumi-lang-python="`extended_statistic`" pulumi-lang-yaml="`extendedStatistic`" pulumi-lang-java="`extendedStatistic`">`extended_statistic`</span> instead of <span pulumi-lang-nodejs="`statistic`" pulumi-lang-dotnet="`Statistic`" pulumi-lang-go="`statistic`" pulumi-lang-python="`statistic`" pulumi-lang-yaml="`statistic`" pulumi-lang-java="`statistic`">`statistic`</span>).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models.
  late final Output<double?> threshold;

  /// If this is an alarm based on an anomaly detection model, make this value match the ID of the ANOMALY_DETECTION_BAND function.
  late final Output<String?> thresholdMetricId;

  /// Sets how this alarm is to handle missing data points. The following values are supported: <span pulumi-lang-nodejs="`missing`" pulumi-lang-dotnet="`Missing`" pulumi-lang-go="`missing`" pulumi-lang-python="`missing`" pulumi-lang-yaml="`missing`" pulumi-lang-java="`missing`">`missing`</span>, <span pulumi-lang-nodejs="`ignore`" pulumi-lang-dotnet="`Ignore`" pulumi-lang-go="`ignore`" pulumi-lang-python="`ignore`" pulumi-lang-yaml="`ignore`" pulumi-lang-java="`ignore`">`ignore`</span>, <span pulumi-lang-nodejs="`breaching`" pulumi-lang-dotnet="`Breaching`" pulumi-lang-go="`breaching`" pulumi-lang-python="`breaching`" pulumi-lang-yaml="`breaching`" pulumi-lang-java="`breaching`">`breaching`</span> and `notBreaching`. Defaults to <span pulumi-lang-nodejs="`missing`" pulumi-lang-dotnet="`Missing`" pulumi-lang-go="`missing`" pulumi-lang-python="`missing`" pulumi-lang-yaml="`missing`" pulumi-lang-java="`missing`">`missing`</span>.
  late final Output<String?> treatMissingData;

  /// The unit for the alarm's associated metric.
  late final Output<String?> unit;

  MetricAlarm(
    String name, {
    MetricAlarmArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/metricAlarm:MetricAlarm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionsEnabled = Output.createUnknown<bool?>();
    this.alarmActions = Output.createUnknown<List<String>?>();
    this.alarmDescription = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.comparisonOperator = Output.createUnknown<String>();
    this.datapointsToAlarm = Output.createUnknown<int?>();
    this.dimensions = Output.createUnknown<Map<String, String>?>();
    this.evaluateLowSampleCountPercentiles = Output.createUnknown<String>();
    this.evaluationPeriods = Output.createUnknown<int>();
    this.extendedStatistic = Output.createUnknown<String?>();
    this.insufficientDataActions = Output.createUnknown<List<String>?>();
    this.metricName = Output.createUnknown<String?>();
    this.metricQueries = Output.createUnknown<List<MetricAlarmMetricQuery>?>();
    this.name = Output.createUnknown<String>();
    this.namespace = Output.createUnknown<String?>();
    this.okActions = Output.createUnknown<List<String>?>();
    this.period = Output.createUnknown<int?>();
    this.region = Output.createUnknown<String>();
    this.statistic = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.threshold = Output.createUnknown<double?>();
    this.thresholdMetricId = Output.createUnknown<String?>();
    this.treatMissingData = Output.createUnknown<String?>();
    this.unit = Output.createUnknown<String?>();
  }
}
