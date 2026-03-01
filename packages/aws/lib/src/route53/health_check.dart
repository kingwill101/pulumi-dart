import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_check_args.dart';

/// Provides a Route53 health check.
///
/// ## Example Usage
///
/// ### Connectivity and HTTP Status Code Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.HealthCheck("example", {
///     fqdn: "example.com",
///     port: 80,
///     type: "HTTP",
///     resourcePath: "/",
///     failureThreshold: 5,
///     requestInterval: 30,
///     tags: {
///         Name: "tf-test-health-check",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.HealthCheck("example",
///     fqdn="example.com",
///     port=80,
///     type="HTTP",
///     resource_path="/",
///     failure_threshold=5,
///     request_interval=30,
///     tags={
///         "Name": "tf-test-health-check",
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
///     var example = new Aws.Route53.HealthCheck("example", new()
///     {
///         Fqdn = "example.com",
///         Port = 80,
///         Type = "HTTP",
///         ResourcePath = "/",
///         FailureThreshold = 5,
///         RequestInterval = 30,
///         Tags =
///         {
///             { "Name", "tf-test-health-check" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewHealthCheck(ctx, "example", &route53.HealthCheckArgs{
/// 			Fqdn:             pulumi.String("example.com"),
/// 			Port:             pulumi.Int(80),
/// 			Type:             pulumi.String("HTTP"),
/// 			ResourcePath:     pulumi.String("/"),
/// 			FailureThreshold: pulumi.Int(5),
/// 			RequestInterval:  pulumi.Int(30),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-test-health-check"),
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
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
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
///         var example = new HealthCheck("example", HealthCheckArgs.builder()
///             .fqdn("example.com")
///             .port(80)
///             .type("HTTP")
///             .resourcePath("/")
///             .failureThreshold(5)
///             .requestInterval(30)
///             .tags(Map.of("Name", "tf-test-health-check"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:HealthCheck
///     properties:
///       fqdn: example.com
///       port: 80
///       type: HTTP
///       resourcePath: /
///       failureThreshold: '5'
///       requestInterval: '30'
///       tags:
///         Name: tf-test-health-check
/// ```
///
///
/// ### Connectivity and String Matching Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.HealthCheck("example", {
///     failureThreshold: 5,
///     fqdn: "example.com",
///     port: 443,
///     requestInterval: 30,
///     resourcePath: "/",
///     searchString: "example",
///     type: "HTTPS_STR_MATCH",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.HealthCheck("example",
///     failure_threshold=5,
///     fqdn="example.com",
///     port=443,
///     request_interval=30,
///     resource_path="/",
///     search_string="example",
///     type="HTTPS_STR_MATCH")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.HealthCheck("example", new()
///     {
///         FailureThreshold = 5,
///         Fqdn = "example.com",
///         Port = 443,
///         RequestInterval = 30,
///         ResourcePath = "/",
///         SearchString = "example",
///         Type = "HTTPS_STR_MATCH",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewHealthCheck(ctx, "example", &route53.HealthCheckArgs{
/// 			FailureThreshold: pulumi.Int(5),
/// 			Fqdn:             pulumi.String("example.com"),
/// 			Port:             pulumi.Int(443),
/// 			RequestInterval:  pulumi.Int(30),
/// 			ResourcePath:     pulumi.String("/"),
/// 			SearchString:     pulumi.String("example"),
/// 			Type:             pulumi.String("HTTPS_STR_MATCH"),
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
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
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
///         var example = new HealthCheck("example", HealthCheckArgs.builder()
///             .failureThreshold(5)
///             .fqdn("example.com")
///             .port(443)
///             .requestInterval(30)
///             .resourcePath("/")
///             .searchString("example")
///             .type("HTTPS_STR_MATCH")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:HealthCheck
///     properties:
///       failureThreshold: '5'
///       fqdn: example.com
///       port: 443
///       requestInterval: '30'
///       resourcePath: /
///       searchString: example
///       type: HTTPS_STR_MATCH
/// ```
///
///
/// ### Aggregate Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const parent = new aws.route53.HealthCheck("parent", {
///     type: "CALCULATED",
///     childHealthThreshold: 1,
///     childHealthchecks: [child.id],
///     tags: {
///         Name: "tf-test-calculated-health-check",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// parent = aws.route53.HealthCheck("parent",
///     type="CALCULATED",
///     child_health_threshold=1,
///     child_healthchecks=[child["id"]],
///     tags={
///         "Name": "tf-test-calculated-health-check",
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
///     var parent = new Aws.Route53.HealthCheck("parent", new()
///     {
///         Type = "CALCULATED",
///         ChildHealthThreshold = 1,
///         ChildHealthchecks = new[]
///         {
///             child.Id,
///         },
///         Tags =
///         {
///             { "Name", "tf-test-calculated-health-check" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewHealthCheck(ctx, "parent", &route53.HealthCheckArgs{
/// 			Type:                 pulumi.String("CALCULATED"),
/// 			ChildHealthThreshold: pulumi.Int(1),
/// 			ChildHealthchecks: pulumi.StringArray{
/// 				child.Id,
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-test-calculated-health-check"),
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
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
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
///         var parent = new HealthCheck("parent", HealthCheckArgs.builder()
///             .type("CALCULATED")
///             .childHealthThreshold(1)
///             .childHealthchecks(child.id())
///             .tags(Map.of("Name", "tf-test-calculated-health-check"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   parent:
///     type: aws:route53:HealthCheck
///     properties:
///       type: CALCULATED
///       childHealthThreshold: 1
///       childHealthchecks:
///         - ${child.id}
///       tags:
///         Name: tf-test-calculated-health-check
/// ```
///
///
/// ### CloudWatch Alarm Check
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.cloudwatch.MetricAlarm("foobar", {
///     name: "test-foobar5",
///     comparisonOperator: "GreaterThanOrEqualToThreshold",
///     evaluationPeriods: 2,
///     metricName: "CPUUtilization",
///     namespace: "AWS/EC2",
///     period: 120,
///     statistic: "Average",
///     threshold: 80,
///     alarmDescription: "This metric monitors ec2 cpu utilization",
/// });
/// const foo = new aws.route53.HealthCheck("foo", {
///     type: "CLOUDWATCH_METRIC",
///     cloudwatchAlarmName: foobar.name,
///     cloudwatchAlarmRegion: "us-west-2",
///     insufficientDataHealthStatus: "Healthy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foobar = aws.cloudwatch.MetricAlarm("foobar",
///     name="test-foobar5",
///     comparison_operator="GreaterThanOrEqualToThreshold",
///     evaluation_periods=2,
///     metric_name="CPUUtilization",
///     namespace="AWS/EC2",
///     period=120,
///     statistic="Average",
///     threshold=80,
///     alarm_description="This metric monitors ec2 cpu utilization")
/// foo = aws.route53.HealthCheck("foo",
///     type="CLOUDWATCH_METRIC",
///     cloudwatch_alarm_name=foobar.name,
///     cloudwatch_alarm_region="us-west-2",
///     insufficient_data_health_status="Healthy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Aws.CloudWatch.MetricAlarm("foobar", new()
///     {
///         Name = "test-foobar5",
///         ComparisonOperator = "GreaterThanOrEqualToThreshold",
///         EvaluationPeriods = 2,
///         MetricName = "CPUUtilization",
///         Namespace = "AWS/EC2",
///         Period = 120,
///         Statistic = "Average",
///         Threshold = 80,
///         AlarmDescription = "This metric monitors ec2 cpu utilization",
///     });
///
///     var foo = new Aws.Route53.HealthCheck("foo", new()
///     {
///         Type = "CLOUDWATCH_METRIC",
///         CloudwatchAlarmName = foobar.Name,
///         CloudwatchAlarmRegion = "us-west-2",
///         InsufficientDataHealthStatus = "Healthy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := cloudwatch.NewMetricAlarm(ctx, "foobar", &cloudwatch.MetricAlarmArgs{
/// 			Name:               pulumi.String("test-foobar5"),
/// 			ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// 			EvaluationPeriods:  pulumi.Int(2),
/// 			MetricName:         pulumi.String("CPUUtilization"),
/// 			Namespace:          pulumi.String("AWS/EC2"),
/// 			Period:             pulumi.Int(120),
/// 			Statistic:          pulumi.String("Average"),
/// 			Threshold:          pulumi.Float64(80),
/// 			AlarmDescription:   pulumi.String("This metric monitors ec2 cpu utilization"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewHealthCheck(ctx, "foo", &route53.HealthCheckArgs{
/// 			Type:                         pulumi.String("CLOUDWATCH_METRIC"),
/// 			CloudwatchAlarmName:          foobar.Name,
/// 			CloudwatchAlarmRegion:        pulumi.String("us-west-2"),
/// 			InsufficientDataHealthStatus: pulumi.String("Healthy"),
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
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
///         var foobar = new MetricAlarm("foobar", MetricAlarmArgs.builder()
///             .name("test-foobar5")
///             .comparisonOperator("GreaterThanOrEqualToThreshold")
///             .evaluationPeriods(2)
///             .metricName("CPUUtilization")
///             .namespace("AWS/EC2")
///             .period(120)
///             .statistic("Average")
///             .threshold(80.0)
///             .alarmDescription("This metric monitors ec2 cpu utilization")
///             .build());
///
///         var foo = new HealthCheck("foo", HealthCheckArgs.builder()
///             .type("CLOUDWATCH_METRIC")
///             .cloudwatchAlarmName(foobar.name())
///             .cloudwatchAlarmRegion("us-west-2")
///             .insufficientDataHealthStatus("Healthy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: aws:cloudwatch:MetricAlarm
///     properties:
///       name: test-foobar5
///       comparisonOperator: GreaterThanOrEqualToThreshold
///       evaluationPeriods: '2'
///       metricName: CPUUtilization
///       namespace: AWS/EC2
///       period: '120'
///       statistic: Average
///       threshold: '80'
///       alarmDescription: This metric monitors ec2 cpu utilization
///   foo:
///     type: aws:route53:HealthCheck
///     properties:
///       type: CLOUDWATCH_METRIC
///       cloudwatchAlarmName: ${foobar.name}
///       cloudwatchAlarmRegion: us-west-2
///       insufficientDataHealthStatus: Healthy
/// ```
///
///
/// ### CloudWatch Alarm Check With Triggers
///
/// The `triggers` argument allows the Route53 health check to be synchronized when a change to the upstream CloudWatch alarm is made.
/// In the configuration below, the health check will be synchronized any time the `threshold` of the alarm is changed.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.MetricAlarm("example", {
///     name: "example",
///     comparisonOperator: "GreaterThanOrEqualToThreshold",
///     evaluationPeriods: 2,
///     metricName: "CPUUtilization",
///     namespace: "AWS/EC2",
///     period: 120,
///     statistic: "Average",
///     threshold: 80,
///     alarmDescription: "This metric monitors ec2 cpu utilization",
/// });
/// const exampleHealthCheck = new aws.route53.HealthCheck("example", {
///     type: "CLOUDWATCH_METRIC",
///     cloudwatchAlarmName: example.name,
///     cloudwatchAlarmRegion: "us-west-2",
///     insufficientDataHealthStatus: "Healthy",
///     triggers: {
///         threshold: example.threshold,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.MetricAlarm("example",
///     name="example",
///     comparison_operator="GreaterThanOrEqualToThreshold",
///     evaluation_periods=2,
///     metric_name="CPUUtilization",
///     namespace="AWS/EC2",
///     period=120,
///     statistic="Average",
///     threshold=80,
///     alarm_description="This metric monitors ec2 cpu utilization")
/// example_health_check = aws.route53.HealthCheck("example",
///     type="CLOUDWATCH_METRIC",
///     cloudwatch_alarm_name=example.name,
///     cloudwatch_alarm_region="us-west-2",
///     insufficient_data_health_status="Healthy",
///     triggers={
///         "threshold": example.threshold,
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
///     var example = new Aws.CloudWatch.MetricAlarm("example", new()
///     {
///         Name = "example",
///         ComparisonOperator = "GreaterThanOrEqualToThreshold",
///         EvaluationPeriods = 2,
///         MetricName = "CPUUtilization",
///         Namespace = "AWS/EC2",
///         Period = 120,
///         Statistic = "Average",
///         Threshold = 80,
///         AlarmDescription = "This metric monitors ec2 cpu utilization",
///     });
///
///     var exampleHealthCheck = new Aws.Route53.HealthCheck("example", new()
///     {
///         Type = "CLOUDWATCH_METRIC",
///         CloudwatchAlarmName = example.Name,
///         CloudwatchAlarmRegion = "us-west-2",
///         InsufficientDataHealthStatus = "Healthy",
///         Triggers =
///         {
///             { "threshold", example.Threshold },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewMetricAlarm(ctx, "example", &cloudwatch.MetricAlarmArgs{
/// 			Name:               pulumi.String("example"),
/// 			ComparisonOperator: pulumi.String("GreaterThanOrEqualToThreshold"),
/// 			EvaluationPeriods:  pulumi.Int(2),
/// 			MetricName:         pulumi.String("CPUUtilization"),
/// 			Namespace:          pulumi.String("AWS/EC2"),
/// 			Period:             pulumi.Int(120),
/// 			Statistic:          pulumi.String("Average"),
/// 			Threshold:          pulumi.Float64(80),
/// 			AlarmDescription:   pulumi.String("This metric monitors ec2 cpu utilization"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewHealthCheck(ctx, "example", &route53.HealthCheckArgs{
/// 			Type:                         pulumi.String("CLOUDWATCH_METRIC"),
/// 			CloudwatchAlarmName:          example.Name,
/// 			CloudwatchAlarmRegion:        pulumi.String("us-west-2"),
/// 			InsufficientDataHealthStatus: pulumi.String("Healthy"),
/// 			Triggers: pulumi.StringMap{
/// 				"threshold": example.Threshold,
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
/// import com.pulumi.aws.cloudwatch.MetricAlarm;
/// import com.pulumi.aws.cloudwatch.MetricAlarmArgs;
/// import com.pulumi.aws.route53.HealthCheck;
/// import com.pulumi.aws.route53.HealthCheckArgs;
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
///         var example = new MetricAlarm("example", MetricAlarmArgs.builder()
///             .name("example")
///             .comparisonOperator("GreaterThanOrEqualToThreshold")
///             .evaluationPeriods(2)
///             .metricName("CPUUtilization")
///             .namespace("AWS/EC2")
///             .period(120)
///             .statistic("Average")
///             .threshold(80.0)
///             .alarmDescription("This metric monitors ec2 cpu utilization")
///             .build());
///
///         var exampleHealthCheck = new HealthCheck("exampleHealthCheck", HealthCheckArgs.builder()
///             .type("CLOUDWATCH_METRIC")
///             .cloudwatchAlarmName(example.name())
///             .cloudwatchAlarmRegion("us-west-2")
///             .insufficientDataHealthStatus("Healthy")
///             .triggers(Map.of("threshold", example.threshold()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:MetricAlarm
///     properties:
///       name: example
///       comparisonOperator: GreaterThanOrEqualToThreshold
///       evaluationPeriods: '2'
///       metricName: CPUUtilization
///       namespace: AWS/EC2
///       period: '120'
///       statistic: Average
///       threshold: '80'
///       alarmDescription: This metric monitors ec2 cpu utilization
///   exampleHealthCheck:
///     type: aws:route53:HealthCheck
///     name: example
///     properties:
///       type: CLOUDWATCH_METRIC
///       cloudwatchAlarmName: ${example.name}
///       cloudwatchAlarmRegion: us-west-2
///       insufficientDataHealthStatus: Healthy
///       triggers:
///         threshold: ${example.threshold}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Health Checks using the health check `id`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/healthCheck:HealthCheck http_check abcdef11-2222-3333-4444-555555fedcba
/// ```
class HealthCheck extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Health Check.
  late final pulumi.Output<String> arn;

  /// The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive
  late final pulumi.Output<int?> childHealthThreshold;

  /// For a specified parent health check, a list of HealthCheckId values for the associated child health checks.
  late final pulumi.Output<List<String>?> childHealthchecks;

  /// The name of the CloudWatch alarm.
  late final pulumi.Output<String?> cloudwatchAlarmName;

  /// The region that the CloudWatch alarm was created in.
  late final pulumi.Output<String?> cloudwatchAlarmRegion;

  /// A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:
  /// * For health checks that check the health of endpoints, Route53 stops submitting requests to your application, server, or other resource.
  /// * For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
  /// * For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
  ///
  /// > **Note:** After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of `invert_healthcheck`.
  late final pulumi.Output<bool?> disabled;

  /// A boolean value that indicates whether Route53 should send the `fqdn` to the endpoint when performing the health check. This defaults to AWS' defaults: when the `type` is "HTTPS" `enable_sni` defaults to `true`, when `type` is anything else `enable_sni` defaults to `false`.
  late final pulumi.Output<bool> enableSni;

  /// The number of consecutive health checks that an endpoint must pass or fail.
  late final pulumi.Output<int> failureThreshold;

  /// The fully qualified domain name of the endpoint to be checked. If a value is set for `ip_address`, the value set for `fqdn` will be passed in the `Host` header.
  late final pulumi.Output<String?> fqdn;

  /// The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are `Healthy` , `Unhealthy` and `LastKnownStatus`.
  late final pulumi.Output<String?> insufficientDataHealthStatus;

  /// A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy.
  late final pulumi.Output<bool?> invertHealthcheck;

  /// The IP address of the endpoint to be checked.
  late final pulumi.Output<String?> ipAddress;

  /// A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console.
  late final pulumi.Output<bool?> measureLatency;

  /// The port of the endpoint to be checked.
  late final pulumi.Output<int?> port;

  /// This is a reference name used in Caller Reference
  /// (helpful for identifying single health_check set amongst others)
  late final pulumi.Output<String?> referenceName;

  /// List of AWS Regions from which Amazon Route 53 health checkers check the specified endpoint. Valid values are `us-east-1`, `us-west-1`, `us-west-2`, `eu-west-1`, `ap-southeast-1`, `ap-southeast-2`, `ap-northeast-1`, and `sa-east-1`. If not specified, all of the regions listed under **Valid values** are used by default. Once this argument is set, removing it has no effect.
  late final pulumi.Output<List<String>> regions;

  /// The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request.
  late final pulumi.Output<int?> requestInterval;

  /// The path that you want Amazon Route 53 to request when performing health checks.
  late final pulumi.Output<String?> resourcePath;

  /// The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is `RECOVERY_CONTROL`
  late final pulumi.Output<String?> routingControlArn;

  /// String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with `HTTP_STR_MATCH` and `HTTPS_STR_MATCH`.
  late final pulumi.Output<String?> searchString;

  /// A map of tags to assign to the health check. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Map of arbitrary keys and values that, when changed, will trigger an in-place update of the CloudWatch alarm arguments. Use this argument to synchronize the health check when an alarm is changed. See example above.
  late final pulumi.Output<Map<String, String>> triggers;

  /// The protocol to use when performing health checks. Valid values are `HTTP`, `HTTPS`, `HTTP_STR_MATCH`, `HTTPS_STR_MATCH`, `TCP`, `CALCULATED`, `CLOUDWATCH_METRIC` and `RECOVERY_CONTROL`.
  late final pulumi.Output<String> type;

  /// Creates a new [HealthCheck].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HealthCheck]. {@macro pulumi_route53_health_check_health_check_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HealthCheck(
    String name, {
    HealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:route53/healthCheck:HealthCheck',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.childHealthThreshold = registerOutput<int?>('childHealthThreshold');
    this.childHealthchecks = registerOutput<List<String>?>('childHealthchecks');
    this.cloudwatchAlarmName = registerOutput<String?>('cloudwatchAlarmName');
    this.cloudwatchAlarmRegion = registerOutput<String?>(
      'cloudwatchAlarmRegion',
    );
    this.disabled = registerOutput<bool?>('disabled');
    this.enableSni = registerOutput<bool>('enableSni');
    this.failureThreshold = registerOutput<int>('failureThreshold');
    this.fqdn = registerOutput<String?>('fqdn');
    this.insufficientDataHealthStatus = registerOutput<String?>(
      'insufficientDataHealthStatus',
    );
    this.invertHealthcheck = registerOutput<bool?>('invertHealthcheck');
    this.ipAddress = registerOutput<String?>('ipAddress');
    this.measureLatency = registerOutput<bool?>('measureLatency');
    this.port = registerOutput<int?>('port');
    this.referenceName = registerOutput<String?>('referenceName');
    this.regions = registerOutput<List<String>>('regions');
    this.requestInterval = registerOutput<int?>('requestInterval');
    this.resourcePath = registerOutput<String?>('resourcePath');
    this.routingControlArn = registerOutput<String?>('routingControlArn');
    this.searchString = registerOutput<String?>('searchString');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.triggers = registerOutput<Map<String, String>>('triggers');
    this.type = registerOutput<String>('type');
  }
}
