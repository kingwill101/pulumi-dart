import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_archive_args.dart';
import 'event_archive_state.dart';

/// Provides an EventBridge event archive resource.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const order = new aws.cloudwatch.EventBus("order", {name: "orders"});
/// const orderEventArchive = new aws.cloudwatch.EventArchive("order", {
///     name: "order-archive",
///     eventSourceArn: order.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// order = aws.cloudwatch.EventBus("order", name="orders")
/// order_event_archive = aws.cloudwatch.EventArchive("order",
///     name="order-archive",
///     event_source_arn=order.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order = new Aws.CloudWatch.EventBus("order", new()
///     {
///         Name = "orders",
///     });
///
///     var orderEventArchive = new Aws.CloudWatch.EventArchive("order", new()
///     {
///         Name = "order-archive",
///         EventSourceArn = order.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		order, err := cloudwatch.NewEventBus(ctx, "order", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("orders"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventArchive(ctx, "order", &cloudwatch.EventArchiveArgs{
/// 			Name:           pulumi.String("order-archive"),
/// 			EventSourceArn: order.Arn,
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
/// resource "aws_cloudwatch_eventbus" "order" {
///   name = "orders"
/// }
/// resource "aws_cloudwatch_eventarchive" "order" {
///   name             = "order-archive"
///   event_source_arn = aws_cloudwatch_eventbus.order.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.cloudwatch.EventArchive;
/// import com.pulumi.aws.cloudwatch.EventArchiveArgs;
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
///         var order = new EventBus("order", EventBusArgs.builder()
///             .name("orders")
///             .build());
///
///         var orderEventArchive = new EventArchive("orderEventArchive", EventArchiveArgs.builder()
///             .name("order-archive")
///             .eventSourceArn(order.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   order:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: orders
///   orderEventArchive:
///     type: aws:cloudwatch:EventArchive
///     name: order
///     properties:
///       name: order-archive
///       eventSourceArn: ${order.arn}
/// ```
///
///
/// ### Example Usage Optional Arguments
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const order = new aws.cloudwatch.EventBus("order", {name: "orders"});
/// const orderEventArchive = new aws.cloudwatch.EventArchive("order", {
///     name: "order-archive",
///     description: "Archived events from order service",
///     eventSourceArn: order.arn,
///     retentionDays: 7,
///     eventPattern: JSON.stringify({
///         source: ["company.team.order"],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// order = aws.cloudwatch.EventBus("order", name="orders")
/// order_event_archive = aws.cloudwatch.EventArchive("order",
///     name="order-archive",
///     description="Archived events from order service",
///     event_source_arn=order.arn,
///     retention_days=7,
///     event_pattern=json.dumps({
///         "source": ["company.team.order"],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var order = new Aws.CloudWatch.EventBus("order", new()
///     {
///         Name = "orders",
///     });
///
///     var orderEventArchive = new Aws.CloudWatch.EventArchive("order", new()
///     {
///         Name = "order-archive",
///         Description = "Archived events from order service",
///         EventSourceArn = order.Arn,
///         RetentionDays = 7,
///         EventPattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["source"] = new[]
///             {
///                 "company.team.order",
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		order, err := cloudwatch.NewEventBus(ctx, "order", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("orders"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string][]string{
/// 			"source": []string{
/// 				"company.team.order",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudwatch.NewEventArchive(ctx, "order", &cloudwatch.EventArchiveArgs{
/// 			Name:           pulumi.String("order-archive"),
/// 			Description:    pulumi.String("Archived events from order service"),
/// 			EventSourceArn: order.Arn,
/// 			RetentionDays:  pulumi.Int(7),
/// 			EventPattern:   pulumi.String(json0),
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
/// resource "aws_cloudwatch_eventbus" "order" {
///   name = "orders"
/// }
/// resource "aws_cloudwatch_eventarchive" "order" {
///   name             = "order-archive"
///   description      = "Archived events from order service"
///   event_source_arn = aws_cloudwatch_eventbus.order.arn
///   retention_days   = 7
///   event_pattern = jsonencode({
///     "source" = ["company.team.order"]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.cloudwatch.EventArchive;
/// import com.pulumi.aws.cloudwatch.EventArchiveArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var order = new EventBus("order", EventBusArgs.builder()
///             .name("orders")
///             .build());
///
///         var orderEventArchive = new EventArchive("orderEventArchive", EventArchiveArgs.builder()
///             .name("order-archive")
///             .description("Archived events from order service")
///             .eventSourceArn(order.arn())
///             .retentionDays(7)
///             .eventPattern(serializeJson(
///                 jsonObject(
///                     jsonProperty("source", jsonArray("company.team.order"))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   order:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: orders
///   orderEventArchive:
///     type: aws:cloudwatch:EventArchive
///     name: order
///     properties:
///       name: order-archive
///       description: Archived events from order service
///       eventSourceArn: ${order.arn}
///       retentionDays: 7
///       eventPattern:
///         fn::toJSON:
///           source:
///             - company.team.order
/// ```
///
///
/// ### Example Usage CMK Encryption
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const currentGetPartition = aws.getPartition({});
/// const example = new aws.cloudwatch.EventBus("example", {name: "example"});
/// const exampleKey = new aws.kms.Key("example", {
///     deletionWindowInDays: 7,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Id: "key-policy-example",
///         Statement: [
///             {
///                 Sid: "Enable IAM User Permissions",
///                 Effect: "Allow",
///                 Principal: {
///                     AWS: Promise.all([currentGetPartition, current]).then(([currentGetPartition, current]) => `arn:${currentGetPartition.partition}:iam::${current.accountId}:root`),
///                 },
///                 Action: "kms:*",
///                 Resource: "*",
///             },
///             {
///                 Sid: "Allow describing of the key",
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "events.amazonaws.com",
///                 },
///                 Action: ["kms:DescribeKey"],
///                 Resource: "*",
///             },
///             {
///                 Sid: "Allow use of the key",
///                 Effect: "Allow",
///                 Principal: {
///                     Service: "events.amazonaws.com",
///                 },
///                 Action: [
///                     "kms:GenerateDataKey",
///                     "kms:Decrypt",
///                     "kms:ReEncrypt*",
///                 ],
///                 Resource: "*",
///                 Condition: {
///                     StringEquals: {
///                         "kms:EncryptionContext:aws:events:event-bus:arn": example.arn,
///                     },
///                 },
///             },
///         ],
///     }),
///     tags: {
///         EventBridgeApiDestinations: "true",
///     },
/// });
/// const exampleEventArchive = new aws.cloudwatch.EventArchive("example", {
///     name: "example",
///     eventSourceArn: example.arn,
///     kmsKeyIdentifier: exampleKey.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// current_get_partition = aws.get_partition()
/// example = aws.cloudwatch.EventBus("example", name="example")
/// example_key = aws.kms.Key("example",
///     deletion_window_in_days=7,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Id": "key-policy-example",
///         "Statement": [
///             {
///                 "Sid": "Enable IAM User Permissions",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "AWS": f"arn:{current_get_partition.partition}:iam::{current.account_id}:root",
///                 },
///                 "Action": "kms:*",
///                 "Resource": "*",
///             },
///             {
///                 "Sid": "Allow describing of the key",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "events.amazonaws.com",
///                 },
///                 "Action": ["kms:DescribeKey"],
///                 "Resource": "*",
///             },
///             {
///                 "Sid": "Allow use of the key",
///                 "Effect": "Allow",
///                 "Principal": {
///                     "Service": "events.amazonaws.com",
///                 },
///                 "Action": [
///                     "kms:GenerateDataKey",
///                     "kms:Decrypt",
///                     "kms:ReEncrypt*",
///                 ],
///                 "Resource": "*",
///                 "Condition": {
///                     "StringEquals": {
///                         "kms:EncryptionContext:aws:events:event-bus:arn": example.arn,
///                     },
///                 },
///             },
///         ],
///     }),
///     tags={
///         "EventBridgeApiDestinations": "true",
///     })
/// example_event_archive = aws.cloudwatch.EventArchive("example",
///     name="example",
///     event_source_arn=example.arn,
///     kms_key_identifier=example_key.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var currentGetPartition = Aws.GetPartition.Invoke();
///
///     var example = new Aws.CloudWatch.EventBus("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleKey = new Aws.Kms.Key("example", new()
///     {
///         DeletionWindowInDays = 7,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Id"] = "key-policy-example",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Enable IAM User Permissions",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = Output.Tuple(currentGetPartition, current).Apply(values =>
///                         {
///                             var currentGetPartition = values.Item1;
///                             var current = values.Item2;
///                             return $"arn:{currentGetPartition.Apply(getPartitionResult => getPartitionResult.Partition)}:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root";
///                         }),
///                     },
///                     ["Action"] = "kms:*",
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Allow describing of the key",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "events.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "kms:DescribeKey",
///                     },
///                     ["Resource"] = "*",
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Allow use of the key",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "events.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "kms:GenerateDataKey",
///                         "kms:Decrypt",
///                         "kms:ReEncrypt*",
///                     },
///                     ["Resource"] = "*",
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["kms:EncryptionContext:aws:events:event-bus:arn"] = example.Arn,
///                         },
///                     },
///                 },
///             },
///         })),
///         Tags =
///         {
///             { "EventBridgeApiDestinations", "true" },
///         },
///     });
///
///     var exampleEventArchive = new Aws.CloudWatch.EventArchive("example", new()
///     {
///         Name = "example",
///         EventSourceArn = example.Arn,
///         KmsKeyIdentifier = exampleKey.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetPartition, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudwatch.NewEventBus(ctx, "example", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			Policy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Id":      "key-policy-example",
/// 					"Statement": []interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "Enable IAM User Permissions",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]string{
/// 								"AWS": fmt.Sprintf("arn:%v:iam::%v:root", currentGetPartition.Partition, current.AccountId),
/// 							},
/// 							"Action":   "kms:*",
/// 							"Resource": "*",
/// 						},
/// 						map[string]interface{}{
/// 							"Sid":    "Allow describing of the key",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]string{
/// 								"Service": "events.amazonaws.com",
/// 							},
/// 							"Action": []string{
/// 								"kms:DescribeKey",
/// 							},
/// 							"Resource": "*",
/// 						},
/// 						map[string]interface{}{
/// 							"Sid":    "Allow use of the key",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]string{
/// 								"Service": "events.amazonaws.com",
/// 							},
/// 							"Action": []string{
/// 								"kms:GenerateDataKey",
/// 								"kms:Decrypt",
/// 								"kms:ReEncrypt*",
/// 							},
/// 							"Resource": "*",
/// 							"Condition": map[string]map[string]string{
/// 								"StringEquals": map[string]string{
/// 									"kms:EncryptionContext:aws:events:event-bus:arn": arn,
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 			Tags: pulumi.StringMap{
/// 				"EventBridgeApiDestinations": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventArchive(ctx, "example", &cloudwatch.EventArchiveArgs{
/// 			Name:             pulumi.String("example"),
/// 			EventSourceArn:   example.Arn,
/// 			KmsKeyIdentifier: exampleKey.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_getpartition" "currentGetPartition" {
/// }
///
/// resource "aws_cloudwatch_eventbus" "example" {
///   name = "example"
/// }
/// resource "aws_kms_key" "example" {
///   deletion_window_in_days = 7
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Id"      = "key-policy-example"
///     "Statement" = [{
///       "Sid"    = "Enable IAM User Permissions"
///       "Effect" = "Allow"
///       "Principal" = {
///         "AWS" ="arn:${data.aws_getpartition.currentGetPartition.partition}:iam::${data.aws_getcalleridentity.current.account_id}:root"
///       }
///       "Action"   = "kms:*"
///       "Resource" = "*"
///       }, {
///       "Sid"    = "Allow describing of the key"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "events.amazonaws.com"
///       }
///       "Action"   = ["kms:DescribeKey"]
///       "Resource" = "*"
///       }, {
///       "Sid"    = "Allow use of the key"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "events.amazonaws.com"
///       }
///       "Action"   = ["kms:GenerateDataKey", "kms:Decrypt", "kms:ReEncrypt*"]
///       "Resource" = "*"
///       "Condition" = {
///         "StringEquals" = {
///           "kms:EncryptionContext:aws:events:event-bus:arn" = aws_cloudwatch_eventbus.example.arn
///         }
///       }
///     }]
///   })
///   tags = {
///     "EventBridgeApiDestinations" = "true"
///   }
/// }
/// resource "aws_cloudwatch_eventarchive" "example" {
///   name               = "example"
///   event_source_arn   = aws_cloudwatch_eventbus.example.arn
///   kms_key_identifier = aws_kms_key.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.cloudwatch.EventArchive;
/// import com.pulumi.aws.cloudwatch.EventArchiveArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var currentGetPartition = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         var example = new EventBus("example", EventBusArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleKey = new Key("exampleKey", KeyArgs.builder()
///             .deletionWindowInDays(7)
///             .policy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Id", "key-policy-example"),
///                     jsonProperty("Statement", jsonArray(
///                         jsonObject(
///                             jsonProperty("Sid", "Enable IAM User Permissions"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("AWS", String.format("arn:%s:iam::%s:root", currentGetPartition.partition(),current.accountId()))
///                             )),
///                             jsonProperty("Action", "kms:*"),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "Allow describing of the key"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "events.amazonaws.com")
///                             )),
///                             jsonProperty("Action", jsonArray("kms:DescribeKey")),
///                             jsonProperty("Resource", "*")
///                         ),
///                         jsonObject(
///                             jsonProperty("Sid", "Allow use of the key"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "events.amazonaws.com")
///                             )),
///                             jsonProperty("Action", jsonArray(
///                                 "kms:GenerateDataKey",
///                                 "kms:Decrypt",
///                                 "kms:ReEncrypt*"
///                             )),
///                             jsonProperty("Resource", "*"),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("StringEquals", jsonObject(
///                                     jsonProperty("kms:EncryptionContext:aws:events:event-bus:arn", _arn)
///                                 ))
///                             ))
///                         )
///                     ))
///                 ))))
///             .tags(Map.of("EventBridgeApiDestinations", "true"))
///             .build());
///
///         var exampleEventArchive = new EventArchive("exampleEventArchive", EventArchiveArgs.builder()
///             .name("example")
///             .eventSourceArn(example.arn())
///             .kmsKeyIdentifier(exampleKey.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: example
///   exampleKey:
///     type: aws:kms:Key
///     name: example
///     properties:
///       deletionWindowInDays: 7
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Id: key-policy-example
///           Statement:
///             - Sid: Enable IAM User Permissions
///               Effect: Allow
///               Principal:
///                 AWS: arn:${currentGetPartition.partition}:iam::${current.accountId}:root
///               Action: kms:*
///               Resource: '*'
///             - Sid: Allow describing of the key
///               Effect: Allow
///               Principal:
///                 Service: events.amazonaws.com
///               Action:
///                 - kms:DescribeKey
///               Resource: '*'
///             - Sid: Allow use of the key
///               Effect: Allow
///               Principal:
///                 Service: events.amazonaws.com
///               Action:
///                 - kms:GenerateDataKey
///                 - kms:Decrypt
///                 - kms:ReEncrypt*
///               Resource: '*'
///               Condition:
///                 StringEquals:
///                   kms:EncryptionContext:aws:events:event-bus:arn: ${example.arn}
///       tags:
///         EventBridgeApiDestinations: 'true'
///   exampleEventArchive:
///     type: aws:cloudwatch:EventArchive
///     name: example
///     properties:
///       name: example
///       eventSourceArn: ${example.arn}
///       kmsKeyIdentifier: ${exampleKey.id}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   currentGetPartition:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the archive.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Archives using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventArchive:EventArchive example example-archive
/// ```
class EventArchive extends pulumi.CustomResource {
  /// ARN of the archive.
  late final pulumi.Output<String> arn;
  /// Description for the archive.
  late final pulumi.Output<String?> description;
  /// Event pattern to use to filter events sent to the archive. By default, it attempts to archive every event received in the `eventSourceArn`.
  late final pulumi.Output<String?> eventPattern;
  /// ARN of the event bus associated with the archive. Only events from this event bus are sent to the archive.
  late final pulumi.Output<String> eventSourceArn;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key ARN, KeyId, key alias, or key alias ARN.
  late final pulumi.Output<String?> kmsKeyIdentifier;
  /// Name of the archive. The archive name cannot exceed 48 characters.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The maximum number of days to retain events in the new event archive. By default, it archives indefinitely.
  late final pulumi.Output<int?> retentionDays;

  /// Creates a new [EventArchive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventArchive]. {@macro pulumi_cloudwatch_event_archive_event_archive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventArchive(
    String name, {
    EventArchiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventArchive:EventArchive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventPattern = registerOutput<String?>('eventPattern');
    eventSourceArn = registerOutput<String>('eventSourceArn');
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Gets an existing [EventArchive] resource's state with the given [name] and [id].
  static EventArchive get(
    String name,
    pulumi.Input<String> id, {
    EventArchiveState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventArchive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventArchive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventArchive:EventArchive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventPattern = registerOutput<String?>('eventPattern');
    eventSourceArn = registerOutput<String>('eventSourceArn');
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionDays = registerOutput<int?>('retentionDays');
  }

  /// Creates a typed reference to an existing [EventArchive] resource.
  EventArchive.reference(String urn)
    : super(
        'aws:cloudwatch/eventArchive:EventArchive',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventPattern = registerOutput<String?>('eventPattern');
    eventSourceArn = registerOutput<String>('eventSourceArn');
    kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    retentionDays = registerOutput<int?>('retentionDays');
  }
}
