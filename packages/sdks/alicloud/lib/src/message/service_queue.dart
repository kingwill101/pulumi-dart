import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_queue_args.dart';
import 'service_queue_dlq_policy.dart';
import 'service_queue_state.dart';

/// Provides a Message Service Queue resource.
///
///
///
/// For information about Message Service Queue and how to use it, see [What is Queue](https://www.alibabacloud.com/help/en/message-service/latest/createqueue).
///
/// &gt; **NOTE:** Available since v1.188.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.message.ServiceQueue("default", {
///     queueName: name,
///     delaySeconds: 2,
///     pollingWaitSeconds: 2,
///     messageRetentionPeriod: 566,
///     maximumMessageSize: 1126,
///     visibilityTimeout: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.message.ServiceQueue("default",
///     queue_name=name,
///     delay_seconds=2,
///     polling_wait_seconds=2,
///     message_retention_period=566,
///     maximum_message_size=1126,
///     visibility_timeout=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Message.ServiceQueue("default", new()
///     {
///         QueueName = name,
///         DelaySeconds = 2,
///         PollingWaitSeconds = 2,
///         MessageRetentionPeriod = 566,
///         MaximumMessageSize = 1126,
///         VisibilityTimeout = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/message"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := message.NewServiceQueue(ctx, "default", &message.ServiceQueueArgs{
/// 			QueueName:              pulumi.String(name),
/// 			DelaySeconds:           pulumi.Int(2),
/// 			PollingWaitSeconds:     pulumi.Int(2),
/// 			MessageRetentionPeriod: pulumi.Int(566),
/// 			MaximumMessageSize:     pulumi.Int(1126),
/// 			VisibilityTimeout:      pulumi.Int(30),
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
/// import com.pulumi.alicloud.message.ServiceQueue;
/// import com.pulumi.alicloud.message.ServiceQueueArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new ServiceQueue("default", ServiceQueueArgs.builder()
///             .queueName(name)
///             .delaySeconds(2)
///             .pollingWaitSeconds(2)
///             .messageRetentionPeriod(566)
///             .maximumMessageSize(1126)
///             .visibilityTimeout(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:message:ServiceQueue
///     properties:
///       queueName: ${name}
///       delaySeconds: '2'
///       pollingWaitSeconds: '2'
///       messageRetentionPeriod: '566'
///       maximumMessageSize: '1126'
///       visibilityTimeout: '30'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Message Service Queue can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceQueue:ServiceQueue example <id>
/// ```
class ServiceQueue extends pulumi.CustomResource {
  /// (Available since v1.223.2) The time when the queue was created.
  late final pulumi.Output<int> createTime;

  /// The period after which all messages sent to the queue are consumed. Default value: `0`. Valid values: `0` to `604800`. Unit: seconds.
  late final pulumi.Output<int> delaySeconds;

  /// The dead-letter queue policy. See `dlq_policy` below.
  late final pulumi.Output<ServiceQueueDlqPolicy> dlqPolicy;

  /// Specifies whether to enable the logging feature. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> loggingEnabled;

  /// The maximum length of the message that is sent to the queue. Valid values: `1024` to `65536`. Unit: bytes. Default value: `65536`.
  late final pulumi.Output<int> maximumMessageSize;

  /// The maximum duration for which a message is retained in the queue. After the specified retention period ends, the message is deleted regardless of whether the message is received. Valid values: `60` to `604800`. Unit: seconds. Default value: `345600`.
  late final pulumi.Output<int> messageRetentionPeriod;

  /// The maximum duration for which long polling requests are held after the ReceiveMessage operation is called. Valid values: `0` to `30`. Unit: seconds. Default value: `0`.
  late final pulumi.Output<int> pollingWaitSeconds;

  /// The name of the queue.
  late final pulumi.Output<String> queueName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The duration for which a message stays in the Inactive state after the message is received from the queue. Valid values: `1` to `43200`. Unit: seconds. Default value: `30`.
  late final pulumi.Output<int> visibilityTimeout;

  /// Creates a new [ServiceQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceQueue]. {@macro pulumi_message_service_queue_service_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceQueue(
    String name, {
    ServiceQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceQueue:ServiceQueue',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    delaySeconds = registerOutput<int>('delaySeconds');
    dlqPolicy = registerOutput<ServiceQueueDlqPolicy>('dlqPolicy');
    loggingEnabled = registerOutput<bool?>('loggingEnabled');
    maximumMessageSize = registerOutput<int>('maximumMessageSize');
    messageRetentionPeriod = registerOutput<int>('messageRetentionPeriod');
    pollingWaitSeconds = registerOutput<int>('pollingWaitSeconds');
    queueName = registerOutput<String>('queueName');
    tags = registerOutput<Map<String, String>?>('tags');
    visibilityTimeout = registerOutput<int>('visibilityTimeout');
  }

  /// Gets an existing [ServiceQueue] resource's state with the given [name] and [id].
  static ServiceQueue get(
    String name,
    pulumi.Input<String> id, {
    ServiceQueueState? state,
  }) {
    return ServiceQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceQueue:ServiceQueue',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    delaySeconds = registerOutput<int>('delaySeconds');
    dlqPolicy = registerOutput<ServiceQueueDlqPolicy>('dlqPolicy');
    loggingEnabled = registerOutput<bool?>('loggingEnabled');
    maximumMessageSize = registerOutput<int>('maximumMessageSize');
    messageRetentionPeriod = registerOutput<int>('messageRetentionPeriod');
    pollingWaitSeconds = registerOutput<int>('pollingWaitSeconds');
    queueName = registerOutput<String>('queueName');
    tags = registerOutput<Map<String, String>?>('tags');
    visibilityTimeout = registerOutput<int>('visibilityTimeout');
  }
}
