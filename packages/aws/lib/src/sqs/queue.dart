import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';

/// Amazon SQS (Simple Queue Service) is a fully managed message queuing service that enables decoupling and scaling of microservices, distributed systems, and serverless applications. This resource allows you to create, configure, and manage an SQS queue, which acts as a reliable message buffer between producers and consumers. With support for standard and FIFO queues, SQS ensures secure, scalable, and asynchronous message processing. Use this resource to define queue attributes, configure access policies, and integrate seamlessly with AWS services like Lambda, SNS, and EC2.
///
/// !> AWS will hang indefinitely, leading to a `timeout while waiting` error, when creating or updating an `aws.sqs.Queue` with an associated `aws.sqs.QueuePolicy` if `Version = "2012-10-17"` is not explicitly set in the policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "example-queue",
///     delaySeconds: 90,
///     maxMessageSize: 2048,
///     messageRetentionSeconds: 86400,
///     receiveWaitTimeSeconds: 10,
///     redrivePolicy: JSON.stringify({
///         deadLetterTargetArn: queueDeadletter.arn,
///         maxReceiveCount: 4,
///     }),
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="example-queue",
///     delay_seconds=90,
///     max_message_size=2048,
///     message_retention_seconds=86400,
///     receive_wait_time_seconds=10,
///     redrive_policy=json.dumps({
///         "deadLetterTargetArn": queue_deadletter["arn"],
///         "maxReceiveCount": 4,
///     }),
///     tags={
///         "Environment": "production",
///     })
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
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "example-queue",
///         DelaySeconds = 90,
///         MaxMessageSize = 2048,
///         MessageRetentionSeconds = 86400,
///         ReceiveWaitTimeSeconds = 10,
///         RedrivePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["deadLetterTargetArn"] = queueDeadletter.Arn,
///             ["maxReceiveCount"] = 4,
///         }),
///         Tags =
///         {
///             { "Environment", "production" },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"deadLetterTargetArn": queueDeadletter.Arn,
/// 			"maxReceiveCount":     4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:                    pulumi.String("example-queue"),
/// 			DelaySeconds:            pulumi.Int(90),
/// 			MaxMessageSize:          pulumi.Int(2048),
/// 			MessageRetentionSeconds: pulumi.Int(86400),
/// 			ReceiveWaitTimeSeconds:  pulumi.Int(10),
/// 			RedrivePolicy:           pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("example-queue")
///             .delaySeconds(90)
///             .maxMessageSize(2048)
///             .messageRetentionSeconds(86400)
///             .receiveWaitTimeSeconds(10)
///             .redrivePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("deadLetterTargetArn", queueDeadletter.arn()),
///                     jsonProperty("maxReceiveCount", 4)
///                 )))
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: example-queue
///       delaySeconds: 90
///       maxMessageSize: 2048
///       messageRetentionSeconds: 86400
///       receiveWaitTimeSeconds: 10
///       redrivePolicy:
///         fn::toJSON:
///           deadLetterTargetArn: ${queueDeadletter.arn}
///           maxReceiveCount: 4
///       tags:
///         Environment: production
/// ```
///
///
/// ## FIFO queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "example-queue.fifo",
///     fifoQueue: true,
///     contentBasedDeduplication: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="example-queue.fifo",
///     fifo_queue=True,
///     content_based_deduplication=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "example-queue.fifo",
///         FifoQueue = true,
///         ContentBasedDeduplication = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:                      pulumi.String("example-queue.fifo"),
/// 			FifoQueue:                 pulumi.Bool(true),
/// 			ContentBasedDeduplication: pulumi.Bool(true),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("example-queue.fifo")
///             .fifoQueue(true)
///             .contentBasedDeduplication(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: example-queue.fifo
///       fifoQueue: true
///       contentBasedDeduplication: true
/// ```
///
///
/// ## High-throughput FIFO queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "pulumi-example-queue.fifo",
///     fifoQueue: true,
///     deduplicationScope: "messageGroup",
///     fifoThroughputLimit: "perMessageGroupId",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="pulumi-example-queue.fifo",
///     fifo_queue=True,
///     deduplication_scope="messageGroup",
///     fifo_throughput_limit="perMessageGroupId")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "pulumi-example-queue.fifo",
///         FifoQueue = true,
///         DeduplicationScope = "messageGroup",
///         FifoThroughputLimit = "perMessageGroupId",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:                pulumi.String("pulumi-example-queue.fifo"),
/// 			FifoQueue:           pulumi.Bool(true),
/// 			DeduplicationScope:  pulumi.String("messageGroup"),
/// 			FifoThroughputLimit: pulumi.String("perMessageGroupId"),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("pulumi-example-queue.fifo")
///             .fifoQueue(true)
///             .deduplicationScope("messageGroup")
///             .fifoThroughputLimit("perMessageGroupId")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: pulumi-example-queue.fifo
///       fifoQueue: true
///       deduplicationScope: messageGroup
///       fifoThroughputLimit: perMessageGroupId
/// ```
///
///
/// ## Dead-letter queue
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "pulumi-example-queue",
///     redrivePolicy: JSON.stringify({
///         deadLetterTargetArn: queueDeadletter.arn,
///         maxReceiveCount: 4,
///     }),
/// });
/// const exampleQueueDeadletter = new aws.sqs.Queue("example_queue_deadletter", {name: "pulumi-example-deadletter-queue"});
/// const exampleQueueRedriveAllowPolicy = new aws.sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy", {
///     queueUrl: exampleQueueDeadletter.id,
///     redriveAllowPolicy: JSON.stringify({
///         redrivePermission: "byQueue",
///         sourceQueueArns: [exampleQueue.arn],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="pulumi-example-queue",
///     redrive_policy=json.dumps({
///         "deadLetterTargetArn": queue_deadletter["arn"],
///         "maxReceiveCount": 4,
///     }))
/// example_queue_deadletter = aws.sqs.Queue("example_queue_deadletter", name="pulumi-example-deadletter-queue")
/// example_queue_redrive_allow_policy = aws.sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy",
///     queue_url=example_queue_deadletter.id,
///     redrive_allow_policy=json.dumps({
///         "redrivePermission": "byQueue",
///         "sourceQueueArns": [example_queue["arn"]],
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
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "pulumi-example-queue",
///         RedrivePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["deadLetterTargetArn"] = queueDeadletter.Arn,
///             ["maxReceiveCount"] = 4,
///         }),
///     });
///
///     var exampleQueueDeadletter = new Aws.Sqs.Queue("example_queue_deadletter", new()
///     {
///         Name = "pulumi-example-deadletter-queue",
///     });
///
///     var exampleQueueRedriveAllowPolicy = new Aws.Sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy", new()
///     {
///         QueueUrl = exampleQueueDeadletter.Id,
///         RedriveAllowPolicyName = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["redrivePermission"] = "byQueue",
///             ["sourceQueueArns"] = new[]
///             {
///                 exampleQueue.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"deadLetterTargetArn": queueDeadletter.Arn,
/// 			"maxReceiveCount":     4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:          pulumi.String("pulumi-example-queue"),
/// 			RedrivePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueueDeadletter, err := sqs.NewQueue(ctx, "example_queue_deadletter", &sqs.QueueArgs{
/// 			Name: pulumi.String("pulumi-example-deadletter-queue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"redrivePermission": "byQueue",
/// 			"sourceQueueArns": []interface{}{
/// 				exampleQueue.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		_, err = sqs.NewRedriveAllowPolicy(ctx, "example_queue_redrive_allow_policy", &sqs.RedriveAllowPolicyArgs{
/// 			QueueUrl:           exampleQueueDeadletter.ID(),
/// 			RedriveAllowPolicy: pulumi.String(json1),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sqs.RedriveAllowPolicy;
/// import com.pulumi.aws.sqs.RedriveAllowPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("pulumi-example-queue")
///             .redrivePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("deadLetterTargetArn", queueDeadletter.arn()),
///                     jsonProperty("maxReceiveCount", 4)
///                 )))
///             .build());
///
///         var exampleQueueDeadletter = new Queue("exampleQueueDeadletter", QueueArgs.builder()
///             .name("pulumi-example-deadletter-queue")
///             .build());
///
///         var exampleQueueRedriveAllowPolicy = new RedriveAllowPolicy("exampleQueueRedriveAllowPolicy", RedriveAllowPolicyArgs.builder()
///             .queueUrl(exampleQueueDeadletter.id())
///             .redriveAllowPolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("redrivePermission", "byQueue"),
///                     jsonProperty("sourceQueueArns", jsonArray(exampleQueue.arn()))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: pulumi-example-queue
///       redrivePolicy:
///         fn::toJSON:
///           deadLetterTargetArn: ${queueDeadletter.arn}
///           maxReceiveCount: 4
///   exampleQueueDeadletter:
///     type: aws:sqs:Queue
///     name: example_queue_deadletter
///     properties:
///       name: pulumi-example-deadletter-queue
///   exampleQueueRedriveAllowPolicy:
///     type: aws:sqs:RedriveAllowPolicy
///     name: example_queue_redrive_allow_policy
///     properties:
///       queueUrl: ${exampleQueueDeadletter.id}
///       redriveAllowPolicy:
///         fn::toJSON:
///           redrivePermission: byQueue
///           sourceQueueArns:
///             - ${exampleQueue.arn}
/// ```
///
///
/// ## Server-side encryption (SSE)
///
/// Using [SSE-SQS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "pulumi-example-queue",
///     sqsManagedSseEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="pulumi-example-queue",
///     sqs_managed_sse_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "pulumi-example-queue",
///         SqsManagedSseEnabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:                 pulumi.String("pulumi-example-queue"),
/// 			SqsManagedSseEnabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("pulumi-example-queue")
///             .sqsManagedSseEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: pulumi-example-queue
///       sqsManagedSseEnabled: true
/// ```
///
///
/// Using [SSE-KMS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html):
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
///     name: "example-queue",
///     kmsMasterKeyId: "alias/aws/sqs",
///     kmsDataKeyReusePeriodSeconds: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
///     name="example-queue",
///     kms_master_key_id="alias/aws/sqs",
///     kms_data_key_reuse_period_seconds=300)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new Aws.Sqs.Queue("queue", new()
///     {
///         Name = "example-queue",
///         KmsMasterKeyId = "alias/aws/sqs",
///         KmsDataKeyReusePeriodSeconds = 300,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// 			Name:                         pulumi.String("example-queue"),
/// 			KmsMasterKeyId:               pulumi.String("alias/aws/sqs"),
/// 			KmsDataKeyReusePeriodSeconds: pulumi.Int(300),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
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
///         var queue = new Queue("queue", QueueArgs.builder()
///             .name("example-queue")
///             .kmsMasterKeyId("alias/aws/sqs")
///             .kmsDataKeyReusePeriodSeconds(300)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: aws:sqs:Queue
///     properties:
///       name: example-queue
///       kmsMasterKeyId: alias/aws/sqs
///       kmsDataKeyReusePeriodSeconds: 300
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `url` (String) URL of the SQS queue.
///
///
/// Using `pulumi import`, import SQS Queues using the queue `url`. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/queue:Queue example https://queue.amazonaws.com/80398EXAMPLE/MyQueue
/// ```
class Queue extends pulumi.CustomResource {
  /// ARN of the SQS queue.
  late final pulumi.Output<String> arn;

