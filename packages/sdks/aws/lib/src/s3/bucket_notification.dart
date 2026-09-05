import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_notification_args.dart';
import 'bucket_notification_lambda_function.dart';
import 'bucket_notification_queue.dart';
import 'bucket_notification_state.dart';
import 'bucket_notification_topic.dart';

/// Manages a S3 Bucket Notification Configuration. For additional information, see the [Configuring S3 Event Notifications section in the Amazon S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
///
/// &gt; **NOTE:** The S3 [`PutBucketNotificationConfiguration`](https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketNotificationConfiguration.html) API is atomic — it replaces the bucket's entire notification configuration on every call. Only one `aws.s3.BucketNotification` resource can manage a bucket; declaring more than one causes a perpetual diff, and applying this resource will overwrite any notifications already on the bucket. To configure multiple destinations on the same bucket, declare them all as nested blocks within a single resource (see Trigger multiple Lambda functions below). To let independent teams or Pulumi configurations subscribe to the same bucket without stepping on each other, prefer the Emit events to EventBridge pattern below. To bring existing notifications under management without losing them, see the `aws.s3.BucketNotification` data source.
///
/// &gt; This resource cannot be used with S3 directory buckets.
///
/// ## Example Usage
///
/// ### Add notification configuration to SNS Topic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const topic = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "ArnLike",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["SNS:Publish"],
///         resources: ["arn:aws:sns:*:*:s3-event-notification-topic"],
///     }],
/// });
/// const topicTopic = new aws.sns.Topic("topic", {
///     name: "s3-event-notification-topic",
///     policy: topic.json,
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     topics: [{
///         topicArn: topicTopic.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterSuffix: ".log",
///     }],
///     bucket: bucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// topic = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "ArnLike",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["SNS:Publish"],
///     "resources": ["arn:aws:sns:*:*:s3-event-notification-topic"],
/// }])
/// topic_topic = aws.sns.Topic("topic",
///     name="s3-event-notification-topic",
///     policy=topic.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     topics=[{
///         "topic_arn": topic_topic.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_suffix": ".log",
///     }],
///     bucket=bucket.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "your-bucket-name",
///     });
///
///     var topic = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnLike",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             bucket.Arn,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "s3.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sns:*:*:s3-event-notification-topic",
///                 },
///             },
///         },
///     });
///
///     var topicTopic = new Aws.Sns.Topic("topic", new()
///     {
///         Name = "s3-event-notification-topic",
///         Policy = topic.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         Topics = new[]
///         {
///             new Aws.S3.Inputs.BucketNotificationTopicArgs
///             {
///                 TopicArn = topicTopic.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterSuffix = ".log",
///             },
///         },
///         Bucket = bucket.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("your-bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topic := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnLike"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("s3.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sns:*:*:s3-event-notification-topic"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		topicTopic, err := sns.NewTopic(ctx, "topic", &sns.TopicArgs{
/// 			Name:   pulumi.String("s3-event-notification-topic"),
/// 			Policy: topic.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Topics: s3.BucketNotificationTopicArray{
/// 				&s3.BucketNotificationTopicArgs{
/// 					TopicArn: topicTopic.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterSuffix: pulumi.String(".log"),
/// 				},
/// 			},
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_iam_getpolicydocument" "topic" {
///   statements {
///     conditions {
///       test     = "ArnLike"
///       variable = "aws:SourceArn"
///       values   = [aws_s3_bucket.bucket.arn]
///     }
///     principals {
///       type        = "Service"
///       identifiers = ["s3.amazonaws.com"]
///     }
///     effect    = "Allow"
///     actions   = ["SNS:Publish"]
///     resources = ["arn:aws:sns:*:*:s3-event-notification-topic"]
///   }
/// }
///
/// resource "aws_sns_topic" "topic" {
///   name   = "s3-event-notification-topic"
///   policy = data.aws_iam_getpolicydocument.topic.json
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "your-bucket-name"
/// }
/// resource "aws_s3_bucketnotification" "bucket_notification" {
///   topics {
///     topic_arn     = aws_sns_topic.topic.arn
///     events        = ["s3:ObjectCreated:*"]
///     filter_suffix = ".log"
///   }
///   bucket = aws_s3_bucket.bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationTopicArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var topic = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnLike")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("SNS:Publish")
///                 .resources("arn:aws:sns:*:*:s3-event-notification-topic")
///                 .build())
///             .build());
///
///         var topicTopic = new Topic("topicTopic", TopicArgs.builder()
///             .name("s3-event-notification-topic")
///             .policy(topic.applyValue(_topic -> _topic.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .topics(BucketNotificationTopicArgs.builder()
///                 .topicArn(topicTopic.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterSuffix(".log")
///                 .build())
///             .bucket(bucket.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   topicTopic:
///     type: aws:sns:Topic
///     name: topic
///     properties:
///       name: s3-event-notification-topic
///       policy: ${topic.json}
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       topics:
///         - topicArn: ${topicTopic.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterSuffix: .log
///       bucket: ${bucket.id}
/// variables:
///   topic:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: ArnLike
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
///             principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
///             effect: Allow
///             actions:
///               - SNS:Publish
///             resources:
///               - arn:aws:sns:*:*:s3-event-notification-topic
/// ```
///
///
/// ### Add notification configuration to SQS Queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const queue = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         effect: "Allow",
///         actions: ["sqs:SendMessage"],
///         resources: ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///     }],
/// });
/// const queueQueue = new aws.sqs.Queue("queue", {
///     name: "s3-event-notification-queue",
///     policy: queue.json,
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     queues: [{
///         queueArn: queueQueue.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterSuffix: ".log",
///     }],
///     bucket: bucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// queue = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "ArnEquals",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "effect": "Allow",
///     "actions": ["sqs:SendMessage"],
///     "resources": ["arn:aws:sqs:*:*:s3-event-notification-queue"],
/// }])
/// queue_queue = aws.sqs.Queue("queue",
///     name="s3-event-notification-queue",
///     policy=queue.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     queues=[{
///         "queue_arn": queue_queue.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_suffix": ".log",
///     }],
///     bucket=bucket.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "your-bucket-name",
///     });
///
///     var queue = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             bucket.Arn,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sqs:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sqs:*:*:s3-event-notification-queue",
///                 },
///             },
///         },
///     });
///
///     var queueQueue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "s3-event-notification-queue",
///         Policy = queue.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         Queues = new[]
///         {
///             new Aws.S3.Inputs.BucketNotificationQueueArgs
///             {
///                 QueueArn = queueQueue.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterSuffix = ".log",
///             },
///         },
///         Bucket = bucket.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("your-bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queue := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sqs:SendMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sqs:*:*:s3-event-notification-queue"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		queueQueue, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:   pulumi.String("s3-event-notification-queue"),
/// 			Policy: queue.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Queues: s3.BucketNotificationQueueArray{
/// 				&s3.BucketNotificationQueueArgs{
/// 					QueueArn: queueQueue.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterSuffix: pulumi.String(".log"),
/// 				},
/// 			},
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_iam_getpolicydocument" "queue" {
///   statements {
///     conditions {
///       test     = "ArnEquals"
///       variable = "aws:SourceArn"
///       values   = [aws_s3_bucket.bucket.arn]
///     }
///     principals {
///       type        = "*"
///       identifiers = ["*"]
///     }
///     effect    = "Allow"
///     actions   = ["sqs:SendMessage"]
///     resources = ["arn:aws:sqs:*:*:s3-event-notification-queue"]
///   }
/// }
///
/// resource "aws_sqs_queue" "queue" {
///   name   = "s3-event-notification-queue"
///   policy = data.aws_iam_getpolicydocument.queue.json
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "your-bucket-name"
/// }
/// resource "aws_s3_bucketnotification" "bucket_notification" {
///   queues {
///     queue_arn     = aws_sqs_queue.queue.arn
///     events        = ["s3:ObjectCreated:*"]
///     filter_suffix = ".log"
///   }
///   bucket = aws_s3_bucket.bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationQueueArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var queue = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .effect("Allow")
///                 .actions("sqs:SendMessage")
///                 .resources("arn:aws:sqs:*:*:s3-event-notification-queue")
///                 .build())
///             .build());
///
///         var queueQueue = new Queue("queueQueue", QueueArgs.builder()
///             .name("s3-event-notification-queue")
///             .policy(queue.applyValue(_queue -> _queue.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .queues(BucketNotificationQueueArgs.builder()
///                 .queueArn(queueQueue.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterSuffix(".log")
///                 .build())
///             .bucket(bucket.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queueQueue:
///     type: aws:sqs:Queue
///     name: queue
///     properties:
///       name: s3-event-notification-queue
///       policy: ${queue.json}
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       queues:
///         - queueArn: ${queueQueue.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterSuffix: .log
///       bucket: ${bucket.id}
/// variables:
///   queue:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             effect: Allow
///             actions:
///               - sqs:SendMessage
///             resources:
///               - arn:aws:sqs:*:*:s3-event-notification-queue
/// ```
///
///
/// ### Add notification configuration to Lambda Function
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const iamForLambda = new aws.iam.Role("iam_for_lambda", {
///     name: "iam_for_lambda",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const func = new aws.lambda.Function("func", {
///     code: new pulumi.asset.FileArchive("your-function.zip"),
///     name: "example_lambda_name",
///     role: iamForLambda.arn,
///     handler: "exports.example",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const allowBucket = new aws.lambda.Permission("allow_bucket", {
///     statementId: "AllowExecutionFromS3Bucket",
///     action: "lambda:InvokeFunction",
///     "function": func.arn,
///     principal: "s3.amazonaws.com",
///     sourceArn: bucket.arn,
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     lambdaFunctions: [{
///         lambdaFunctionArn: func.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterPrefix: "AWSLogs/",
///         filterSuffix: ".log",
///     }],
///     bucket: bucket.id,
/// }, {
///     dependsOn: [allowBucket],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// iam_for_lambda = aws.iam.Role("iam_for_lambda",
///     name="iam_for_lambda",
///     assume_role_policy=assume_role.json)
/// func = aws.lambda_.Function("func",
///     code=pulumi.FileArchive("your-function.zip"),
///     name="example_lambda_name",
///     role=iam_for_lambda.arn,
///     handler="exports.example",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// allow_bucket = aws.lambda_.Permission("allow_bucket",
///     statement_id="AllowExecutionFromS3Bucket",
///     action="lambda:InvokeFunction",
///     function=func.arn,
///     principal="s3.amazonaws.com",
///     source_arn=bucket.arn)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     lambda_functions=[{
///         "lambda_function_arn": func.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_prefix": "AWSLogs/",
///         "filter_suffix": ".log",
///     }],
///     bucket=bucket.id,
///     opts = pulumi.ResourceOptions(depends_on=[allow_bucket]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "lambda.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var iamForLambda = new Aws.Iam.Role("iam_for_lambda", new()
///     {
///         Name = "iam_for_lambda",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var func = new Aws.Lambda.Function("func", new()
///     {
///         Code = new FileArchive("your-function.zip"),
///         Name = "example_lambda_name",
///         Role = iamForLambda.Arn,
///         Handler = "exports.example",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "your-bucket-name",
///     });
///
///     var allowBucket = new Aws.Lambda.Permission("allow_bucket", new()
///     {
///         StatementId = "AllowExecutionFromS3Bucket",
///         Action = "lambda:InvokeFunction",
///         Function = func.Arn,
///         Principal = "s3.amazonaws.com",
///         SourceArn = bucket.Arn,
///     });
///
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         LambdaFunctions = new[]
///         {
///             new Aws.S3.Inputs.BucketNotificationLambdaFunctionArgs
///             {
///                 LambdaFunctionArn = func.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterPrefix = "AWSLogs/",
///                 FilterSuffix = ".log",
///             },
///         },
///         Bucket = bucket.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             allowBucket,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamForLambda, err := iam.NewRole(ctx, "iam_for_lambda", &iam.RoleArgs{
/// 			Name:             pulumi.String("iam_for_lambda"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_func, err := lambda.NewFunction(ctx, "func", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("your-function.zip"),
/// 			Name:    pulumi.String("example_lambda_name"),
/// 			Role:    iamForLambda.Arn,
/// 			Handler: pulumi.String("exports.example"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("your-bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowBucket, err := lambda.NewPermission(ctx, "allow_bucket", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromS3Bucket"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    _func.Arn,
/// 			Principal:   pulumi.String("s3.amazonaws.com"),
/// 			SourceArn:   bucket.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			LambdaFunctions: s3.BucketNotificationLambdaFunctionArray{
/// 				&s3.BucketNotificationLambdaFunctionArgs{
/// 					LambdaFunctionArn: _func.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterPrefix: pulumi.String("AWSLogs/"),
/// 					FilterSuffix: pulumi.String(".log"),
/// 				},
/// 			},
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			allowBucket,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["lambda.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "iam_for_lambda" {
///   name               = "iam_for_lambda"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_lambda_permission" "allow_bucket" {
///   statement_id = "AllowExecutionFromS3Bucket"
///   action       = "lambda:InvokeFunction"
///   function     = aws_lambda_function.func.arn
///   principal    = "s3.amazonaws.com"
///   source_arn   = aws_s3_bucket.bucket.arn
/// }
/// resource "aws_lambda_function" "func" {
///   code    = fileArchive("your-function.zip")
///   name    = "example_lambda_name"
///   role    = aws_iam_role.iam_for_lambda.arn
///   handler = "exports.example"
///   runtime = "nodejs24.x"
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "your-bucket-name"
/// }
/// resource "aws_s3_bucketnotification" "bucket_notification" {
///   depends_on = [aws_lambda_permission.allow_bucket]
///   lambda_functions {
///     lambda_function_arn = aws_lambda_function.func.arn
///     events              = ["s3:ObjectCreated:*"]
///     filter_prefix       = "AWSLogs/"
///     filter_suffix       = ".log"
///   }
///   bucket = aws_s3_bucket.bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationLambdaFunctionArgs;
/// import com.pulumi.asset.FileArchive;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var iamForLambda = new Role("iamForLambda", RoleArgs.builder()
///             .name("iam_for_lambda")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var func = new Function("func", FunctionArgs.builder()
///             .code(new FileArchive("your-function.zip"))
///             .name("example_lambda_name")
///             .role(iamForLambda.arn())
///             .handler("exports.example")
///             .runtime("nodejs24.x")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         var allowBucket = new Permission("allowBucket", PermissionArgs.builder()
///             .statementId("AllowExecutionFromS3Bucket")
///             .action("lambda:InvokeFunction")
///             .function(func.arn())
///             .principal("s3.amazonaws.com")
///             .sourceArn(bucket.arn())
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .lambdaFunctions(BucketNotificationLambdaFunctionArgs.builder()
///                 .lambdaFunctionArn(func.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterPrefix("AWSLogs/")
///                 .filterSuffix(".log")
///                 .build())
///             .bucket(bucket.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(allowBucket)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iamForLambda:
///     type: aws:iam:Role
///     name: iam_for_lambda
///     properties:
///       name: iam_for_lambda
///       assumeRolePolicy: ${assumeRole.json}
///   allowBucket:
///     type: aws:lambda:Permission
///     name: allow_bucket
///     properties:
///       statementId: AllowExecutionFromS3Bucket
///       action: lambda:InvokeFunction
///       function: ${func.arn}
///       principal: s3.amazonaws.com
///       sourceArn: ${bucket.arn}
///   func:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: your-function.zip
///       name: example_lambda_name
///       role: ${iamForLambda.arn}
///       handler: exports.example
///       runtime: nodejs24.x
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       lambdaFunctions:
///         - lambdaFunctionArn: ${func.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: AWSLogs/
///           filterSuffix: .log
///       bucket: ${bucket.id}
///     options:
///       dependsOn:
///         - ${allowBucket}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Trigger multiple Lambda functions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const iamForLambda = new aws.iam.Role("iam_for_lambda", {
///     name: "iam_for_lambda",
///     assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json),
/// });
/// const func1 = new aws.lambda.Function("func1", {
///     code: new pulumi.asset.FileArchive("your-function1.zip"),
///     name: "example_lambda_name1",
///     role: iamForLambda.arn,
///     handler: "exports.example",
///     runtime: aws.lambda.Runtime.NodeJS24dX,
/// });
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const allowBucket1 = new aws.lambda.Permission("allow_bucket1", {
///     statementId: "AllowExecutionFromS3Bucket1",
///     action: "lambda:InvokeFunction",
///     "function": func1.arn,
///     principal: "s3.amazonaws.com",
///     sourceArn: bucket.arn,
/// });
/// const func2 = new aws.lambda.Function("func2", {
///     code: new pulumi.asset.FileArchive("your-function2.zip"),
///     name: "example_lambda_name2",
///     role: iamForLambda.arn,
///     handler: "exports.example",
/// });
/// const allowBucket2 = new aws.lambda.Permission("allow_bucket2", {
///     statementId: "AllowExecutionFromS3Bucket2",
///     action: "lambda:InvokeFunction",
///     "function": func2.arn,
///     principal: "s3.amazonaws.com",
///     sourceArn: bucket.arn,
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     lambdaFunctions: [
///         {
///             lambdaFunctionArn: func1.arn,
///             events: ["s3:ObjectCreated:*"],
///             filterPrefix: "AWSLogs/",
///             filterSuffix: ".log",
///         },
///         {
///             lambdaFunctionArn: func2.arn,
///             events: ["s3:ObjectCreated:*"],
///             filterPrefix: "OtherLogs/",
///             filterSuffix: ".log",
///         },
///     ],
///     bucket: bucket.id,
/// }, {
///     dependsOn: [
///         allowBucket1,
///         allowBucket2,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": ["sts:AssumeRole"],
/// }])
/// iam_for_lambda = aws.iam.Role("iam_for_lambda",
///     name="iam_for_lambda",
///     assume_role_policy=assume_role.json)
/// func1 = aws.lambda_.Function("func1",
///     code=pulumi.FileArchive("your-function1.zip"),
///     name="example_lambda_name1",
///     role=iam_for_lambda.arn,
///     handler="exports.example",
///     runtime=aws.lambda_.Runtime.NODE_JS24D_X)
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// allow_bucket1 = aws.lambda_.Permission("allow_bucket1",
///     statement_id="AllowExecutionFromS3Bucket1",
///     action="lambda:InvokeFunction",
///     function=func1.arn,
///     principal="s3.amazonaws.com",
///     source_arn=bucket.arn)
/// func2 = aws.lambda_.Function("func2",
///     code=pulumi.FileArchive("your-function2.zip"),
///     name="example_lambda_name2",
///     role=iam_for_lambda.arn,
///     handler="exports.example")
/// allow_bucket2 = aws.lambda_.Permission("allow_bucket2",
///     statement_id="AllowExecutionFromS3Bucket2",
///     action="lambda:InvokeFunction",
///     function=func2.arn,
///     principal="s3.amazonaws.com",
///     source_arn=bucket.arn)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     lambda_functions=[
///         {
///             "lambda_function_arn": func1.arn,
///             "events": ["s3:ObjectCreated:*"],
///             "filter_prefix": "AWSLogs/",
///             "filter_suffix": ".log",
///         },
///         {
///             "lambda_function_arn": func2.arn,
///             "events": ["s3:ObjectCreated:*"],
///             "filter_prefix": "OtherLogs/",
///             "filter_suffix": ".log",
///         },
///     ],
///     bucket=bucket.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             allow_bucket1,
///             allow_bucket2,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "lambda.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var iamForLambda = new Aws.Iam.Role("iam_for_lambda", new()
///     {
///         Name = "iam_for_lambda",
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var func1 = new Aws.Lambda.Function("func1", new()
///     {
///         Code = new FileArchive("your-function1.zip"),
///         Name = "example_lambda_name1",
///         Role = iamForLambda.Arn,
///         Handler = "exports.example",
///         Runtime = Aws.Lambda.Runtime.NodeJS24dX,
///     });
///
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "your-bucket-name",
///     });
///
///     var allowBucket1 = new Aws.Lambda.Permission("allow_bucket1", new()
///     {
///         StatementId = "AllowExecutionFromS3Bucket1",
///         Action = "lambda:InvokeFunction",
///         Function = func1.Arn,
///         Principal = "s3.amazonaws.com",
///         SourceArn = bucket.Arn,
///     });
///
///     var func2 = new Aws.Lambda.Function("func2", new()
///     {
///         Code = new FileArchive("your-function2.zip"),
///         Name = "example_lambda_name2",
///         Role = iamForLambda.Arn,
///         Handler = "exports.example",
///     });
///
///     var allowBucket2 = new Aws.Lambda.Permission("allow_bucket2", new()
///     {
///         StatementId = "AllowExecutionFromS3Bucket2",
///         Action = "lambda:InvokeFunction",
///         Function = func2.Arn,
///         Principal = "s3.amazonaws.com",
///         SourceArn = bucket.Arn,
///     });
///
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         LambdaFunctions = new[]
///         {
///             new Aws.S3.Inputs.BucketNotificationLambdaFunctionArgs
///             {
///                 LambdaFunctionArn = func1.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterPrefix = "AWSLogs/",
///                 FilterSuffix = ".log",
///             },
///             new Aws.S3.Inputs.BucketNotificationLambdaFunctionArgs
///             {
///                 LambdaFunctionArn = func2.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterPrefix = "OtherLogs/",
///                 FilterSuffix = ".log",
///             },
///         },
///         Bucket = bucket.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             allowBucket1,
///             allowBucket2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamForLambda, err := iam.NewRole(ctx, "iam_for_lambda", &iam.RoleArgs{
/// 			Name:             pulumi.String("iam_for_lambda"),
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		func1, err := lambda.NewFunction(ctx, "func1", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("your-function1.zip"),
/// 			Name:    pulumi.String("example_lambda_name1"),
/// 			Role:    iamForLambda.Arn,
/// 			Handler: pulumi.String("exports.example"),
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS24dX),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("your-bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowBucket1, err := lambda.NewPermission(ctx, "allow_bucket1", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromS3Bucket1"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    func1.Arn,
/// 			Principal:   pulumi.String("s3.amazonaws.com"),
/// 			SourceArn:   bucket.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		func2, err := lambda.NewFunction(ctx, "func2", &lambda.FunctionArgs{
/// 			Code:    pulumi.NewFileArchive("your-function2.zip"),
/// 			Name:    pulumi.String("example_lambda_name2"),
/// 			Role:    iamForLambda.Arn,
/// 			Handler: pulumi.String("exports.example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allowBucket2, err := lambda.NewPermission(ctx, "allow_bucket2", &lambda.PermissionArgs{
/// 			StatementId: pulumi.String("AllowExecutionFromS3Bucket2"),
/// 			Action:      pulumi.String("lambda:InvokeFunction"),
/// 			Function:    func2.Arn,
/// 			Principal:   pulumi.String("s3.amazonaws.com"),
/// 			SourceArn:   bucket.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			LambdaFunctions: s3.BucketNotificationLambdaFunctionArray{
/// 				&s3.BucketNotificationLambdaFunctionArgs{
/// 					LambdaFunctionArn: func1.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterPrefix: pulumi.String("AWSLogs/"),
/// 					FilterSuffix: pulumi.String(".log"),
/// 				},
/// 				&s3.BucketNotificationLambdaFunctionArgs{
/// 					LambdaFunctionArn: func2.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterPrefix: pulumi.String("OtherLogs/"),
/// 					FilterSuffix: pulumi.String(".log"),
/// 				},
/// 			},
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			allowBucket1,
/// 			allowBucket2,
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
/// data "aws_iam_getpolicydocument" "assumeRole" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["lambda.amazonaws.com"]
///     }
///     effect  = "Allow"
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "iam_for_lambda" {
///   name               = "iam_for_lambda"
///   assume_role_policy = data.aws_iam_getpolicydocument.assumeRole.json
/// }
/// resource "aws_lambda_permission" "allow_bucket1" {
///   statement_id = "AllowExecutionFromS3Bucket1"
///   action       = "lambda:InvokeFunction"
///   function     = aws_lambda_function.func1.arn
///   principal    = "s3.amazonaws.com"
///   source_arn   = aws_s3_bucket.bucket.arn
/// }
/// resource "aws_lambda_function" "func1" {
///   code    = fileArchive("your-function1.zip")
///   name    = "example_lambda_name1"
///   role    = aws_iam_role.iam_for_lambda.arn
///   handler = "exports.example"
///   runtime = "nodejs24.x"
/// }
/// resource "aws_lambda_permission" "allow_bucket2" {
///   statement_id = "AllowExecutionFromS3Bucket2"
///   action       = "lambda:InvokeFunction"
///   function     = aws_lambda_function.func2.arn
///   principal    = "s3.amazonaws.com"
///   source_arn   = aws_s3_bucket.bucket.arn
/// }
/// resource "aws_lambda_function" "func2" {
///   code    = fileArchive("your-function2.zip")
///   name    = "example_lambda_name2"
///   role    = aws_iam_role.iam_for_lambda.arn
///   handler = "exports.example"
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "your-bucket-name"
/// }
/// resource "aws_s3_bucketnotification" "bucket_notification" {
///   depends_on = [aws_lambda_permission.allow_bucket1, aws_lambda_permission.allow_bucket2]
///   lambda_functions {
///     lambda_function_arn = aws_lambda_function.func1.arn
///     events              = ["s3:ObjectCreated:*"]
///     filter_prefix       = "AWSLogs/"
///     filter_suffix       = ".log"
///   }
///   lambda_functions {
///     lambda_function_arn = aws_lambda_function.func2.arn
///     events              = ["s3:ObjectCreated:*"]
///     filter_prefix       = "OtherLogs/"
///     filter_suffix       = ".log"
///   }
///   bucket = aws_s3_bucket.bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.lambda.Function;
/// import com.pulumi.aws.lambda.FunctionArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.lambda.Permission;
/// import com.pulumi.aws.lambda.PermissionArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationLambdaFunctionArgs;
/// import com.pulumi.asset.FileArchive;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var iamForLambda = new Role("iamForLambda", RoleArgs.builder()
///             .name("iam_for_lambda")
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var func1 = new Function("func1", FunctionArgs.builder()
///             .code(new FileArchive("your-function1.zip"))
///             .name("example_lambda_name1")
///             .role(iamForLambda.arn())
///             .handler("exports.example")
///             .runtime("nodejs24.x")
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         var allowBucket1 = new Permission("allowBucket1", PermissionArgs.builder()
///             .statementId("AllowExecutionFromS3Bucket1")
///             .action("lambda:InvokeFunction")
///             .function(func1.arn())
///             .principal("s3.amazonaws.com")
///             .sourceArn(bucket.arn())
///             .build());
///
///         var func2 = new Function("func2", FunctionArgs.builder()
///             .code(new FileArchive("your-function2.zip"))
///             .name("example_lambda_name2")
///             .role(iamForLambda.arn())
///             .handler("exports.example")
///             .build());
///
///         var allowBucket2 = new Permission("allowBucket2", PermissionArgs.builder()
///             .statementId("AllowExecutionFromS3Bucket2")
///             .action("lambda:InvokeFunction")
///             .function(func2.arn())
///             .principal("s3.amazonaws.com")
///             .sourceArn(bucket.arn())
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .lambdaFunctions(
///                 BucketNotificationLambdaFunctionArgs.builder()
///                     .lambdaFunctionArn(func1.arn())
///                     .events("s3:ObjectCreated:*")
///                     .filterPrefix("AWSLogs/")
///                     .filterSuffix(".log")
///                     .build(),
///                 BucketNotificationLambdaFunctionArgs.builder()
///                     .lambdaFunctionArn(func2.arn())
///                     .events("s3:ObjectCreated:*")
///                     .filterPrefix("OtherLogs/")
///                     .filterSuffix(".log")
///                     .build())
///             .bucket(bucket.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     allowBucket1,
///                     allowBucket2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iamForLambda:
///     type: aws:iam:Role
///     name: iam_for_lambda
///     properties:
///       name: iam_for_lambda
///       assumeRolePolicy: ${assumeRole.json}
///   allowBucket1:
///     type: aws:lambda:Permission
///     name: allow_bucket1
///     properties:
///       statementId: AllowExecutionFromS3Bucket1
///       action: lambda:InvokeFunction
///       function: ${func1.arn}
///       principal: s3.amazonaws.com
///       sourceArn: ${bucket.arn}
///   func1:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: your-function1.zip
///       name: example_lambda_name1
///       role: ${iamForLambda.arn}
///       handler: exports.example
///       runtime: nodejs24.x
///   allowBucket2:
///     type: aws:lambda:Permission
///     name: allow_bucket2
///     properties:
///       statementId: AllowExecutionFromS3Bucket2
///       action: lambda:InvokeFunction
///       function: ${func2.arn}
///       principal: s3.amazonaws.com
///       sourceArn: ${bucket.arn}
///   func2:
///     type: aws:lambda:Function
///     properties:
///       code:
///         fn::fileArchive: your-function2.zip
///       name: example_lambda_name2
///       role: ${iamForLambda.arn}
///       handler: exports.example
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       lambdaFunctions:
///         - lambdaFunctionArn: ${func1.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: AWSLogs/
///           filterSuffix: .log
///         - lambdaFunctionArn: ${func2.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: OtherLogs/
///           filterSuffix: .log
///       bucket: ${bucket.id}
///     options:
///       dependsOn:
///         - ${allowBucket1}
///         - ${allowBucket2}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
///             effect: Allow
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ### Add multiple notification configurations to SQS Queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const queue = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         effect: "Allow",
///         actions: ["sqs:SendMessage"],
///         resources: ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///     }],
/// });
/// const queueQueue = new aws.sqs.Queue("queue", {
///     name: "s3-event-notification-queue",
///     policy: queue.json,
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     queues: [
///         {
///             id: "image-upload-event",
///             queueArn: queueQueue.arn,
///             events: ["s3:ObjectCreated:*"],
///             filterPrefix: "images/",
///         },
///         {
///             id: "video-upload-event",
///             queueArn: queueQueue.arn,
///             events: ["s3:ObjectCreated:*"],
///             filterPrefix: "videos/",
///         },
///     ],
///     bucket: bucket.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// queue = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "ArnEquals",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "effect": "Allow",
///     "actions": ["sqs:SendMessage"],
///     "resources": ["arn:aws:sqs:*:*:s3-event-notification-queue"],
/// }])
/// queue_queue = aws.sqs.Queue("queue",
///     name="s3-event-notification-queue",
///     policy=queue.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     queues=[
///         {
///             "id": "image-upload-event",
///             "queue_arn": queue_queue.arn,
///             "events": ["s3:ObjectCreated:*"],
///             "filter_prefix": "images/",
///         },
///         {
///             "id": "video-upload-event",
///             "queue_arn": queue_queue.arn,
///             "events": ["s3:ObjectCreated:*"],
///             "filter_prefix": "videos/",
///         },
///     ],
///     bucket=bucket.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "your-bucket-name",
///     });
///
///     var queue = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             bucket.Arn,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "sqs:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sqs:*:*:s3-event-notification-queue",
///                 },
///             },
///         },
///     });
///
///     var queueQueue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "s3-event-notification-queue",
///         Policy = queue.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         Queues = new[]
///         {
///             new Aws.S3.Inputs.BucketNotificationQueueArgs
///             {
///                 Id = "image-upload-event",
///                 QueueArn = queueQueue.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterPrefix = "images/",
///             },
///             new Aws.S3.Inputs.BucketNotificationQueueArgs
///             {
///                 Id = "video-upload-event",
///                 QueueArn = queueQueue.Arn,
///                 Events = new[]
///                 {
///                     "s3:ObjectCreated:*",
///                 },
///                 FilterPrefix = "videos/",
///             },
///         },
///         Bucket = bucket.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("your-bucket-name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queue := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sqs:SendMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sqs:*:*:s3-event-notification-queue"),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		queueQueue, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:   pulumi.String("s3-event-notification-queue"),
/// 			Policy: queue.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Queues: s3.BucketNotificationQueueArray{
/// 				&s3.BucketNotificationQueueArgs{
/// 					Id:       pulumi.String("image-upload-event"),
/// 					QueueArn: queueQueue.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterPrefix: pulumi.String("images/"),
/// 				},
/// 				&s3.BucketNotificationQueueArgs{
/// 					Id:       pulumi.String("video-upload-event"),
/// 					QueueArn: queueQueue.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterPrefix: pulumi.String("videos/"),
/// 				},
/// 			},
/// 			Bucket: bucket.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_iam_getpolicydocument" "queue" {
///   statements {
///     conditions {
///       test     = "ArnEquals"
///       variable = "aws:SourceArn"
///       values   = [aws_s3_bucket.bucket.arn]
///     }
///     principals {
///       type        = "*"
///       identifiers = ["*"]
///     }
///     effect    = "Allow"
///     actions   = ["sqs:SendMessage"]
///     resources = ["arn:aws:sqs:*:*:s3-event-notification-queue"]
///   }
/// }
///
/// resource "aws_sqs_queue" "queue" {
///   name   = "s3-event-notification-queue"
///   policy = data.aws_iam_getpolicydocument.queue.json
/// }
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "your-bucket-name"
/// }
/// resource "aws_s3_bucketnotification" "bucket_notification" {
///   queues {
///     id            = "image-upload-event"
///     queue_arn     = aws_sqs_queue.queue.arn
///     events        = ["s3:ObjectCreated:*"]
///     filter_prefix = "images/"
///   }
///   queues {
///     id            = "video-upload-event"
///     queue_arn     = aws_sqs_queue.queue.arn
///     events        = ["s3:ObjectCreated:*"]
///     filter_prefix = "videos/"
///   }
///   bucket = aws_s3_bucket.bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationQueueArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var queue = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .effect("Allow")
///                 .actions("sqs:SendMessage")
///                 .resources("arn:aws:sqs:*:*:s3-event-notification-queue")
///                 .build())
///             .build());
///
///         var queueQueue = new Queue("queueQueue", QueueArgs.builder()
///             .name("s3-event-notification-queue")
///             .policy(queue.applyValue(_queue -> _queue.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .queues(
///                 BucketNotificationQueueArgs.builder()
///                     .id("image-upload-event")
///                     .queueArn(queueQueue.arn())
///                     .events("s3:ObjectCreated:*")
///                     .filterPrefix("images/")
///                     .build(),
///                 BucketNotificationQueueArgs.builder()
///                     .id("video-upload-event")
///                     .queueArn(queueQueue.arn())
///                     .events("s3:ObjectCreated:*")
///                     .filterPrefix("videos/")
///                     .build())
///             .bucket(bucket.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queueQueue:
///     type: aws:sqs:Queue
///     name: queue
///     properties:
///       name: s3-event-notification-queue
///       policy: ${queue.json}
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       queues:
///         - id: image-upload-event
///           queueArn: ${queueQueue.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: images/
///         - id: video-upload-event
///           queueArn: ${queueQueue.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: videos/
///       bucket: ${bucket.id}
/// variables:
///   queue:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             effect: Allow
///             actions:
///               - sqs:SendMessage
///             resources:
///               - arn:aws:sqs:*:*:s3-event-notification-queue
/// ```
///
///
/// For JSON syntax, use an array instead of defining the `queue` key twice.
///
/// ```json
/// {
/// 	"bucket": "${aws_s3_bucket.bucket.id}",
/// 	"queue": [
/// 		{
/// 			"id": "image-upload-event",
/// 			"queue_arn": "${aws_sqs_queue.queue.arn}",
/// 			"events": ["s3:ObjectCreated:*"],
/// 			"filter_prefix": "images/"
/// 		},
/// 		{
/// 			"id": "video-upload-event",
/// 			"queue_arn": "${aws_sqs_queue.queue.arn}",
/// 			"events": ["s3:ObjectCreated:*"],
/// 			"filter_prefix": "videos/"
/// 		}
/// 	]
/// }
/// ```
///
/// ### Emit events to EventBridge
///
/// For a bucket shared by multiple independent consumers — different teams, different Pulumi configurations, different applications — EventBridge is the recommended pattern. Each consumer subscribes to the bucket through its own `aws.cloudwatch.EventRule`, so they cannot overwrite one another the way notification configurations would.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const shared = new aws.s3.Bucket("shared", {bucket: "shared-bucket"});
/// const sharedBucketNotification = new aws.s3.BucketNotification("shared", {
///     bucket: shared.id,
///     eventbridge: true,
/// });
/// // Team A: process new uploads under uploads/
/// const teamA = new aws.cloudwatch.EventRule("team_a", {
///     name: "team-a-uploads",
///     eventPattern: pulumi.jsonStringify({
///         source: ["aws.s3"],
///         "detail-type": ["Object Created"],
///         detail: {
///             bucket: {
///                 name: [shared.bucket],
///             },
///             object: {
///                 key: [{
///                     prefix: "uploads/",
///                 }],
///             },
///         },
///     }),
/// });
/// const teamAEventTarget = new aws.cloudwatch.EventTarget("team_a", {
///     rule: teamA.name,
///     arn: teamAProcessor.arn,
/// });
/// // Team B: archive deletions under archive/, declared in a separate
/// // Pulumi configuration that knows nothing about Team A.
/// const teamB = new aws.cloudwatch.EventRule("team_b", {
///     name: "team-b-deletions",
///     eventPattern: pulumi.jsonStringify({
///         source: ["aws.s3"],
///         "detail-type": ["Object Deleted"],
///         detail: {
///             bucket: {
///                 name: [shared.bucket],
///             },
///             object: {
///                 key: [{
///                     prefix: "archive/",
///                 }],
///             },
///         },
///     }),
/// });
/// const teamBEventTarget = new aws.cloudwatch.EventTarget("team_b", {
///     rule: teamB.name,
///     arn: teamBArchive.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// shared = aws.s3.Bucket("shared", bucket="shared-bucket")
/// shared_bucket_notification = aws.s3.BucketNotification("shared",
///     bucket=shared.id,
///     eventbridge=True)
/// # Team A: process new uploads under uploads/
/// team_a = aws.cloudwatch.EventRule("team_a",
///     name="team-a-uploads",
///     event_pattern=pulumi.Output.json_dumps({
///         "source": ["aws.s3"],
///         "detail-type": ["Object Created"],
///         "detail": {
///             "bucket": {
///                 "name": [shared.bucket],
///             },
///             "object": {
///                 "key": [{
///                     "prefix": "uploads/",
///                 }],
///             },
///         },
///     }))
/// team_a_event_target = aws.cloudwatch.EventTarget("team_a",
///     rule=team_a.name,
///     arn=team_a_processor["arn"])
/// # Team B: archive deletions under archive/, declared in a separate
/// # Pulumi configuration that knows nothing about Team A.
/// team_b = aws.cloudwatch.EventRule("team_b",
///     name="team-b-deletions",
///     event_pattern=pulumi.Output.json_dumps({
///         "source": ["aws.s3"],
///         "detail-type": ["Object Deleted"],
///         "detail": {
///             "bucket": {
///                 "name": [shared.bucket],
///             },
///             "object": {
///                 "key": [{
///                     "prefix": "archive/",
///                 }],
///             },
///         },
///     }))
/// team_b_event_target = aws.cloudwatch.EventTarget("team_b",
///     rule=team_b.name,
///     arn=team_b_archive["arn"])
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
///     var shared = new Aws.S3.Bucket("shared", new()
///     {
///         BucketName = "shared-bucket",
///     });
///
///     var sharedBucketNotification = new Aws.S3.BucketNotification("shared", new()
///     {
///         Bucket = shared.Id,
///         Eventbridge = true,
///     });
///
///     // Team A: process new uploads under uploads/
///     var teamA = new Aws.CloudWatch.EventRule("team_a", new()
///     {
///         Name = "team-a-uploads",
///         EventPattern = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["source"] = new[]
///             {
///                 "aws.s3",
///             },
///             ["detail-type"] = new[]
///             {
///                 "Object Created",
///             },
///             ["detail"] = new Dictionary<string, object?>
///             {
///                 ["bucket"] = new Dictionary<string, object?>
///                 {
///                     ["name"] = new[]
///                     {
///                         shared.BucketName,
///                     },
///                 },
///                 ["object"] = new Dictionary<string, object?>
///                 {
///                     ["key"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["prefix"] = "uploads/",
///                         },
///                     },
///                 },
///             },
///         })),
///     });
///
///     var teamAEventTarget = new Aws.CloudWatch.EventTarget("team_a", new()
///     {
///         Rule = teamA.Name,
///         Arn = teamAProcessor.Arn,
///     });
///
///     // Team B: archive deletions under archive/, declared in a separate
///     // Pulumi configuration that knows nothing about Team A.
///     var teamB = new Aws.CloudWatch.EventRule("team_b", new()
///     {
///         Name = "team-b-deletions",
///         EventPattern = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["source"] = new[]
///             {
///                 "aws.s3",
///             },
///             ["detail-type"] = new[]
///             {
///                 "Object Deleted",
///             },
///             ["detail"] = new Dictionary<string, object?>
///             {
///                 ["bucket"] = new Dictionary<string, object?>
///                 {
///                     ["name"] = new[]
///                     {
///                         shared.BucketName,
///                     },
///                 },
///                 ["object"] = new Dictionary<string, object?>
///                 {
///                     ["key"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["prefix"] = "archive/",
///                         },
///                     },
///                 },
///             },
///         })),
///     });
///
///     var teamBEventTarget = new Aws.CloudWatch.EventTarget("team_b", new()
///     {
///         Rule = teamB.Name,
///         Arn = teamBArchive.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		shared, err := s3.NewBucket(ctx, "shared", &s3.BucketArgs{
/// 			Bucket: pulumi.String("shared-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "shared", &s3.BucketNotificationArgs{
/// 			Bucket:      shared.ID().ToIDOutput().ToStringOutput(),
/// 			Eventbridge: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Team A: process new uploads under uploads/
/// 		teamA, err := cloudwatch.NewEventRule(ctx, "team_a", &cloudwatch.EventRuleArgs{
/// 			Name: pulumi.String("team-a-uploads"),
/// 			EventPattern: shared.Bucket.ApplyT(func(bucket string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"source": []string{
/// 						"aws.s3",
/// 					},
/// 					"detail-type": []string{
/// 						"Object Created",
/// 					},
/// 					"detail": map[string]interface{}{
/// 						"bucket": map[string][]string{
/// 							"name": []string{
/// 								bucket,
/// 							},
/// 						},
/// 						"object": map[string][]map[string]string{
/// 							"key": []map[string]string{
/// 								{
/// 									"prefix": "uploads/",
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventTarget(ctx, "team_a", &cloudwatch.EventTargetArgs{
/// 			Rule: teamA.Name,
/// 			Arn:  pulumi.Any(teamAProcessor.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Team B: archive deletions under archive/, declared in a separate
/// 		// Pulumi configuration that knows nothing about Team A.
/// 		teamB, err := cloudwatch.NewEventRule(ctx, "team_b", &cloudwatch.EventRuleArgs{
/// 			Name: pulumi.String("team-b-deletions"),
/// 			EventPattern: shared.Bucket.ApplyT(func(bucket string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"source": []string{
/// 						"aws.s3",
/// 					},
/// 					"detail-type": []string{
/// 						"Object Deleted",
/// 					},
/// 					"detail": map[string]interface{}{
/// 						"bucket": map[string][]string{
/// 							"name": []string{
/// 								bucket,
/// 							},
/// 						},
/// 						"object": map[string][]map[string]string{
/// 							"key": []map[string]string{
/// 								{
/// 									"prefix": "archive/",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewEventTarget(ctx, "team_b", &cloudwatch.EventTargetArgs{
/// 			Rule: teamB.Name,
/// 			Arn:  pulumi.Any(teamBArchive.Arn),
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
/// resource "aws_s3_bucket" "shared" {
///   bucket = "shared-bucket"
/// }
/// resource "aws_s3_bucketnotification" "shared" {
///   bucket      = aws_s3_bucket.shared.id
///   eventbridge = true
/// }
/// # Team A: process new uploads under uploads/
/// resource "aws_cloudwatch_eventrule" "team_a" {
///   name = "team-a-uploads"
///   event_pattern = jsonencode({
///     "source"      = ["aws.s3"]
///     "detail-type" = ["Object Created"]
///     "detail" = {
///       "bucket" = {
///         "name" = [aws_s3_bucket.shared.bucket]
///       }
///       "object" = {
///         "key" = [{
///           "prefix" = "uploads/"
///         }]
///       }
///     }
///   })
/// }
/// resource "aws_cloudwatch_eventtarget" "team_a" {
///   rule = aws_cloudwatch_eventrule.team_a.name
///   arn  = teamAProcessor.arn
/// }
/// # Team B: archive deletions under archive/, declared in a separate
/// # Pulumi configuration that knows nothing about Team A.
/// resource "aws_cloudwatch_eventrule" "team_b" {
///   name = "team-b-deletions"
///   event_pattern = jsonencode({
///     "source"      = ["aws.s3"]
///     "detail-type" = ["Object Deleted"]
///     "detail" = {
///       "bucket" = {
///         "name" = [aws_s3_bucket.shared.bucket]
///       }
///       "object" = {
///         "key" = [{
///           "prefix" = "archive/"
///         }]
///       }
///     }
///   })
/// }
/// resource "aws_cloudwatch_eventtarget" "team_b" {
///   rule = aws_cloudwatch_eventrule.team_b.name
///   arn  = teamBArchive.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.cloudwatch.EventRule;
/// import com.pulumi.aws.cloudwatch.EventRuleArgs;
/// import com.pulumi.aws.cloudwatch.EventTarget;
/// import com.pulumi.aws.cloudwatch.EventTargetArgs;
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
///         var shared = new Bucket("shared", BucketArgs.builder()
///             .bucket("shared-bucket")
///             .build());
///
///         var sharedBucketNotification = new BucketNotification("sharedBucketNotification", BucketNotificationArgs.builder()
///             .bucket(shared.id())
///             .eventbridge(true)
///             .build());
///
///         // Team A: process new uploads under uploads/
///         var teamA = new EventRule("teamA", EventRuleArgs.builder()
///             .name("team-a-uploads")
///             .eventPattern(shared.bucket().applyValue(_bucket -> serializeJson(
///                 jsonObject(
///                     jsonProperty("source", jsonArray("aws.s3")),
///                     jsonProperty("detail-type", jsonArray("Object Created")),
///                     jsonProperty("detail", jsonObject(
///                         jsonProperty("bucket", jsonObject(
///                             jsonProperty("name", jsonArray(_bucket))
///                         )),
///                         jsonProperty("object", jsonObject(
///                             jsonProperty("key", jsonArray(jsonObject(
///                                 jsonProperty("prefix", "uploads/")
///                             )))
///                         ))
///                     ))
///                 ))))
///             .build());
///
///         var teamAEventTarget = new EventTarget("teamAEventTarget", EventTargetArgs.builder()
///             .rule(teamA.name())
///             .arn(teamAProcessor.arn())
///             .build());
///
///         // Team B: archive deletions under archive/, declared in a separate
///         // Pulumi configuration that knows nothing about Team A.
///         var teamB = new EventRule("teamB", EventRuleArgs.builder()
///             .name("team-b-deletions")
///             .eventPattern(shared.bucket().applyValue(_bucket -> serializeJson(
///                 jsonObject(
///                     jsonProperty("source", jsonArray("aws.s3")),
///                     jsonProperty("detail-type", jsonArray("Object Deleted")),
///                     jsonProperty("detail", jsonObject(
///                         jsonProperty("bucket", jsonObject(
///                             jsonProperty("name", jsonArray(_bucket))
///                         )),
///                         jsonProperty("object", jsonObject(
///                             jsonProperty("key", jsonArray(jsonObject(
///                                 jsonProperty("prefix", "archive/")
///                             )))
///                         ))
///                     ))
///                 ))))
///             .build());
///
///         var teamBEventTarget = new EventTarget("teamBEventTarget", EventTargetArgs.builder()
///             .rule(teamB.name())
///             .arn(teamBArchive.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   shared:
///     type: aws:s3:Bucket
///     properties:
///       bucket: shared-bucket
///   sharedBucketNotification:
///     type: aws:s3:BucketNotification
///     name: shared
///     properties:
///       bucket: ${shared.id}
///       eventbridge: true
///   # Team A: process new uploads under uploads/
///   teamA:
///     type: aws:cloudwatch:EventRule
///     name: team_a
///     properties:
///       name: team-a-uploads
///       eventPattern:
///         fn::toJSON:
///           source:
///             - aws.s3
///           detail-type:
///             - Object Created
///           detail:
///             bucket:
///               name:
///                 - ${shared.bucket}
///             object:
///               key:
///                 - prefix: uploads/
///   teamAEventTarget:
///     type: aws:cloudwatch:EventTarget
///     name: team_a
///     properties:
///       rule: ${teamA.name}
///       arn: ${teamAProcessor.arn}
///   # Team B: archive deletions under archive/, declared in a separate
///   # Pulumi configuration that knows nothing about Team A.
///   teamB:
///     type: aws:cloudwatch:EventRule
///     name: team_b
///     properties:
///       name: team-b-deletions
///       eventPattern:
///         fn::toJSON:
///           source:
///             - aws.s3
///           detail-type:
///             - Object Deleted
///           detail:
///             bucket:
///               name:
///                 - ${shared.bucket}
///             object:
///               key:
///                 - prefix: archive/
///   teamBEventTarget:
///     type: aws:cloudwatch:EventTarget
///     name: team_b
///     properties:
///       rule: ${teamB.name}
///       arn: ${teamBArchive.arn}
/// ```
///
///
/// For sharing a bucket between Pulumi configurations when EventBridge is not an option, use the `aws.s3.BucketNotification` data source to read existing notifications and re-emit them in your own resource.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) Name of the bucket.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import S3 bucket notification using the `bucket`. For example:
///
/// ```sh
/// $ pulumi import aws:s3/bucketNotification:BucketNotification bucket_notification bucket-name
/// ```
class BucketNotification extends pulumi.CustomResource {
  /// Name of the bucket for notification configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> bucket;
  /// Whether to enable Amazon EventBridge notifications. Defaults to `false`.
  late final pulumi.Output<bool?> eventbridge;
  /// Notification configuration to a Lambda Function. See below.
  late final pulumi.Output<List<BucketNotificationLambdaFunction>?> lambdaFunctions;
  /// Notification configuration to SQS Queue. See below.
  late final pulumi.Output<List<BucketNotificationQueue>?> queues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Notification configuration to SNS Topic. See below.
  late final pulumi.Output<List<BucketNotificationTopic>?> topics;

  /// Creates a new [BucketNotification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketNotification]. {@macro pulumi_s3_bucket_notification_bucket_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketNotification(
    String name, {
    BucketNotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketNotification:BucketNotification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    eventbridge = registerOutput<bool?>('eventbridge');
    lambdaFunctions = registerOutput<List<BucketNotificationLambdaFunction>?>('lambdaFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationLambdaFunction>(guardedValue, (value) => BucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>())); });
    queues = registerOutput<List<BucketNotificationQueue>?>('queues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationQueue>(guardedValue, (value) => BucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    topics = registerOutput<List<BucketNotificationTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationTopic>(guardedValue, (value) => BucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [BucketNotification] resource's state with the given [name] and [id].
  static BucketNotification get(
    String name,
    pulumi.Input<String> id, {
    BucketNotificationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketNotification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketNotification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketNotification:BucketNotification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    eventbridge = registerOutput<bool?>('eventbridge');
    lambdaFunctions = registerOutput<List<BucketNotificationLambdaFunction>?>('lambdaFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationLambdaFunction>(guardedValue, (value) => BucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>())); });
    queues = registerOutput<List<BucketNotificationQueue>?>('queues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationQueue>(guardedValue, (value) => BucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    topics = registerOutput<List<BucketNotificationTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationTopic>(guardedValue, (value) => BucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [BucketNotification] resource.
  BucketNotification.reference(String urn)
    : super(
        'aws:s3/bucketNotification:BucketNotification',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    eventbridge = registerOutput<bool?>('eventbridge');
    lambdaFunctions = registerOutput<List<BucketNotificationLambdaFunction>?>('lambdaFunctions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationLambdaFunction>(guardedValue, (value) => BucketNotificationLambdaFunction.fromMap((value as Map).cast<String, dynamic>())); });
    queues = registerOutput<List<BucketNotificationQueue>?>('queues', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationQueue>(guardedValue, (value) => BucketNotificationQueue.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    topics = registerOutput<List<BucketNotificationTopic>?>('topics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketNotificationTopic>(guardedValue, (value) => BucketNotificationTopic.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
