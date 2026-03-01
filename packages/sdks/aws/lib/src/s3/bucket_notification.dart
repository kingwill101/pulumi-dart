import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_notification_args.dart';
import 'bucket_notification_lambda_function.dart';
import 'bucket_notification_queue.dart';
import 'bucket_notification_state.dart';
import 'bucket_notification_topic.dart';

/// Manages a S3 Bucket Notification Configuration. For additional information, see the [Configuring S3 Event Notifications section in the Amazon S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html).
///
/// > **NOTE:** S3 Buckets only support a single notification configuration resource. Declaring multiple `aws.s3.BucketNotification` resources to the same S3 Bucket will cause a perpetual difference in configuration. This resource will overwrite any existing event notifications configured for the S3 bucket it's associated with. See the example "Trigger multiple Lambda functions" for an option of how to configure multiple triggers within this resource.
///
/// > This resource cannot be used with S3 directory buckets.
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["s3.amazonaws.com"],
///         }],
///         actions: ["SNS:Publish"],
///         resources: ["arn:aws:sns:*:*:s3-event-notification-topic"],
///         conditions: [{
///             test: "ArnLike",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///     }],
/// });
/// const topicTopic = new aws.sns.Topic("topic", {
///     name: "s3-event-notification-topic",
///     policy: topic.apply(topic => topic.json),
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     bucket: bucket.id,
///     topics: [{
///         topicArn: topicTopic.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterSuffix: ".log",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// topic = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["s3.amazonaws.com"],
///     }],
///     "actions": ["SNS:Publish"],
///     "resources": ["arn:aws:sns:*:*:s3-event-notification-topic"],
///     "conditions": [{
///         "test": "ArnLike",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
/// }])
/// topic_topic = aws.sns.Topic("topic",
///     name="s3-event-notification-topic",
///     policy=topic.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     bucket=bucket.id,
///     topics=[{
///         "topic_arn": topic_topic.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_suffix": ".log",
///     }])
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
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "SNS:Publish",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sns:*:*:s3-event-notification-topic",
///                 },
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
///         Bucket = bucket.Id,
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
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("s3.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Publish"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sns:*:*:s3-event-notification-topic"),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnLike"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		topicTopic, err := sns.NewTopic(ctx, "topic", &sns.TopicArgs{
/// 			Name: pulumi.String("s3-event-notification-topic"),
/// 			Policy: pulumi.String(topic.ApplyT(func(topic iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &topic.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Bucket: bucket.ID(),
/// 			Topics: s3.BucketNotificationTopicArray{
/// 				&s3.BucketNotificationTopicArgs{
/// 					TopicArn: topicTopic.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterSuffix: pulumi.String(".log"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationTopicArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var topic = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("s3.amazonaws.com")
///                     .build())
///                 .actions("SNS:Publish")
///                 .resources("arn:aws:sns:*:*:s3-event-notification-topic")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnLike")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .build())
///             .build());
///
///         var topicTopic = new Topic("topicTopic", TopicArgs.builder()
///             .name("s3-event-notification-topic")
///             .policy(topic.applyValue(_topic -> _topic.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .bucket(bucket.id())
///             .topics(BucketNotificationTopicArgs.builder()
///                 .topicArn(topicTopic.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterSuffix(".log")
///                 .build())
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
///       bucket: ${bucket.id}
///       topics:
///         - topicArn: ${topicTopic.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterSuffix: .log
/// variables:
///   topic:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - s3.amazonaws.com
///             actions:
///               - SNS:Publish
///             resources:
///               - arn:aws:sns:*:*:s3-event-notification-topic
///             conditions:
///               - test: ArnLike
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
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
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["sqs:SendMessage"],
///         resources: ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///     }],
/// });
/// const queueQueue = new aws.sqs.Queue("queue", {
///     name: "s3-event-notification-queue",
///     policy: queue.apply(queue => queue.json),
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     bucket: bucket.id,
///     queues: [{
///         queueArn: queueQueue.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterSuffix: ".log",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// queue = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["sqs:SendMessage"],
///     "resources": ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///     "conditions": [{
///         "test": "ArnEquals",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
/// }])
/// queue_queue = aws.sqs.Queue("queue",
///     name="s3-event-notification-queue",
///     policy=queue.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     bucket=bucket.id,
///     queues=[{
///         "queue_arn": queue_queue.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_suffix": ".log",
///     }])
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
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "sqs:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sqs:*:*:s3-event-notification-queue",
///                 },
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
///         Bucket = bucket.Id,
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
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sqs:SendMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sqs:*:*:s3-event-notification-queue"),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		queueQueue, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name: pulumi.String("s3-event-notification-queue"),
/// 			Policy: pulumi.String(queue.ApplyT(func(queue iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &queue.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Bucket: bucket.ID(),
/// 			Queues: s3.BucketNotificationQueueArray{
/// 				&s3.BucketNotificationQueueArgs{
/// 					QueueArn: queueQueue.Arn,
/// 					Events: pulumi.StringArray{
/// 						pulumi.String("s3:ObjectCreated:*"),
/// 					},
/// 					FilterSuffix: pulumi.String(".log"),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationQueueArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var queue = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("sqs:SendMessage")
///                 .resources("arn:aws:sqs:*:*:s3-event-notification-queue")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .build())
///             .build());
///
///         var queueQueue = new Queue("queueQueue", QueueArgs.builder()
///             .name("s3-event-notification-queue")
///             .policy(queue.applyValue(_queue -> _queue.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .bucket(bucket.id())
///             .queues(BucketNotificationQueueArgs.builder()
///                 .queueArn(queueQueue.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterSuffix(".log")
///                 .build())
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
///       bucket: ${bucket.id}
///       queues:
///         - queueArn: ${queueQueue.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterSuffix: .log
/// variables:
///   queue:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - sqs:SendMessage
///             resources:
///               - arn:aws:sqs:*:*:s3-event-notification-queue
///             conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
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
///     runtime: aws.lambda.Runtime.NodeJS20dX,
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
///     bucket: bucket.id,
///     lambdaFunctions: [{
///         lambdaFunctionArn: func.arn,
///         events: ["s3:ObjectCreated:*"],
///         filterPrefix: "AWSLogs/",
///         filterSuffix: ".log",
///     }],
/// }, {
///     dependsOn: [allowBucket],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
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
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X)
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// allow_bucket = aws.lambda_.Permission("allow_bucket",
///     statement_id="AllowExecutionFromS3Bucket",
///     action="lambda:InvokeFunction",
///     function=func.arn,
///     principal="s3.amazonaws.com",
///     source_arn=bucket.arn)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     bucket=bucket.id,
///     lambda_functions=[{
///         "lambda_function_arn": func.arn,
///         "events": ["s3:ObjectCreated:*"],
///         "filter_prefix": "AWSLogs/",
///         "filter_suffix": ".log",
///     }],
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
///                 Effect = "Allow",
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
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
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
///         Bucket = bucket.Id,
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
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
/// 			Bucket: bucket.ID(),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
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
///             .runtime("nodejs20.x")
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
///             .bucket(bucket.id())
///             .lambdaFunctions(BucketNotificationLambdaFunctionArgs.builder()
///                 .lambdaFunctionArn(func.arn())
///                 .events("s3:ObjectCreated:*")
///                 .filterPrefix("AWSLogs/")
///                 .filterSuffix(".log")
///                 .build())
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
///         fn::FileArchive: your-function.zip
///       name: example_lambda_name
///       role: ${iamForLambda.arn}
///       handler: exports.example
///       runtime: nodejs20.x
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       bucket: ${bucket.id}
///       lambdaFunctions:
///         - lambdaFunctionArn: ${func.arn}
///           events:
///             - s3:ObjectCreated:*
///           filterPrefix: AWSLogs/
///           filterSuffix: .log
///     options:
///       dependsOn:
///         - ${allowBucket}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
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
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["lambda.amazonaws.com"],
///         }],
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
///     runtime: aws.lambda.Runtime.NodeJS20dX,
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
///     bucket: bucket.id,
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["lambda.amazonaws.com"],
///     }],
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
///     runtime=aws.lambda_.Runtime.NODE_JS20D_X)
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
///     bucket=bucket.id,
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
///                 Effect = "Allow",
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
///         Runtime = Aws.Lambda.Runtime.NodeJS20dX,
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
///         Bucket = bucket.Id,
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
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"lambda.amazonaws.com",
/// 							},
/// 						},
/// 					},
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
/// 			Runtime: pulumi.String(lambda.RuntimeNodeJS20dX),
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
/// 			Bucket: bucket.ID(),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("lambda.amazonaws.com")
///                     .build())
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
///             .runtime("nodejs20.x")
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
///             .bucket(bucket.id())
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
///         fn::FileArchive: your-function1.zip
///       name: example_lambda_name1
///       role: ${iamForLambda.arn}
///       handler: exports.example
///       runtime: nodejs20.x
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
///         fn::FileArchive: your-function2.zip
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
///       bucket: ${bucket.id}
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
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - lambda.amazonaws.com
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
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["sqs:SendMessage"],
///         resources: ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [bucket.arn],
///         }],
///     }],
/// });
/// const queueQueue = new aws.sqs.Queue("queue", {
///     name: "s3-event-notification-queue",
///     policy: queue.apply(queue => queue.json),
/// });
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     bucket: bucket.id,
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
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// queue = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["sqs:SendMessage"],
///     "resources": ["arn:aws:sqs:*:*:s3-event-notification-queue"],
///     "conditions": [{
///         "test": "ArnEquals",
///         "variable": "aws:SourceArn",
///         "values": [bucket.arn],
///     }],
/// }])
/// queue_queue = aws.sqs.Queue("queue",
///     name="s3-event-notification-queue",
///     policy=queue.json)
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     bucket=bucket.id,
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
///     ])
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
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "sqs:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sqs:*:*:s3-event-notification-queue",
///                 },
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
///         Bucket = bucket.Id,
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
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sqs:SendMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sqs:*:*:s3-event-notification-queue"),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								bucket.Arn,
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		queueQueue, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name: pulumi.String("s3-event-notification-queue"),
/// 			Policy: pulumi.String(queue.ApplyT(func(queue iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &queue.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Bucket: bucket.ID(),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
/// import com.pulumi.aws.s3.inputs.BucketNotificationQueueArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         final var queue = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("sqs:SendMessage")
///                 .resources("arn:aws:sqs:*:*:s3-event-notification-queue")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(bucket.arn())
///                     .build())
///                 .build())
///             .build());
///
///         var queueQueue = new Queue("queueQueue", QueueArgs.builder()
///             .name("s3-event-notification-queue")
///             .policy(queue.applyValue(_queue -> _queue.json()))
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .bucket(bucket.id())
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
///       bucket: ${bucket.id}
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
/// variables:
///   queue:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - sqs:SendMessage
///             resources:
///               - arn:aws:sqs:*:*:s3-event-notification-queue
///             conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${bucket.arn}
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
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "your-bucket-name"});
/// const bucketNotification = new aws.s3.BucketNotification("bucket_notification", {
///     bucket: bucket.id,
///     eventbridge: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="your-bucket-name")
/// bucket_notification = aws.s3.BucketNotification("bucket_notification",
///     bucket=bucket.id,
///     eventbridge=True)
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
///     var bucketNotification = new Aws.S3.BucketNotification("bucket_notification", new()
///     {
///         Bucket = bucket.Id,
///         Eventbridge = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
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
/// 		_, err = s3.NewBucketNotification(ctx, "bucket_notification", &s3.BucketNotificationArgs{
/// 			Bucket:      bucket.ID(),
/// 			Eventbridge: pulumi.Bool(true),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketNotification;
/// import com.pulumi.aws.s3.BucketNotificationArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("your-bucket-name")
///             .build());
///
///         var bucketNotification = new BucketNotification("bucketNotification", BucketNotificationArgs.builder()
///             .bucket(bucket.id())
///             .eventbridge(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: your-bucket-name
///   bucketNotification:
///     type: aws:s3:BucketNotification
///     name: bucket_notification
///     properties:
///       bucket: ${bucket.id}
///       eventbridge: true
/// ```
///
///
/// ## Import
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
  /// Used to configure notifications to a Lambda Function. See below.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.eventbridge = registerOutput<bool?>('eventbridge');
    this.lambdaFunctions = registerOutput<List<BucketNotificationLambdaFunction>?>('lambdaFunctions');
    this.queues = registerOutput<List<BucketNotificationQueue>?>('queues');
    this.region = registerOutput<String>('region');
    this.topics = registerOutput<List<BucketNotificationTopic>?>('topics');
  }

  /// Gets an existing [BucketNotification] resource's state with the given [name] and [id].
  static BucketNotification get(
    String name,
    pulumi.Input<String> id, {
    BucketNotificationState? state,
  }) {
    return BucketNotification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    this.bucket = registerOutput<String>('bucket');
    this.eventbridge = registerOutput<bool?>('eventbridge');
    this.lambdaFunctions = registerOutput<List<BucketNotificationLambdaFunction>?>('lambdaFunctions');
    this.queues = registerOutput<List<BucketNotificationQueue>?>('queues');
    this.region = registerOutput<String>('region');
    this.topics = registerOutput<List<BucketNotificationTopic>?>('topics');
  }
}