  /// Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  late final pulumi.Output<bool?> contentBasedDeduplication;

  /// Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and `queue` (default).
  late final pulumi.Output<String> deduplicationScope;

  /// Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  late final pulumi.Output<int?> delaySeconds;

  /// Boolean designating a FIFO queue. If not set, it defaults to `false` making it standard.
  late final pulumi.Output<bool?> fifoQueue;

  /// Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  late final pulumi.Output<String> fifoThroughputLimit;

  /// Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  late final pulumi.Output<int> kmsDataKeyReusePeriodSeconds;

  /// ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  late final pulumi.Output<String?> kmsMasterKeyId;

  /// Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  late final pulumi.Output<int?> maxMessageSize;

  /// Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  late final pulumi.Output<int?> messageRetentionSeconds;

  /// Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.QueuePolicy` resource instead.
  late final pulumi.Output<String> policy;

  /// Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  late final pulumi.Output<int?> receiveWaitTimeSeconds;

  /// JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedriveAllowPolicy` resource instead.
  late final pulumi.Output<String> redriveAllowPolicy;

  /// JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the `aws.sqs.RedrivePolicy` resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (`5`), and not a string (`"5"`).
  late final pulumi.Output<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  late final pulumi.Output<bool> sqsManagedSseEnabled;

  /// Map of tags to assign to the queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Same as `id`: The URL for the created Amazon SQS queue.
  late final pulumi.Output<String> url;

