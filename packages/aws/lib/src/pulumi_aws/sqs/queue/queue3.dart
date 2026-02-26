import 'package:pulumi/pulumi.dart';
import 'queue_args3.dart';

/// Amazon SQS (Simple Queue Service) is a fully managed message queuing service that enables decoupling and scaling of microservices, distributed systems, and serverless applications. This resource allows you to create, configure, and manage an SQS queue, which acts as a reliable message buffer between producers and consumers. With support for standard and FIFO queues, SQS ensures secure, scalable, and asynchronous message processing. Use this resource to define queue attributes, configure access policies, and integrate seamlessly with AWS services like Lambda, SNS, and EC2.
///
/// !> AWS will hang indefinitely, leading to a `timeout while waiting` error, when creating or updating an <span pulumi-lang-nodejs="`aws.sqs.Queue`" pulumi-lang-dotnet="`aws.sqs.Queue`" pulumi-lang-go="`sqs.Queue`" pulumi-lang-python="`sqs.Queue`" pulumi-lang-yaml="`aws.sqs.Queue`" pulumi-lang-java="`aws.sqs.Queue`">`aws.sqs.Queue`</span> with an associated <span pulumi-lang-nodejs="`aws.sqs.QueuePolicy`" pulumi-lang-dotnet="`aws.sqs.QueuePolicy`" pulumi-lang-go="`sqs.QueuePolicy`" pulumi-lang-python="`sqs.QueuePolicy`" pulumi-lang-yaml="`aws.sqs.QueuePolicy`" pulumi-lang-java="`aws.sqs.QueuePolicy`">`aws.sqs.QueuePolicy`</span> if `Version = "2012-10-17"` is not explicitly set in the policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "example-queue",
/// delaySeconds: 90,
/// maxMessageSize: 2048,
/// messageRetentionSeconds: 86400,
/// receiveWaitTimeSeconds: 10,
/// redrivePolicy: JSON.stringify({
/// deadLetterTargetArn: queueDeadletter.arn,
/// maxReceiveCount: 4,
/// }),
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="example-queue",
/// delay_seconds=90,
/// max_message_size=2048,
/// message_retention_seconds=86400,
/// receive_wait_time_seconds=10,
/// redrive_policy=json.dumps({
/// "deadLetterTargetArn": queue_deadletter["arn"],
/// "maxReceiveCount": 4,
/// }),
/// tags={
/// "Environment": "production",
/// })
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
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "example-queue",
/// DelaySeconds = 90,
/// MaxMessageSize = 2048,
/// MessageRetentionSeconds = 86400,
/// ReceiveWaitTimeSeconds = 10,
/// RedrivePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["deadLetterTargetArn"] = queueDeadletter.Arn,
/// ["maxReceiveCount"] = 4,
/// }),
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "deadLetterTargetArn": queueDeadletter.Arn,
/// "maxReceiveCount":     4,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:                    pulumi.String("example-queue"),
/// DelaySeconds:            pulumi.Int(90),
/// MaxMessageSize:          pulumi.Int(2048),
/// MessageRetentionSeconds: pulumi.Int(86400),
/// ReceiveWaitTimeSeconds:  pulumi.Int(10),
/// RedrivePolicy:           pulumi.String(json0),
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("example-queue")
/// .delaySeconds(90)
/// .maxMessageSize(2048)
/// .messageRetentionSeconds(86400)
/// .receiveWaitTimeSeconds(10)
/// .redrivePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("deadLetterTargetArn", queueDeadletter.arn()),
/// jsonProperty("maxReceiveCount", 4)
/// )))
/// .tags(Map.of("Environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: example-queue
/// delaySeconds: 90
/// maxMessageSize: 2048
/// messageRetentionSeconds: 86400
/// receiveWaitTimeSeconds: 10
/// redrivePolicy:
/// fn::toJSON:
/// deadLetterTargetArn: ${queueDeadletter.arn}
/// maxReceiveCount: 4
/// tags:
/// Environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## FIFO queue
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "example-queue.fifo",
/// fifoQueue: true,
/// contentBasedDeduplication: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="example-queue.fifo",
/// fifo_queue=True,
/// content_based_deduplication=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "example-queue.fifo",
/// FifoQueue = true,
/// ContentBasedDeduplication = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:                      pulumi.String("example-queue.fifo"),
/// FifoQueue:                 pulumi.Bool(true),
/// ContentBasedDeduplication: pulumi.Bool(true),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("example-queue.fifo")
/// .fifoQueue(true)
/// .contentBasedDeduplication(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: example-queue.fifo
/// fifoQueue: true
/// contentBasedDeduplication: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## High-throughput FIFO queue
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "pulumi-example-queue.fifo",
/// fifoQueue: true,
/// deduplicationScope: "messageGroup",
/// fifoThroughputLimit: "perMessageGroupId",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="pulumi-example-queue.fifo",
/// fifo_queue=True,
/// deduplication_scope="messageGroup",
/// fifo_throughput_limit="perMessageGroupId")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "pulumi-example-queue.fifo",
/// FifoQueue = true,
/// DeduplicationScope = "messageGroup",
/// FifoThroughputLimit = "perMessageGroupId",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:                pulumi.String("pulumi-example-queue.fifo"),
/// FifoQueue:           pulumi.Bool(true),
/// DeduplicationScope:  pulumi.String("messageGroup"),
/// FifoThroughputLimit: pulumi.String("perMessageGroupId"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("pulumi-example-queue.fifo")
/// .fifoQueue(true)
/// .deduplicationScope("messageGroup")
/// .fifoThroughputLimit("perMessageGroupId")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: pulumi-example-queue.fifo
/// fifoQueue: true
/// deduplicationScope: messageGroup
/// fifoThroughputLimit: perMessageGroupId
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Dead-letter queue
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "pulumi-example-queue",
/// redrivePolicy: JSON.stringify({
/// deadLetterTargetArn: queueDeadletter.arn,
/// maxReceiveCount: 4,
/// }),
/// });
/// const exampleQueueDeadletter = new aws.sqs.Queue("example_queue_deadletter", {name: "pulumi-example-deadletter-queue"});
/// const exampleQueueRedriveAllowPolicy = new aws.sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy", {
/// queueUrl: exampleQueueDeadletter.id,
/// redriveAllowPolicy: JSON.stringify({
/// redrivePermission: "byQueue",
/// sourceQueueArns: [exampleQueue.arn],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="pulumi-example-queue",
/// redrive_policy=json.dumps({
/// "deadLetterTargetArn": queue_deadletter["arn"],
/// "maxReceiveCount": 4,
/// }))
/// example_queue_deadletter = aws.sqs.Queue("example_queue_deadletter", name="pulumi-example-deadletter-queue")
/// example_queue_redrive_allow_policy = aws.sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy",
/// queue_url=example_queue_deadletter.id,
/// redrive_allow_policy=json.dumps({
/// "redrivePermission": "byQueue",
/// "sourceQueueArns": [example_queue["arn"]],
/// }))
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
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "pulumi-example-queue",
/// RedrivePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["deadLetterTargetArn"] = queueDeadletter.Arn,
/// ["maxReceiveCount"] = 4,
/// }),
/// });
///
/// var exampleQueueDeadletter = new Aws.Sqs.Queue("example_queue_deadletter", new()
/// {
/// Name = "pulumi-example-deadletter-queue",
/// });
///
/// var exampleQueueRedriveAllowPolicy = new Aws.Sqs.RedriveAllowPolicy("example_queue_redrive_allow_policy", new()
/// {
/// QueueUrl = exampleQueueDeadletter.Id,
/// RedriveAllowPolicyName = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["redrivePermission"] = "byQueue",
/// ["sourceQueueArns"] = new[]
/// {
/// exampleQueue.Arn,
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "deadLetterTargetArn": queueDeadletter.Arn,
/// "maxReceiveCount":     4,
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:          pulumi.String("pulumi-example-queue"),
/// RedrivePolicy: pulumi.String(json0),
/// })
/// if err != nil {
/// return err
/// }
/// exampleQueueDeadletter, err := sqs.NewQueue(ctx, "example_queue_deadletter", &sqs.QueueArgs{
/// Name: pulumi.String("pulumi-example-deadletter-queue"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "redrivePermission": "byQueue",
/// "sourceQueueArns": []interface{}{
/// exampleQueue.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// _, err = sqs.NewRedriveAllowPolicy(ctx, "example_queue_redrive_allow_policy", &sqs.RedriveAllowPolicyArgs{
/// QueueUrl:           exampleQueueDeadletter.ID(),
/// RedriveAllowPolicy: pulumi.String(json1),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("pulumi-example-queue")
/// .redrivePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("deadLetterTargetArn", queueDeadletter.arn()),
/// jsonProperty("maxReceiveCount", 4)
/// )))
/// .build());
///
/// var exampleQueueDeadletter = new Queue("exampleQueueDeadletter", QueueArgs.builder()
/// .name("pulumi-example-deadletter-queue")
/// .build());
///
/// var exampleQueueRedriveAllowPolicy = new RedriveAllowPolicy("exampleQueueRedriveAllowPolicy", RedriveAllowPolicyArgs.builder()
/// .queueUrl(exampleQueueDeadletter.id())
/// .redriveAllowPolicy(serializeJson(
/// jsonObject(
/// jsonProperty("redrivePermission", "byQueue"),
/// jsonProperty("sourceQueueArns", jsonArray(exampleQueue.arn()))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: pulumi-example-queue
/// redrivePolicy:
/// fn::toJSON:
/// deadLetterTargetArn: ${queueDeadletter.arn}
/// maxReceiveCount: 4
/// exampleQueueDeadletter:
/// type: aws:sqs:Queue
/// name: example_queue_deadletter
/// properties:
/// name: pulumi-example-deadletter-queue
/// exampleQueueRedriveAllowPolicy:
/// type: aws:sqs:RedriveAllowPolicy
/// name: example_queue_redrive_allow_policy
/// properties:
/// queueUrl: ${exampleQueueDeadletter.id}
/// redriveAllowPolicy:
/// fn::toJSON:
/// redrivePermission: byQueue
/// sourceQueueArns:
/// - ${exampleQueue.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Server-side encryption (SSE)
///
/// Using [SSE-SQS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "pulumi-example-queue",
/// sqsManagedSseEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="pulumi-example-queue",
/// sqs_managed_sse_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "pulumi-example-queue",
/// SqsManagedSseEnabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:                 pulumi.String("pulumi-example-queue"),
/// SqsManagedSseEnabled: pulumi.Bool(true),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("pulumi-example-queue")
/// .sqsManagedSseEnabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: pulumi-example-queue
/// sqsManagedSseEnabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Using [SSE-KMS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html):
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const queue = new aws.sqs.Queue("queue", {
/// name: "example-queue",
/// kmsMasterKeyId: "alias/aws/sqs",
/// kmsDataKeyReusePeriodSeconds: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// queue = aws.sqs.Queue("queue",
/// name="example-queue",
/// kms_master_key_id="alias/aws/sqs",
/// kms_data_key_reuse_period_seconds=300)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var queue = new Aws.Sqs.Queue("queue", new()
/// {
/// Name = "example-queue",
/// KmsMasterKeyId = "alias/aws/sqs",
/// KmsDataKeyReusePeriodSeconds = 300,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sqs.NewQueue(ctx, "queue", &sqs.QueueArgs{
/// Name:                         pulumi.String("example-queue"),
/// KmsMasterKeyId:               pulumi.String("alias/aws/sqs"),
/// KmsDataKeyReusePeriodSeconds: pulumi.Int(300),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var queue = new Queue("queue", QueueArgs.builder()
/// .name("example-queue")
/// .kmsMasterKeyId("alias/aws/sqs")
/// .kmsDataKeyReusePeriodSeconds(300)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// queue:
/// type: aws:sqs:Queue
/// properties:
/// name: example-queue
/// kmsMasterKeyId: alias/aws/sqs
/// kmsDataKeyReusePeriodSeconds: 300
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span> (String) URL of the SQS queue.
///
///
/// Using `pulumi import`, import SQS Queues using the queue <span pulumi-lang-nodejs="`url`" pulumi-lang-dotnet="`Url`" pulumi-lang-go="`url`" pulumi-lang-python="`url`" pulumi-lang-yaml="`url`" pulumi-lang-java="`url`">`url`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/queue:Queue example https://queue.amazonaws.com/80398EXAMPLE/MyQueue
/// ```
class Queue3 extends CustomResource {
  /// ARN of the SQS queue.
  late final Output<String> arn;

  /// Enables content-based deduplication for FIFO queues. For more information, see the [related documentation](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing).
  late final Output<bool?> contentBasedDeduplication;

  /// Specifies whether message deduplication occurs at the message group or queue level. Valid values are `messageGroup` and <span pulumi-lang-nodejs="`queue`" pulumi-lang-dotnet="`Queue`" pulumi-lang-go="`queue`" pulumi-lang-python="`queue`" pulumi-lang-yaml="`queue`" pulumi-lang-java="`queue`">`queue`</span> (default).
  late final Output<String> deduplicationScope;

  /// Time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds.
  late final Output<int?> delaySeconds;

  /// Boolean designating a FIFO queue. If not set, it defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> making it standard.
  late final Output<bool?> fifoQueue;

  /// Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are `perQueue` (default) and `perMessageGroupId`.
  late final Output<String> fifoThroughputLimit;

  /// Length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes).
  late final Output<int> kmsDataKeyReusePeriodSeconds;

  /// ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see [Key Terms](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms).
  late final Output<String?> kmsMasterKeyId;

  /// Limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 1048576 bytes (1024 KiB). The default for this attribute is 262144 (256 KiB).
  late final Output<int?> maxMessageSize;

  /// Number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days).
  late final Output<int?> messageRetentionSeconds;

  /// Name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the `.fifo` suffix. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents see the AWS IAM Policy Document Guide. The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the <span pulumi-lang-nodejs="`aws.sqs.QueuePolicy`" pulumi-lang-dotnet="`aws.sqs.QueuePolicy`" pulumi-lang-go="`sqs.QueuePolicy`" pulumi-lang-python="`sqs.QueuePolicy`" pulumi-lang-yaml="`aws.sqs.QueuePolicy`" pulumi-lang-java="`aws.sqs.QueuePolicy`">`aws.sqs.QueuePolicy`</span> resource instead.
  late final Output<String> policy;

  /// Time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately.
  late final Output<int?> receiveWaitTimeSeconds;

  /// JSON policy to set up the Dead Letter Queue redrive permission, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the <span pulumi-lang-nodejs="`aws.sqs.RedriveAllowPolicy`" pulumi-lang-dotnet="`aws.sqs.RedriveAllowPolicy`" pulumi-lang-go="`sqs.RedriveAllowPolicy`" pulumi-lang-python="`sqs.RedriveAllowPolicy`" pulumi-lang-yaml="`aws.sqs.RedriveAllowPolicy`" pulumi-lang-java="`aws.sqs.RedriveAllowPolicy`">`aws.sqs.RedriveAllowPolicy`</span> resource instead.
  late final Output<String> redriveAllowPolicy;

  /// JSON policy to set up the Dead Letter Queue, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/SQSDeadLetterQueue.html). The provider will only perform drift detection of its value when present in a configuration. It is preferred to use the <span pulumi-lang-nodejs="`aws.sqs.RedrivePolicy`" pulumi-lang-dotnet="`aws.sqs.RedrivePolicy`" pulumi-lang-go="`sqs.RedrivePolicy`" pulumi-lang-python="`sqs.RedrivePolicy`" pulumi-lang-yaml="`aws.sqs.RedrivePolicy`" pulumi-lang-java="`aws.sqs.RedrivePolicy`">`aws.sqs.RedrivePolicy`</span> resource instead. **Note:** when specifying `maxReceiveCount`, you must specify it as an integer (<span pulumi-lang-nodejs="`5`" pulumi-lang-dotnet="`5`" pulumi-lang-go="`5`" pulumi-lang-python="`5`" pulumi-lang-yaml="`5`" pulumi-lang-java="`5`">`5`</span>), and not a string (`"5"`).
  late final Output<String> redrivePolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See [Encryption at rest](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html). The provider will only perform drift detection of its value when present in a configuration.
  late final Output<bool> sqsManagedSseEnabled;

  /// Map of tags to assign to the queue. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Same as <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>: The URL for the created Amazon SQS queue.
  late final Output<String> url;

  /// Visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see [AWS docs](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AboutVT.html).
  late final Output<int?> visibilityTimeoutSeconds;

  Queue3(
    String name, {
    QueueArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sqs/queue:Queue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.contentBasedDeduplication = Output.createUnknown<bool?>();
    this.deduplicationScope = Output.createUnknown<String>();
    this.delaySeconds = Output.createUnknown<int?>();
    this.fifoQueue = Output.createUnknown<bool?>();
    this.fifoThroughputLimit = Output.createUnknown<String>();
    this.kmsDataKeyReusePeriodSeconds = Output.createUnknown<int>();
    this.kmsMasterKeyId = Output.createUnknown<String?>();
    this.maxMessageSize = Output.createUnknown<int?>();
    this.messageRetentionSeconds = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.policy = Output.createUnknown<String>();
    this.receiveWaitTimeSeconds = Output.createUnknown<int?>();
    this.redriveAllowPolicy = Output.createUnknown<String>();
    this.redrivePolicy = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sqsManagedSseEnabled = Output.createUnknown<bool>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.url = Output.createUnknown<String>();
    this.visibilityTimeoutSeconds = Output.createUnknown<int?>();
  }
}
