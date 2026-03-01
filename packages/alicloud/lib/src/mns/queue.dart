import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';

/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const queue = new alicloud.mns.Queue("queue", {
///     name: "tf-example-mnsqueue",
///     delaySeconds: 0,
///     maximumMessageSize: 65536,
///     messageRetentionPeriod: 345600,
///     visibilityTimeout: 30,
///     pollingWaitSeconds: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// queue = alicloud.mns.Queue("queue",
///     name="tf-example-mnsqueue",
///     delay_seconds=0,
///     maximum_message_size=65536,
///     message_retention_period=345600,
///     visibility_timeout=30,
///     polling_wait_seconds=0)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var queue = new AliCloud.Mns.Queue("queue", new()
///     {
///         Name = "tf-example-mnsqueue",
///         DelaySeconds = 0,
///         MaximumMessageSize = 65536,
///         MessageRetentionPeriod = 345600,
///         VisibilityTimeout = 30,
///         PollingWaitSeconds = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mns.NewQueue(ctx, "queue", &mns.QueueArgs{
/// 			Name:                   pulumi.String("tf-example-mnsqueue"),
/// 			DelaySeconds:           pulumi.Int(0),
/// 			MaximumMessageSize:     pulumi.Int(65536),
/// 			MessageRetentionPeriod: pulumi.Int(345600),
/// 			VisibilityTimeout:      pulumi.Int(30),
/// 			PollingWaitSeconds:     pulumi.Int(0),
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
/// import com.pulumi.alicloud.mns.Queue;
/// import com.pulumi.alicloud.mns.QueueArgs;
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
///             .name("tf-example-mnsqueue")
///             .delaySeconds(0)
///             .maximumMessageSize(65536)
///             .messageRetentionPeriod(345600)
///             .visibilityTimeout(30)
///             .pollingWaitSeconds(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   queue:
///     type: alicloud:mns:Queue
///     properties:
///       name: tf-example-mnsqueue
///       delaySeconds: 0
///       maximumMessageSize: 65536
///       messageRetentionPeriod: 345600
///       visibilityTimeout: 30
///       pollingWaitSeconds: 0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MNS QUEUE can be imported using the id or name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mns/queue:Queue queue queuename
/// ```
class Queue extends pulumi.CustomResource {
  /// This attribute defines the length of time, in seconds, after which every message sent to the queue is dequeued. Valid value range: 0-604800 seconds, i.e., 0 to 7 days. Default value to 0.
  late final pulumi.Output<int?> delaySeconds;
  /// This indicates the maximum length, in bytes, of any message body sent to the queue. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  late final pulumi.Output<int?> maximumMessageSize;
  /// Messages are deleted from the queue after a specified length of time, whether they have been activated or not. This attribute defines the viability period, in seconds, for every message in the queue. Valid value range: 60-604800 seconds, i.e., 1 minutes to 7 days. Default value to 345600.
  late final pulumi.Output<int?> messageRetentionPeriod;
  /// Two queues on a single account in the same region cannot have the same name. A queue name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters .
  late final pulumi.Output<String> name;
  /// Long polling is measured in seconds. When this attribute is set to 0, long polling is disabled. When it is not set to 0, long polling is enabled and message dequeue requests will be processed only when valid messages are received or when long polling times out. Valid value range: 0-30 seconds. Default value to 0.
  late final pulumi.Output<int?> pollingWaitSeconds;
  /// The VisibilityTimeout attribute of the queue. A dequeued messages will change from active (visible) status to inactive (invisible) status, and this attribute defines the length of time, in seconds, that messages remain invisible. Messages return to active status after the set period. Valid value range: 1-43200 seconds, i.e., 1 seconds to 12 hours. Default value to 30.
  late final pulumi.Output<int?> visibilityTimeout;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_mns_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mns/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.delaySeconds = registerOutput<int?>('delaySeconds');
    this.maximumMessageSize = registerOutput<int?>('maximumMessageSize');
    this.messageRetentionPeriod = registerOutput<int?>('messageRetentionPeriod');
    this.name = registerOutput<String>('name');
    this.pollingWaitSeconds = registerOutput<int?>('pollingWaitSeconds');
    this.visibilityTimeout = registerOutput<int?>('visibilityTimeout');
  }
}
