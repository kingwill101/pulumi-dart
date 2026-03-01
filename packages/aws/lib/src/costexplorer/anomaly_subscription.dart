import 'package:pulumi/pulumi.dart' as pulumi;
import 'anomaly_subscription_args.dart';
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
///     name: "DAILYSUBSCRIPTION",
///     frequency: "DAILY",
///     monitorArnLists: [test.arn],
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
///     thresholdExpression: {
///         dimension: {
///             key: "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///             matchOptions: ["GREATER_THAN_OR_EQUAL"],
///             values: ["100"],
///         },
///     },
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
///     name="DAILYSUBSCRIPTION",
///     frequency="DAILY",
///     monitor_arn_lists=[test.arn],
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
///     threshold_expression={
///         "dimension": {
///             "key": "ANOMALY_TOTAL_IMPACT_ABSOLUTE",
///             "match_options": ["GREATER_THAN_OR_EQUAL"],
///             "values": ["100"],
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
///     var test = new Aws.CostExplorer.AnomalyMonitor("test", new()
///     {
///         Name = "AWSServiceMonitor",
///         MonitorType = "DIMENSIONAL",
///         MonitorDimension = "SERVICE",
///     });
///
///     var testAnomalySubscription = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         Name = "DAILYSUBSCRIPTION",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             test.Arn,
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
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
/// 			Name:      pulumi.String("DAILYSUBSCRIPTION"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				test.Arn,
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionDimensionArgs;
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
///         var test = new AnomalyMonitor("test", AnomalyMonitorArgs.builder()
///             .name("AWSServiceMonitor")
///             .monitorType("DIMENSIONAL")
///             .monitorDimension("SERVICE")
///             .build());
///
///         var testAnomalySubscription = new AnomalySubscription("testAnomalySubscription", AnomalySubscriptionArgs.builder()
///             .name("DAILYSUBSCRIPTION")
///             .frequency("DAILY")
///             .monitorArnLists(test.arn())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
///             .thresholdExpression(AnomalySubscriptionThresholdExpressionArgs.builder()
///                 .dimension(AnomalySubscriptionThresholdExpressionDimensionArgs.builder()
///                     .key("ANOMALY_TOTAL_IMPACT_ABSOLUTE")
///                     .matchOptions("GREATER_THAN_OR_EQUAL")
///                     .values("100")
///                     .build())
///                 .build())
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
///       name: DAILYSUBSCRIPTION
///       frequency: DAILY
///       monitorArnLists:
///         - ${test.arn}
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
///       thresholdExpression:
///         dimension:
///           key: ANOMALY_TOTAL_IMPACT_ABSOLUTE
///           matchOptions:
///             - GREATER_THAN_OR_EQUAL
///           values:
///             - '100'
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
///     name: "AWSServiceMonitor",
///     frequency: "DAILY",
///     monitorArnLists: [testAwsCeAnomalyMonitor.arn],
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
///     thresholdExpression: {
///         dimension: {
///             key: "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///             matchOptions: ["GREATER_THAN_OR_EQUAL"],
///             values: ["100"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalySubscription("test",
///     name="AWSServiceMonitor",
///     frequency="DAILY",
///     monitor_arn_lists=[test_aws_ce_anomaly_monitor["arn"]],
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
///     threshold_expression={
///         "dimension": {
///             "key": "ANOMALY_TOTAL_IMPACT_PERCENTAGE",
///             "match_options": ["GREATER_THAN_OR_EQUAL"],
///             "values": ["100"],
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
///     var test = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         Name = "AWSServiceMonitor",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             testAwsCeAnomalyMonitor.Arn,
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
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
/// 			Name:      pulumi.String("AWSServiceMonitor"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				testAwsCeAnomalyMonitor.Arn,
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionDimensionArgs;
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
///         var test = new AnomalySubscription("test", AnomalySubscriptionArgs.builder()
///             .name("AWSServiceMonitor")
///             .frequency("DAILY")
///             .monitorArnLists(testAwsCeAnomalyMonitor.arn())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
///             .thresholdExpression(AnomalySubscriptionThresholdExpressionArgs.builder()
///                 .dimension(AnomalySubscriptionThresholdExpressionDimensionArgs.builder()
///                     .key("ANOMALY_TOTAL_IMPACT_PERCENTAGE")
///                     .matchOptions("GREATER_THAN_OR_EQUAL")
///                     .values("100")
///                     .build())
///                 .build())
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
///       name: AWSServiceMonitor
///       frequency: DAILY
///       monitorArnLists:
///         - ${testAwsCeAnomalyMonitor.arn}
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
///       thresholdExpression:
///         dimension:
///           key: ANOMALY_TOTAL_IMPACT_PERCENTAGE
///           matchOptions:
///             - GREATER_THAN_OR_EQUAL
///           values:
///             - '100'
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
///     name: "AWSServiceMonitor",
///     frequency: "DAILY",
///     monitorArnLists: [testAwsCeAnomalyMonitor.arn],
///     subscribers: [{
///         type: "EMAIL",
///         address: "abc@example.com",
///     }],
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.costexplorer.AnomalySubscription("test",
///     name="AWSServiceMonitor",
///     frequency="DAILY",
///     monitor_arn_lists=[test_aws_ce_anomaly_monitor["arn"]],
///     subscribers=[{
///         "type": "EMAIL",
///         "address": "abc@example.com",
///     }],
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
///     var test = new Aws.CostExplorer.AnomalySubscription("test", new()
///     {
///         Name = "AWSServiceMonitor",
///         Frequency = "DAILY",
///         MonitorArnLists = new[]
///         {
///             testAwsCeAnomalyMonitor.Arn,
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "EMAIL",
///                 Address = "abc@example.com",
///             },
///         },
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
/// 			Name:      pulumi.String("AWSServiceMonitor"),
/// 			Frequency: pulumi.String("DAILY"),
/// 			MonitorArnLists: pulumi.StringArray{
/// 				testAwsCeAnomalyMonitor.Arn,
/// 			},
/// 			Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// 				&costexplorer.AnomalySubscriptionSubscriberArgs{
/// 					Type:    pulumi.String("EMAIL"),
/// 					Address: pulumi.String("abc@example.com"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionThresholdExpressionArgs;
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
///         var test = new AnomalySubscription("test", AnomalySubscriptionArgs.builder()
///             .name("AWSServiceMonitor")
///             .frequency("DAILY")
///             .monitorArnLists(testAwsCeAnomalyMonitor.arn())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("EMAIL")
///                 .address("abc@example.com")
///                 .build())
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
///       name: AWSServiceMonitor
///       frequency: DAILY
///       monitorArnLists:
///         - ${testAwsCeAnomalyMonitor.arn}
///       subscribers:
///         - type: EMAIL
///           address: abc@example.com
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
/// const snsTopicPolicy = pulumi.all([costAnomalyUpdates.arn, costAnomalyUpdates.arn]).apply(([costAnomalyUpdatesArn, costAnomalyUpdatesArn1]) => aws.iam.getPolicyDocumentOutput({
///     policyId: "__default_policy_ID",
///     statements: [
///         {
///             sid: "AWSAnomalyDetectionSNSPublishingPermissions",
///             actions: ["SNS:Publish"],
///             effect: "Allow",
///             principals: [{
///                 type: "Service",
///                 identifiers: ["costalerts.amazonaws.com"],
///             }],
///             resources: [costAnomalyUpdatesArn],
///         },
///         {
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
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "AWS:SourceOwner",
///                 values: [accountId],
///             }],
///             effect: "Allow",
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             resources: [costAnomalyUpdatesArn1],
///         },
///     ],
/// }));
/// const _default = new aws.sns.TopicPolicy("default", {
///     arn: costAnomalyUpdates.arn,
///     policy: snsTopicPolicy.apply(snsTopicPolicy => snsTopicPolicy.json),
/// });
/// const anomalyMonitor = new aws.costexplorer.AnomalyMonitor("anomaly_monitor", {
///     name: "AWSServiceMonitor",
///     monitorType: "DIMENSIONAL",
///     monitorDimension: "SERVICE",
/// });
/// const realtimeSubscription = new aws.costexplorer.AnomalySubscription("realtime_subscription", {
///     name: "RealtimeAnomalySubscription",
///     frequency: "IMMEDIATE",
///     monitorArnLists: [anomalyMonitor.arn],
///     subscribers: [{
///         type: "SNS",
///         address: costAnomalyUpdates.arn,
///     }],
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// cost_anomaly_updates = aws.sns.Topic("cost_anomaly_updates", name="CostAnomalyUpdates")
/// sns_topic_policy = pulumi.Output.all(
///     costAnomalyUpdatesArn=cost_anomaly_updates.arn,
///     costAnomalyUpdatesArn1=cost_anomaly_updates.arn
/// ).apply(lambda resolved_outputs: aws.iam.get_policy_document_output(policy_id="__default_policy_ID",
///     statements=[
///         {
///             "sid": "AWSAnomalyDetectionSNSPublishingPermissions",
///             "actions": ["SNS:Publish"],
///             "effect": "Allow",
///             "principals": [{
///                 "type": "Service",
///                 "identifiers": ["costalerts.amazonaws.com"],
///             }],
///             "resources": [resolved_outputs['costAnomalyUpdatesArn']],
///         },
///         {
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
///             "conditions": [{
///                 "test": "StringEquals",
///                 "variable": "AWS:SourceOwner",
///                 "values": [account_id],
///             }],
///             "effect": "Allow",
///             "principals": [{
///                 "type": "AWS",
///                 "identifiers": ["*"],
///             }],
///             "resources": [resolved_outputs['costAnomalyUpdatesArn1']],
///         },
///     ]))
///
/// default = aws.sns.TopicPolicy("default",
///     arn=cost_anomaly_updates.arn,
///     policy=sns_topic_policy.json)
/// anomaly_monitor = aws.costexplorer.AnomalyMonitor("anomaly_monitor",
///     name="AWSServiceMonitor",
///     monitor_type="DIMENSIONAL",
///     monitor_dimension="SERVICE")
/// realtime_subscription = aws.costexplorer.AnomalySubscription("realtime_subscription",
///     name="RealtimeAnomalySubscription",
///     frequency="IMMEDIATE",
///     monitor_arn_lists=[anomaly_monitor.arn],
///     subscribers=[{
///         "type": "SNS",
///         "address": cost_anomaly_updates.arn,
///     }],
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
///         PolicyId = "__default_policy_ID",
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Sid = "AWSAnomalyDetectionSNSPublishingPermissions",
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "costalerts.amazonaws.com",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     costAnomalyUpdates.Arn,
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
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
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "AWS:SourceOwner",
///                         Values = new[]
///                         {
///                             accountId,
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     costAnomalyUpdates.Arn,
///                 },
///             },
///         },
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
///         Name = "RealtimeAnomalySubscription",
///         Frequency = "IMMEDIATE",
///         MonitorArnLists = new[]
///         {
///             anomalyMonitor.Arn,
///         },
///         Subscribers = new[]
///         {
///             new Aws.CostExplorer.Inputs.AnomalySubscriptionSubscriberArgs
///             {
///                 Type = "SNS",
///                 Address = costAnomalyUpdates.Arn,
///             },
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// costAnomalyUpdates, err := sns.NewTopic(ctx, "cost_anomaly_updates", &sns.TopicArgs{
/// Name: pulumi.String("CostAnomalyUpdates"),
/// })
/// if err != nil {
/// return err
/// }
/// snsTopicPolicy := pulumi.All(costAnomalyUpdates.Arn,costAnomalyUpdates.Arn).ApplyT(func(_args []interface{}) (iam.GetPolicyDocumentResult, error) {
/// costAnomalyUpdatesArn := _args[0].(string)
/// costAnomalyUpdatesArn1 := _args[1].(string)
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// PolicyId: pulumi.StringRef(pulumi.StringRef("__default_policy_ID")),
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("AWSAnomalyDetectionSNSPublishingPermissions"))),
/// Actions: []string{
/// "SNS:Publish",
/// },
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "Service",
/// Identifiers: []string{
/// "costalerts.amazonaws.com",
/// },
/// },
/// },
/// Resources: []string{
/// costAnomalyUpdatesArn,
/// },
/// },
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("__default_statement_ID"))),
/// Actions: []string{
/// "SNS:Subscribe",
/// "SNS:SetTopicAttributes",
/// "SNS:RemovePermission",
/// "SNS:Receive",
/// "SNS:Publish",
/// "SNS:ListSubscriptionsByTopic",
/// "SNS:GetTopicAttributes",
/// "SNS:DeleteTopic",
/// "SNS:AddPermission",
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "StringEquals",
/// Variable: "AWS:SourceOwner",
/// Values: interface{}{
/// accountId,
/// },
/// },
/// },
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: []string{
/// "*",
/// },
/// },
/// },
/// Resources: []string{
/// costAnomalyUpdatesArn1,
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _default, err := sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// Arn: costAnomalyUpdates.Arn,
/// Policy: pulumi.String(snsTopicPolicy.ApplyT(func(snsTopicPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &snsTopicPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// anomalyMonitor, err := costexplorer.NewAnomalyMonitor(ctx, "anomaly_monitor", &costexplorer.AnomalyMonitorArgs{
/// Name: pulumi.String("AWSServiceMonitor"),
/// MonitorType: pulumi.String("DIMENSIONAL"),
/// MonitorDimension: pulumi.String("SERVICE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = costexplorer.NewAnomalySubscription(ctx, "realtime_subscription", &costexplorer.AnomalySubscriptionArgs{
/// Name: pulumi.String("RealtimeAnomalySubscription"),
/// Frequency: pulumi.String("IMMEDIATE"),
/// MonitorArnLists: pulumi.StringArray{
/// anomalyMonitor.Arn,
/// },
/// Subscribers: costexplorer.AnomalySubscriptionSubscriberArray{
/// &costexplorer.AnomalySubscriptionSubscriberArgs{
/// Type: pulumi.String("SNS"),
/// Address: costAnomalyUpdates.Arn,
/// },
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// _default,
/// }))
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
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
/// import com.pulumi.aws.costexplorer.AnomalyMonitor;
/// import com.pulumi.aws.costexplorer.AnomalyMonitorArgs;
/// import com.pulumi.aws.costexplorer.AnomalySubscription;
/// import com.pulumi.aws.costexplorer.AnomalySubscriptionArgs;
/// import com.pulumi.aws.costexplorer.inputs.AnomalySubscriptionSubscriberArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var costAnomalyUpdates = new Topic("costAnomalyUpdates", TopicArgs.builder()
///             .name("CostAnomalyUpdates")
///             .build());
///
///         final var snsTopicPolicy = Output.tuple(costAnomalyUpdates.arn(), costAnomalyUpdates.arn()).applyValue(values -> {
///             var costAnomalyUpdatesArn = values.t1;
///             var costAnomalyUpdatesArn1 = values.t2;
///             return IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///                 .policyId("__default_policy_ID")
///                 .statements(
///                     GetPolicyDocumentStatementArgs.builder()
///                         .sid("AWSAnomalyDetectionSNSPublishingPermissions")
///                         .actions("SNS:Publish")
///                         .effect("Allow")
///                         .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                             .type("Service")
///                             .identifiers("costalerts.amazonaws.com")
///                             .build())
///                         .resources(costAnomalyUpdatesArn)
///                         .build(),
///                     GetPolicyDocumentStatementArgs.builder()
///                         .sid("__default_statement_ID")
///                         .actions(
///                             "SNS:Subscribe",
///                             "SNS:SetTopicAttributes",
///                             "SNS:RemovePermission",
///                             "SNS:Receive",
///                             "SNS:Publish",
///                             "SNS:ListSubscriptionsByTopic",
///                             "SNS:GetTopicAttributes",
///                             "SNS:DeleteTopic",
///                             "SNS:AddPermission")
///                         .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                             .test("StringEquals")
///                             .variable("AWS:SourceOwner")
///                             .values(accountId)
///                             .build())
///                         .effect("Allow")
///                         .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                             .type("AWS")
///                             .identifiers("*")
///                             .build())
///                         .resources(costAnomalyUpdatesArn1)
///                         .build())
///                 .build());
///         });
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
///             .name("RealtimeAnomalySubscription")
///             .frequency("IMMEDIATE")
///             .monitorArnLists(anomalyMonitor.arn())
///             .subscribers(AnomalySubscriptionSubscriberArgs.builder()
///                 .type("SNS")
///                 .address(costAnomalyUpdates.arn())
///                 .build())
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
///       name: RealtimeAnomalySubscription
///       frequency: IMMEDIATE
///       monitorArnLists:
///         - ${anomalyMonitor.arn}
///       subscribers:
///         - type: SNS
///           address: ${costAnomalyUpdates.arn}
///     options:
///       dependsOn:
///         - ${default}
/// variables:
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         policyId: __default_policy_ID
///         statements:
///           - sid: AWSAnomalyDetectionSNSPublishingPermissions
///             actions:
///               - SNS:Publish
///             effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - costalerts.amazonaws.com
///             resources:
///               - ${costAnomalyUpdates.arn}
///           - sid: __default_statement_ID
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
///             conditions:
///               - test: StringEquals
///                 variable: AWS:SourceOwner
///                 values:
///                   - ${accountId}
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             resources:
///               - ${costAnomalyUpdates.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Cost Explorer anomaly subscription.
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

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// An Expression object used to specify the anomalies that you want to generate alerts for. See Threshold Expression.
  late final pulumi.Output<AnomalySubscriptionThresholdExpression>
  thresholdExpression;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.frequency = registerOutput<String>('frequency');
    this.monitorArnLists = registerOutput<List<String>>('monitorArnLists');
    this.name = registerOutput<String>('name');
    this.subscribers = registerOutput<List<AnomalySubscriptionSubscriber>>(
      'subscribers',
    );
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thresholdExpression =
        registerOutput<AnomalySubscriptionThresholdExpression>(
          'thresholdExpression',
        );
  }
}