  /// Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  late final pulumi.Output<int?> visibilityTimeoutSeconds;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_sqs_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(String name, {QueueArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:sqs/queue:Queue',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.contentBasedDeduplication = registerOutput<bool?>(
      'contentBasedDeduplication',
    );
    this.deduplicationScope = registerOutput<String>('deduplicationScope');
    this.delaySeconds = registerOutput<int?>('delaySeconds');
    this.fifoQueue = registerOutput<bool?>('fifoQueue');
    this.fifoThroughputLimit = registerOutput<String>('fifoThroughputLimit');
    this.kmsDataKeyReusePeriodSeconds = registerOutput<int>(
      'kmsDataKeyReusePeriodSeconds',
    );
    this.kmsMasterKeyId = registerOutput<String?>('kmsMasterKeyId');
    this.maxMessageSize = registerOutput<int?>('maxMessageSize');
    this.messageRetentionSeconds = registerOutput<int?>(
      'messageRetentionSeconds',
    );
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.policy = registerOutput<String>('policy');
    this.receiveWaitTimeSeconds = registerOutput<int?>(
      'receiveWaitTimeSeconds',
    );
    this.redriveAllowPolicy = registerOutput<String>('redriveAllowPolicy');
    this.redrivePolicy = registerOutput<String>('redrivePolicy');
    this.region = registerOutput<String>('region');
    this.sqsManagedSseEnabled = registerOutput<bool>('sqsManagedSseEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.visibilityTimeoutSeconds = registerOutput<int?>(
      'visibilityTimeoutSeconds',
    );
  }
}
