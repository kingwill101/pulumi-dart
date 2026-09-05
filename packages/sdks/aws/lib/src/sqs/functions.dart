import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_args.dart';
import 'get_queue_result.dart';
import 'get_queues_args.dart';
import 'get_queues_result.dart';

/// Use this data source to get the ARN and URL of queue in AWS Simple Queue Service (SQS).
/// By using this data source, you can reference SQS queues without having to hardcode
/// the ARNs as input.
///
/// &gt; **NOTE:** To use this data source, you must have the `sqs:GetQueueAttributes` and `sqs:GetQueueURL` permissions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sqs.getQueue({
///     name: "queue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sqs.get_queue(name="queue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Sqs.GetQueue.Invoke(new()
///     {
///         Name = "queue",
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
/// 		_, err := sqs.LookupQueue(ctx, &sqs.LookupQueueArgs{
/// 			Name: "queue",
/// 		}, nil)
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
/// data "aws_sqs_getqueue" "example" {
///   name = "queue"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sqs.SqsFunctions;
/// import com.pulumi.aws.sqs.inputs.GetQueueArgs;
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
///         final var example = SqsFunctions.getQueue(GetQueueArgs.builder()
///             .name("queue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sqs:getQueue
///       arguments:
///         name: queue
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sqs_get_queue_get_queue_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}

pulumi.Output<GetQueueResult> getQueueOutput(
  GetQueueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:sqs/getQueue:getQueue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueueResult.fromMap);
}

/// Data source for managing an AWS SQS (Simple Queue) Queues.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.sqs.getQueues({
///     queueNamePrefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sqs.get_queues(queue_name_prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Sqs.GetQueues.Invoke(new()
///     {
///         QueueNamePrefix = "example",
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
/// 		_, err := sqs.GetQueues(ctx, &sqs.GetQueuesArgs{
/// 			QueueNamePrefix: pulumi.StringRef("example"),
/// 		}, nil)
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
/// data "aws_sqs_getqueues" "example" {
///   queue_name_prefix = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sqs.SqsFunctions;
/// import com.pulumi.aws.sqs.inputs.GetQueuesArgs;
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
///         final var example = SqsFunctions.getQueues(GetQueuesArgs.builder()
///             .queueNamePrefix("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:sqs:getQueues
///       arguments:
///         queueNamePrefix: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_sqs_get_queues_get_queues_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueuesResult> getQueues(
  GetQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueues:getQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuesResult.fromMap(result);
}

pulumi.Output<GetQueuesResult> getQueuesOutput(
  GetQueuesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:sqs/getQueues:getQueues',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetQueuesResult.fromMap);
}
