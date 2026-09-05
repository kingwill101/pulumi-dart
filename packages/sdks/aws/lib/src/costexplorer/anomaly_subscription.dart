import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_args.dart';
import 'anomaly_subscription_state.dart';
import 'anomaly_subscription_subscriber.dart';
import 'anomaly_subscription_threshold_expression.dart';

/// Provides a CE Anomaly Subscription.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.costexplorer.AnomalyMonitor("test", {
///     name: "AWSServiceMonitor",
///     monitorType: "DIMENSIONAL",
///     monitorDimension: "SERVICE",
/// });
/// const testAnomalySubscription = new aws.costexplorer.AnomalySubscription("test", {
///     thresholdExpression: {
///         dimension: {
///             key: "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///             matchOptions: ["GREATER_THAN_OR_EQUAL"],
///             values: ["100"],
///         },
///     },
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
///     name: "DAILYSUBSCRIPTION",
///     frequency: "DAILY",
///     monitorArnLists: [test.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalyMonitor("test",
///     name="AWSServiceMonitor",
///     monitor_type="DIMENSIONAL",
///     monitor_dimension="SERVICE")
/// test_anomaly_subscription = aws.costexplorer.AnomalySubscription("test",
///     threshold_expression={
///         "dimension": {
///             "key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///             "match_options": ["GREATER_THAN_OR_EQUAL"],
///             "values": ["100"],
///         },
///     },
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
///     name="DAILYSUBSCRIPTION",
///     frequency="DAILY",
///     monitor_arn_lists=[test.arn])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CostExplorer.AnomalyMonitor("test", new()
///     {
///         Name = "AWSServiceMonitor",
///         MonitorType = "DIMENSIONAL",
///         MonitorDimension = "SERVICE",
///     });
///
///     var testAnomalySubscription = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         ThresholdExpression = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionArgs
///         {
///             Dimension = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionDimensionArgs
///             {
///                 Key = "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///                 MatchOptions = new[]
///                 {
///                     "GREATER_THAN_OR_EQUAL",
///                 },
///                 Values = new[]
///                 {
///                     "100",
///                 },
///             },
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
///         Name = "DAILYSUBSCRIPTION",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             test.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := costexplorer.NewAnomalyMonitor(ctx, "test", &costexplorer.AnomalyMonitorArgs{
/// 			Name:             pulumi.String("AWSServiceMonitor"),
/// 			MonitorType:      pulumi.String("DIMENSIONAL"),
/// 			MonitorDimension: pulumi.String("SERVICE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = costexplorer.NewAnomalySubscription(ctx, "test", &costexplorer.AnomalySubscriptionArgs{
/// 			ThresholdExpression: &costexplorer.AnomalySubscriptionThresholdExpressionArgs{
/// 				Dimension: &costexplorer.AnomalySubscriptionThresholdExpressionDimensionArgs{
/// 					Key: pulumi.String("ANOMALY_TOTAL_IMPACT_ABSOLUTE"),
/// 					MatchOptions: pulumi.StringArray{
/// 						pulumi.String("GREATER_THAN_OR_EQUAL"),
/// 					},
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("100"),
/// 					},
/// 				},
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
/// 			Name:      pulumi.String("DAILYSUBSCRIPTION"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				test.Arn,
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
///   }
/// }
///
/// resource "aws_costexplorer_anomalymonitor" "test" {
///   name              = "AWSServiceMonitor"
///   monitor_type      = "DIMENSIONAL"
///   monitor_dimension = "SERVICE"
/// }
/// resource "aws_costexplorer_anomalysubscription" "test" {
///   threshold_expression = {
///     dimension = {
///       key           = "ANOMALY_TOTAL_IMPACT_ABSOLUTE"
///       match_options = ["GREATER_THAN_OR_EQUAL"]
///       values        = ["100"]
///     }
///   }
///   subscribers {
///     type    = "EMAIL"
///     address = "abc@example.com"
///   }
///   name              = "DAILYSUBSCRIPTION"
///   frequency         = "DAILY"
///   monitor_arn_lists = [aws_costexplorer_anomalymonitor.test.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionDimensionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
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
///         var test = new AnomalyMonitor("test", AnomalyMonitorArgs.builder()
///             .name("AWSServiceMonitor")
///             .monitorType("DIMENSIONAL")
///             .monitorDimension("SERVICE")
///             .build());
///
///         var testAnomalySubscription = new AnomalySubscription("testAnomalySubscription", AnomalySubscriptionArgs.builder()
///             .thresholdExpression(AnomalySubscriptionThresholdExpressionArgs.builder()
///                 .dimension(AnomalySubscriptionThresholdExpressionDimensionArgs.builder()
///                     .key("ANOMALY_TOTAL_IMPACT_ABSOLUTE")
///                     .matchOptions("GREATER_THAN_OR_EQUAL")
///                     .values("100")
///                     .build())
///                 .build())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
///             .name("DAILYSUBSCRIPTION")
///             .frequency("DAILY")
///             .monitorArnLists(test.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:costexplorer:AnomalyMonitor
///     properties:
///       name: AWSServiceMonitor
///       monitorType: DIMENSIONAL
///       monitorDimension: SERVICE
///   testAnomalySubscription:
///     type: aws:costexplorer:AnomalySubscription
///     name: test
///     properties:
///       thresholdExpression:
///         dimension:
///           key: ANOMALY_TOTAL_IMPACT_ABSOLUTE
///           matchOptions:
///             - GREATER_THAN_OR_EQUAL
///           values:
///             - '100'
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
///       name: DAILYSUBSCRIPTION
///       frequency: DAILY
///       monitorArnLists:
///         - ${test.arn}
/// ```
///
///
/// ### Threshold Expression Example
///
/// ### Using a Percentage Threshold
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.costexplorer.AnomalySubscription("test", {
///     thresholdExpression: {
///         dimension: {
///             key: "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///             matchOptions: ["GREATER_THAN_OR_EQUAL"],
///             values: ["100"],
///         },
///     },
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
///     name: "AWSServiceMonitor",
///     frequency: "DAILY",
///     monitorArnLists: [testAwsCeAnomalyMonitor.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalySubscription("test",
///     threshold_expression={
///         "dimension": {
///             "key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///             "match_options": ["GREATER_THAN_OR_EQUAL"],
///             "values": ["100"],
///         },
///     },
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
///     name="AWSServiceMonitor",
///     frequency="DAILY",
///     monitor_arn_lists=[test_aws_ce_anomaly_monitor["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         ThresholdExpression = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionArgs
///         {
///             Dimension = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionDimensionArgs
///             {
///                 Key = "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///                 MatchOptions = new[]
///                 {
///                     "GREATER_THAN_OR_EQUAL",
///                 },
///                 Values = new[]
///                 {
///                     "100",
///                 },
///             },
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
///         Name = "AWSServiceMonitor",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             testAwsCeAnomalyMonitor.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costexplorer.NewAnomalySubscription(ctx, "test", &costexplorer.AnomalySubscriptionArgs{
/// 			ThresholdExpression: &costexplorer.AnomalySubscriptionThresholdExpressionArgs{
/// 				Dimension: &costexplorer.AnomalySubscriptionThresholdExpressionDimensionArgs{
/// 					Key: pulumi.String("ANOMALY_TOTAL_IMPACT_PERCENTAGE"),
/// 					MatchOptions: pulumi.StringArray{
/// 						pulumi.String("GREATER_THAN_OR_EQUAL"),
/// 					},
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("100"),
/// 					},
/// 				},
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
/// 			Name:      pulumi.String("AWSServiceMonitor"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				testAwsCeAnomalyMonitor.Arn,
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
///   }
/// }
///
/// resource "aws_costexplorer_anomalysubscription" "test" {
///   threshold_expression = {
///     dimension = {
///       key           = "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
///       match_options = ["GREATER_THAN_OR_EQUAL"]
///       values        = ["100"]
///     }
///   }
///   subscribers {
///     type    = "EMAIL"
///     address = "abc@example.com"
///   }
///   name              = "AWSServiceMonitor"
///   frequency         = "DAILY"
///   monitor_arn_lists = [testAwsCeAnomalyMonitor.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionDimensionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
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
///         var test = new AnomalySubscription("test", AnomalySubscriptionArgs.builder()
///             .thresholdExpression(AnomalySubscriptionThresholdExpressionArgs.builder()
///                 .dimension(AnomalySubscriptionThresholdExpressionDimensionArgs.builder()
///                     .key("ANOMALY_TOTAL_IMPACT_PERCENTAGE")
///                     .matchOptions("GREATER_THAN_OR_EQUAL")
///                     .values("100")
///                     .build())
///                 .build())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
///             .name("AWSServiceMonitor")
///             .frequency("DAILY")
///             .monitorArnLists(testAwsCeAnomalyMonitor.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:costexplorer:AnomalySubscription
///     properties:
///       thresholdExpression:
///         dimension:
///           key: ANOMALY_TOTAL_IMPACT_PERCENTAGE
///           matchOptions:
///             - GREATER_THAN_OR_EQUAL
///           values:
///             - '100'
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
///       name: AWSServiceMonitor
///       frequency: DAILY
///       monitorArnLists:
///         - ${testAwsCeAnomalyMonitor.arn}
/// ```
///
///
/// ### Using an `and` Expression
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.costexplorer.AnomalySubscription("test", {
///     thresholdExpression: {
///         ands: [
///             {
///                 dimension: {
///                     key: "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///                     matchOptions: ["GREATER_THAN_OR_EQUAL"],
///                     values: ["100"],
///                 },
///             },
///             {
///                 dimension: {
///                     key: "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///                     matchOptions: ["GREATER_THAN_OR_EQUAL"],
///                     values: ["50"],
///                 },
///             },
///         ],
///     },
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
///     name: "AWSServiceMonitor",
///     frequency: "DAILY",
///     monitorArnLists: [testAwsCeAnomalyMonitor.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalySubscription("test",
///     threshold_expression={
///         "ands": [
///             {
///                 "dimension": {
///                     "key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///                     "match_options": ["GREATER_THAN_OR_EQUAL"],
///                     "values": ["100"],
///                 },
///             },
///             {
///                 "dimension": {
///                     "key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///                     "match_options": ["GREATER_THAN_OR_EQUAL"],
///                     "values": ["50"],
///                 },
///             },
///         ],
///     },
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
///     name="AWSServiceMonitor",
///     frequency="DAILY",
///     monitor_arn_lists=[test_aws_ce_anomaly_monitor["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         ThresholdExpression = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionArgs
///         {
///             Ands = new[]
///             {
///                 new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionAndArgs
///                 {
///                     Dimension = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionAndDimensionArgs
///                     {
///                         Key = "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///                         MatchOptions = new[]
///                         {
///                             "GREATER_THAN_OR_EQUAL",
///                         },
///                         Values = new[]
///                         {
///                             "100",
///                         },
///                     },
///                 },
///                 new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionAndArgs
///                 {
///                     Dimension = new Aws.CostExplorer.Inputs.AnomalySubscriptionThresholdExpressionAndDimensionArgs
///                     {
///                         Key = "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///                         MatchOptions = new[]
///                         {
///                             "GREATER_THAN_OR_EQUAL",
///                         },
///                         Values = new[]
///                         {
///                             "50",
///                         },
///                     },
///                 },
///             },
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
///         Name = "AWSServiceMonitor",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             testAwsCeAnomalyMonitor.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costexplorer.NewAnomalySubscription(ctx, "test", &costexplorer.AnomalySubscriptionArgs{
/// 			ThresholdExpression: &costexplorer.AnomalySubscriptionThresholdExpressionArgs{
/// 				Ands: costexplorer.AnomalySubscriptionThresholdExpressionAndArray{
/// 					&costexplorer.AnomalySubscriptionThresholdExpressionAndArgs{
/// 						Dimension: &costexplorer.AnomalySubscriptionThresholdExpressionAndDimensionArgs{
/// 							Key: pulumi.String("ANOMALY_TOTAL_IMPACT_ABSOLUTE"),
/// 							MatchOptions: pulumi.StringArray{
/// 								pulumi.String("GREATER_THAN_OR_EQUAL"),
/// 							},
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("100"),
/// 							},
/// 						},
/// 					},
/// 					&costexplorer.AnomalySubscriptionThresholdExpressionAndArgs{
/// 						Dimension: &costexplorer.AnomalySubscriptionThresholdExpressionAndDimensionArgs{
/// 							Key: pulumi.String("ANOMALY_TOTAL_IMPACT_PERCENTAGE"),
/// 							MatchOptions: pulumi.StringArray{
/// 								pulumi.String("GREATER_THAN_OR_EQUAL"),
/// 							},
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("50"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
/// 			Name:      pulumi.String("AWSServiceMonitor"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				testAwsCeAnomalyMonitor.Arn,
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
///   }
/// }
///
/// resource "aws_costexplorer_anomalysubscription" "test" {
///   threshold_expression = {
///     ands = [{
///       "dimension" = {
///         "key"          = "ANOMALY_TOTAL_IMPACT_ABSOLUTE"
///         "matchOptions" = ["GREATER_THAN_OR_EQUAL"]
///         "values"       = ["100"]
///       }
///       }, {
///       "dimension" = {
///         "key"          = "ANOMALY_TOTAL_IMPACT_PERCENTAGE"
///         "matchOptions" = ["GREATER_THAN_OR_EQUAL"]
///         "values"       = ["50"]
///       }
///     }]
///   }
///   subscribers {
///     type    = "EMAIL"
///     address = "abc@example.com"
///   }
///   name              = "AWSServiceMonitor"
///   frequency         = "DAILY"
///   monitor_arn_lists = [testAwsCeAnomalyMonitor.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionAndArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionAndDimensionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
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
///         var test = new AnomalySubscription("test", AnomalySubscriptionArgs.builder()
///             .thresholdExpression(AnomalySubscriptionThresholdExpressionArgs.builder()
///                 .ands(
///                     AnomalySubscriptionThresholdExpressionAndArgs.builder()
///                         .dimension(AnomalySubscriptionThresholdExpressionAndDimensionArgs.builder()
///                             .key("ANOMALY_TOTAL_IMPACT_ABSOLUTE")
///                             .matchOptions("GREATER_THAN_OR_EQUAL")
///                             .values("100")
///                             .build())
///                         .build(),
///                     AnomalySubscriptionThresholdExpressionAndArgs.builder()
///                         .dimension(AnomalySubscriptionThresholdExpressionAndDimensionArgs.builder()
///                             .key("ANOMALY_TOTAL_IMPACT_PERCENTAGE")
///                             .matchOptions("GREATER_THAN_OR_EQUAL")
///                             .values("50")
///                             .build())
///                         .build())
///                 .build())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
///             .name("AWSServiceMonitor")
///             .frequency("DAILY")
///             .monitorArnLists(testAwsCeAnomalyMonitor.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:costexplorer:AnomalySubscription
///     properties:
///       thresholdExpression:
///         ands:
///           - dimension:
///               key: ANOMALY_TOTAL_IMPACT_ABSOLUTE
///               matchOptions:
///                 - GREATER_THAN_OR_EQUAL
///               values:
///                 - '100'
///           - dimension:
///               key: ANOMALY_TOTAL_IMPACT_PERCENTAGE
///               matchOptions:
///                 - GREATER_THAN_OR_EQUAL
///               values:
///                 - '50'
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
///       name: AWSServiceMonitor
///       frequency: DAILY
///       monitorArnLists:
///         - ${testAwsCeAnomalyMonitor.arn}
/// ```
///
///
/// ### SNS Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const costAnomalyUpdates = new aws.sns.Topic("cost_anomaly_updates", {name: "CostAnomalyUpdates"});
/// const snsTopicPolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [
///         {
///             principals: [{
///                 type: "Service",
///                 identifiers: ["costalerts.amazonaws.com"],
///             }],
///             sid: "AWSAnomalyDetectionSNSPublishingPermissions",
///             actions: ["SNS:Publish"],
///             effect: "Allow",
///             resources: [costAnomalyUpdates.arn],
///         },
///         {
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "AWS:SourceOwner",
///                 values: [accountId],
///             }],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             sid: "__default_statement_ID",
///             actions: [
///                 "SNS:Subscribe",
///                 "SNS:SetTopicAttributes",
///                 "SNS:RemovePermission",
///                 "SNS:Receive",
///                 "SNS:Publish",
///                 "SNS:ListSubscriptionsByTopic",
///                 "SNS:GetTopicAttributes",
///                 "SNS:DeleteTopic",
///                 "SNS:AddPermission",
///             ],
///             effect: "Allow",
///             resources: [costAnomalyUpdates.arn],
///         },
///     ],
///     policyId: "__default_policy_ID",
/// });
/// const _default = new aws.sns.TopicPolicy("default", {
///     arn: costAnomalyUpdates.arn,
///     policy: snsTopicPolicy.json,
/// });
/// const anomalyMonitor = new aws.costexplorer.AnomalyMonitor("anomaly_monitor", {
///     name: "AWSServiceMonitor",
///     monitorType: "DIMENSIONAL",
///     monitorDimension: "SERVICE",
/// });
/// const realtimeSubscription = new aws.costexplorer.AnomalySubscription("realtime_subscription", {
///     subscribers: [{
///         type: "SNS",
///         address: costAnomalyUpdates.arn,
///     }],
///     name: "RealtimeAnomalySubscription",
///     frequency: "IMMEDIATE",
///     monitorArnLists: [anomalyMonitor.arn],
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost_anomaly_updates = aws.sns.Topic("cost_anomaly_updates", name="CostAnomalyUpdates")
/// sns_topic_policy = aws.iam.get_policy_document_output(statements=[
///         {
///             "principals": [{
///                 "type": "Service",
///                 "identifiers": ["costalerts.amazonaws.com"],
///             }],
///             "sid": "AWSAnomalyDetectionSNSPublishingPermissions",
///             "actions": ["SNS:Publish"],
///             "effect": "Allow",
///             "resources": [cost_anomaly_updates.arn],
///         },
///         {
///             "conditions": [{
///                 "test": "StringEquals",
///                 "variable": "AWS:SourceOwner",
///                 "values": [account_id],
///             }],
///             "principals": [{
///                 "type": "AWS",
///                 "identifiers": ["*"],
///             }],
///             "sid": "__default_statement_ID",
///             "actions": [
///                 "SNS:Subscribe",
///                 "SNS:SetTopicAttributes",
///                 "SNS:RemovePermission",
///                 "SNS:Receive",
///                 "SNS:Publish",
///                 "SNS:ListSubscriptionsByTopic",
///                 "SNS:GetTopicAttributes",
///                 "SNS:DeleteTopic",
///                 "SNS:AddPermission",
///             ],
///             "effect": "Allow",
///             "resources": [cost_anomaly_updates.arn],
///         },
///     ],
///     policy_id="__default_policy_ID")
/// default = aws.sns.TopicPolicy("default",
///     arn=cost_anomaly_updates.arn,
///     policy=sns_topic_policy.json)
/// anomaly_monitor = aws.costexplorer.AnomalyMonitor("anomaly_monitor",
///     name="AWSServiceMonitor",
///     monitor_type="DIMENSIONAL",
///     monitor_dimension="SERVICE")
/// realtime_subscription = aws.costexplorer.AnomalySubscription("realtime_subscription",
///     subscribers=[{
///         "type": "SNS",
///         "address": cost_anomaly_updates.arn,
///     }],
///     name="RealtimeAnomalySubscription",
///     frequency="IMMEDIATE",
///     monitor_arn_lists=[anomaly_monitor.arn],
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var costAnomalyUpdates = new Aws.Sns.Topic("cost_anomaly_updates", new()
///     {
///         Name = "CostAnomalyUpdates",
///     });
///
///     var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "costalerts.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "AWSAnomalyDetectionSNSPublishingPermissions",
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     costAnomalyUpdates.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "AWS:SourceOwner",
///                         Values = new[]
///                         {
///                             accountId,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Sid = "__default_statement_ID",
///                 Actions = new[]
///                 {
///                     "SNS:Subscribe",
///                     "SNS:SetTopicAttributes",
///                     "SNS:RemovePermission",
///                     "SNS:Receive",
///                     "SNS:Publish",
///                     "SNS:ListSubscriptionsByTopic",
///                     "SNS:GetTopicAttributes",
///                     "SNS:DeleteTopic",
///                     "SNS:AddPermission",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     costAnomalyUpdates.Arn,
///                 },
///             },
///         },
///         PolicyId = "__default_policy_ID",
///     });
///
///     var @default = new Aws.Sns.TopicPolicy("default", new()
///     {
///         Arn = costAnomalyUpdates.Arn,
///         Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var anomalyMonitor = new Aws.CostExplorer.AnomalyMonitor("anomaly_monitor", new()
///     {
///         Name = "AWSServiceMonitor",
///         MonitorType = "DIMENSIONAL",
///         MonitorDimension = "SERVICE",
///     });
///
///     var realtimeSubscription = new Aws.CostExplorer.AnomalySubscription("realtime_subscription", new()
///     {
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "SNS",
///                 Address = costAnomalyUpdates.Arn,
///             },
///         },
///         Name = "RealtimeAnomalySubscription",
///         Frequency = "IMMEDIATE",
///         MonitorArnLists = new[]
///         {
///             anomalyMonitor.Arn,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		costAnomalyUpdates, err := sns.NewTopic(ctx, "cost_anomaly_updates", &sns.TopicArgs{
/// 			Name: pulumi.String("CostAnomalyUpdates"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snsTopicPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("costalerts.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Sid: pulumi.String("AWSAnomalyDetectionSNSPublishingPermissions"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Resources: pulumi.StringArray{
/// 						costAnomalyUpdates.Arn,
/// 					},
/// 				},
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("AWS:SourceOwner"),
/// 							Values: pulumi.StringArray{
/// 								accountId,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Sid: pulumi.String("__default_statement_ID"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Subscribe"),
/// 						pulumi.String("SNS:SetTopicAttributes"),
/// 						pulumi.String("SNS:RemovePermission"),
/// 						pulumi.String("SNS:Receive"),
/// 						pulumi.String("SNS:Publish"),
/// 						pulumi.String("SNS:ListSubscriptionsByTopic"),
/// 						pulumi.String("SNS:GetTopicAttributes"),
/// 						pulumi.String("SNS:DeleteTopic"),
/// 						pulumi.String("SNS:AddPermission"),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Resources: pulumi.StringArray{
/// 						costAnomalyUpdates.Arn,
/// 					},
/// 				},
/// 			},
/// 			PolicyId: pulumi.String("__default_policy_ID"),
/// 		}, nil)
/// 		_default, err := sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// 			Arn:    costAnomalyUpdates.Arn,
/// 			Policy: snsTopicPolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		anomalyMonitor, err := costexplorer.NewAnomalyMonitor(ctx, "anomaly_monitor", &costexplorer.AnomalyMonitorArgs{
/// 			Name:             pulumi.String("AWSServiceMonitor"),
/// 			MonitorType:      pulumi.String("DIMENSIONAL"),
/// 			MonitorDimension: pulumi.String("SERVICE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = costexplorer.NewAnomalySubscription(ctx, "realtime_subscription", &costexplorer.AnomalySubscriptionArgs{
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("SNS"),
/// 					Address: costAnomalyUpdates.Arn,
/// 				},
/// 			},
/// 			Name:      pulumi.String("RealtimeAnomalySubscription"),
/// 			Frequency: pulumi.String("IMMEDIATE"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				anomalyMonitor.Arn,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// data "aws_iam_getpolicydocument" "snsTopicPolicy" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["costalerts.amazonaws.com"]
///     }
///     sid       = "AWSAnomalyDetectionSNSPublishingPermissions"
///     actions   = ["SNS:Publish"]
///     effect    = "Allow"
///     resources = [aws_sns_topic.cost_anomaly_updates.arn]
///   }
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "AWS:SourceOwner"
///       values   = [accountId]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     sid       = "__default_statement_ID"
///     actions   = ["SNS:Subscribe", "SNS:SetTopicAttributes", "SNS:RemovePermission", "SNS:Receive", "SNS:Publish", "SNS:ListSubscriptionsByTopic", "SNS:GetTopicAttributes", "SNS:DeleteTopic", "SNS:AddPermission"]
///     effect    = "Allow"
///     resources = [aws_sns_topic.cost_anomaly_updates.arn]
///   }
///   policy_id = "__default_policy_ID"
/// }
///
/// resource "aws_sns_topic" "cost_anomaly_updates" {
///   name = "CostAnomalyUpdates"
/// }
/// resource "aws_sns_topicpolicy" "default" {
///   arn    = aws_sns_topic.cost_anomaly_updates.arn
///   policy = data.aws_iam_getpolicydocument.snsTopicPolicy.json
/// }
/// resource "aws_costexplorer_anomalymonitor" "anomaly_monitor" {
///   name              = "AWSServiceMonitor"
///   monitor_type      = "DIMENSIONAL"
///   monitor_dimension = "SERVICE"
/// }
/// resource "aws_costexplorer_anomalysubscription" "realtime_subscription" {
///   depends_on = [aws_sns_topicpolicy.default]
///   subscribers {
///     type    = "SNS"
///     address = aws_sns_topic.cost_anomaly_updates.arn
///   }
///   name              = "RealtimeAnomalySubscription"
///   frequency         = "IMMEDIATE"
///   monitor_arn_lists = [aws_costexplorer_anomalymonitor.anomaly_monitor.arn]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var costAnomalyUpdates = new Topic("costAnomalyUpdates", TopicArgs.builder()
///             .name("CostAnomalyUpdates")
///             .build());
///
///         final var snsTopicPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("costalerts.amazonaws.com")
///                         .build())
///                     .sid("AWSAnomalyDetectionSNSPublishingPermissions")
///                     .actions("SNS:Publish")
///                     .effect("Allow")
///                     .resources(costAnomalyUpdates.arn())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("AWS:SourceOwner")
///                         .values(accountId)
///                         .build())
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("*")
///                         .build())
///                     .sid("__default_statement_ID")
///                     .actions(
///                         "SNS:Subscribe",
///                         "SNS:SetTopicAttributes",
///                         "SNS:RemovePermission",
///                         "SNS:Receive",
///                         "SNS:Publish",
///                         "SNS:ListSubscriptionsByTopic",
///                         "SNS:GetTopicAttributes",
///                         "SNS:DeleteTopic",
///                         "SNS:AddPermission")
///                     .effect("Allow")
///                     .resources(costAnomalyUpdates.arn())
///                     .build())
///             .policyId("__default_policy_ID")
///             .build());
///
///         var default_ = new TopicPolicy("default", TopicPolicyArgs.builder()
///             .arn(costAnomalyUpdates.arn())
///             .policy(snsTopicPolicy.applyValue(_snsTopicPolicy -> _snsTopicPolicy.json()))
///             .build());
///
///         var anomalyMonitor = new AnomalyMonitor("anomalyMonitor", AnomalyMonitorArgs.builder()
///             .name("AWSServiceMonitor")
///             .monitorType("DIMENSIONAL")
///             .monitorDimension("SERVICE")
///             .build());
///
///         var realtimeSubscription = new AnomalySubscription("realtimeSubscription", AnomalySubscriptionArgs.builder()
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("SNS")
///                 .address(costAnomalyUpdates.arn())
///                 .build())
///             .name("RealtimeAnomalySubscription")
///             .frequency("IMMEDIATE")
///             .monitorArnLists(anomalyMonitor.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   costAnomalyUpdates:
///     type: aws:sns:Topic
///     name: cost_anomaly_updates
///     properties:
///       name: CostAnomalyUpdates
///   default:
///     type: aws:sns:TopicPolicy
///     properties:
///       arn: ${costAnomalyUpdates.arn}
///       policy: ${snsTopicPolicy.json}
///   anomalyMonitor:
///     type: aws:costexplorer:AnomalyMonitor
///     name: anomaly_monitor
///     properties:
///       name: AWSServiceMonitor
///       monitorType: DIMENSIONAL
///       monitorDimension: SERVICE
///   realtimeSubscription:
///     type: aws:costexplorer:AnomalySubscription
///     name: realtime_subscription
///     properties:
///       subscribers:
///         - type: SNS
///           address: ${costAnomalyUpdates.arn}
///       name: RealtimeAnomalySubscription
///       frequency: IMMEDIATE
///       monitorArnLists:
///         - ${anomalyMonitor.arn}
///     options:
///       dependsOn:
///         - ${default}
/// variables:
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - costalerts.amazonaws.com
///             sid: AWSAnomalyDetectionSNSPublishingPermissions
///             actions:
///               - SNS:Publish
///             effect: Allow
///             resources:
///               - ${costAnomalyUpdates.arn}
///           - conditions:
///               - test: StringEquals
///                 variable: AWS:SourceOwner
///                 values:
///                   - ${accountId}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             sid: __default_statement_ID
///             actions:
///               - SNS:Subscribe
///               - SNS:SetTopicAttributes
///               - SNS:RemovePermission
///               - SNS:Receive
///               - SNS:Publish
///               - SNS:ListSubscriptionsByTopic
///               - SNS:GetTopicAttributes
///               - SNS:DeleteTopic
///               - SNS:AddPermission
///             effect: Allow
///             resources:
///               - ${costAnomalyUpdates.arn}
///         policyId: __default_policy_ID
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Cost Explorer anomaly subscription.
///
///
/// Using `pulumi import`, import `aws.costexplorer.AnomalySubscription` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/anomalySubscription:AnomalySubscription example AnomalySubscriptionARN
/// ```
class AnomalySubscription extends pulumi.CustomResource {
  /// The unique identifier for the AWS account in which the anomaly subscription ought to be created.
  late final pulumi.Output<String> accountId;
  /// ARN of the anomaly subscription.
  late final pulumi.Output<String> arn;
  /// The frequency that anomaly reports are sent. Valid Values: `DAILY` | `IMMEDIATE` | `WEEKLY`.
  late final pulumi.Output<String> frequency;
  /// A list of cost anomaly monitors.
  late final pulumi.Output<List<String>> monitorArnLists;
  /// The name for the subscription.
  late final pulumi.Output<String> name;
  /// A subscriber configuration. Multiple subscribers can be defined.
  late final pulumi.Output<List<AnomalySubscriptionSubscriber>> subscribers;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  late final pulumi.Output<AnomalySubscriptionThresholdExpression> thresholdExpression;

  /// Creates a new [AnomalySubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnomalySubscription]. {@macro pulumi_costexplorer_anomaly_subscription_anomaly_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnomalySubscription(
    String name, {
    AnomalySubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalySubscription:AnomalySubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    frequency = registerOutput<String>('frequency');
    monitorArnLists = registerOutput<List<String>>('monitorArnLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    subscribers = registerOutput<List<AnomalySubscriptionSubscriber>>('subscribers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(guardedValue, (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thresholdExpression = registerOutput<AnomalySubscriptionThresholdExpression>('thresholdExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalySubscriptionThresholdExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AnomalySubscription] resource's state with the given [name] and [id].
  static AnomalySubscription get(
    String name,
    pulumi.Input<String> id, {
    AnomalySubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AnomalySubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AnomalySubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/anomalySubscription:AnomalySubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    frequency = registerOutput<String>('frequency');
    monitorArnLists = registerOutput<List<String>>('monitorArnLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    subscribers = registerOutput<List<AnomalySubscriptionSubscriber>>('subscribers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(guardedValue, (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thresholdExpression = registerOutput<AnomalySubscriptionThresholdExpression>('thresholdExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalySubscriptionThresholdExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AnomalySubscription] resource.
  AnomalySubscription.reference(String urn)
    : super(
        'aws:costexplorer/anomalySubscription:AnomalySubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    arn = registerOutput<String>('arn');
    frequency = registerOutput<String>('frequency');
    monitorArnLists = registerOutput<List<String>>('monitorArnLists', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    subscribers = registerOutput<List<AnomalySubscriptionSubscriber>>('subscribers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AnomalySubscriptionSubscriber>(guardedValue, (value) => AnomalySubscriptionSubscriber.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thresholdExpression = registerOutput<AnomalySubscriptionThresholdExpression>('thresholdExpression', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnomalySubscriptionThresholdExpression.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
