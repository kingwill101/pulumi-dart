import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_args.dart';
import 'queue_outbound_caller_config.dart';
import 'queue_state.dart';

/// Provides an Amazon Connect Queue resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Queue("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example Name",
///     description: "Example Description",
///     hoursOfOperationId: "12345678-1234-1234-1234-123456789012",
///     tags: {
///         Name: "Example Queue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Queue("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example Name",
///     description="Example Description",
///     hours_of_operation_id="12345678-1234-1234-1234-123456789012",
///     tags={
///         "Name": "Example Queue",
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
///     var test = new Aws.Connect.Queue("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example Name",
///         Description = "Example Description",
///         HoursOfOperationId = "12345678-1234-1234-1234-123456789012",
///         Tags =
///         {
///             { "Name", "Example Queue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewQueue(ctx, "test", &connect.QueueArgs{
/// 			InstanceId:         pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:               pulumi.String("Example Name"),
/// 			Description:        pulumi.String("Example Description"),
/// 			HoursOfOperationId: pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Queue"),
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
/// import com.pulumi.aws.connect.Queue;
/// import com.pulumi.aws.connect.QueueArgs;
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
///         var test = new Queue("test", QueueArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example Name")
///             .description("Example Description")
///             .hoursOfOperationId("12345678-1234-1234-1234-123456789012")
///             .tags(Map.of("Name", "Example Queue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Queue
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example Name
///       description: Example Description
///       hoursOfOperationId: 12345678-1234-1234-1234-123456789012
///       tags:
///         Name: Example Queue
/// ```
///
///
/// ### With Quick Connect IDs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Queue("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example Name",
///     description: "Example Description",
///     hoursOfOperationId: "12345678-1234-1234-1234-123456789012",
///     quickConnectIds: ["12345678-abcd-1234-abcd-123456789012"],
///     tags: {
///         Name: "Example Queue with Quick Connect IDs",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Queue("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example Name",
///     description="Example Description",
///     hours_of_operation_id="12345678-1234-1234-1234-123456789012",
///     quick_connect_ids=["12345678-abcd-1234-abcd-123456789012"],
///     tags={
///         "Name": "Example Queue with Quick Connect IDs",
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
///     var test = new Aws.Connect.Queue("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example Name",
///         Description = "Example Description",
///         HoursOfOperationId = "12345678-1234-1234-1234-123456789012",
///         QuickConnectIds = new[]
///         {
///             "12345678-abcd-1234-abcd-123456789012",
///         },
///         Tags =
///         {
///             { "Name", "Example Queue with Quick Connect IDs" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewQueue(ctx, "test", &connect.QueueArgs{
/// 			InstanceId:         pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:               pulumi.String("Example Name"),
/// 			Description:        pulumi.String("Example Description"),
/// 			HoursOfOperationId: pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 			QuickConnectIds: pulumi.StringArray{
/// 				pulumi.String("12345678-abcd-1234-abcd-123456789012"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Queue with Quick Connect IDs"),
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
/// import com.pulumi.aws.connect.Queue;
/// import com.pulumi.aws.connect.QueueArgs;
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
///         var test = new Queue("test", QueueArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example Name")
///             .description("Example Description")
///             .hoursOfOperationId("12345678-1234-1234-1234-123456789012")
///             .quickConnectIds("12345678-abcd-1234-abcd-123456789012")
///             .tags(Map.of("Name", "Example Queue with Quick Connect IDs"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Queue
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example Name
///       description: Example Description
///       hoursOfOperationId: 12345678-1234-1234-1234-123456789012
///       quickConnectIds:
///         - 12345678-abcd-1234-abcd-123456789012
///       tags:
///         Name: Example Queue with Quick Connect IDs
/// ```
///
///
/// ### With Outbound Caller Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.connect.Queue("test", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "Example Name",
///     description: "Example Description",
///     hoursOfOperationId: "12345678-1234-1234-1234-123456789012",
///     outboundCallerConfig: {
///         outboundCallerIdName: "example",
///         outboundCallerIdNumberId: "12345678-abcd-1234-abcd-123456789012",
///         outboundFlowId: "87654321-defg-1234-defg-987654321234",
///     },
///     tags: {
///         Name: "Example Queue with Outbound Caller Config",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.connect.Queue("test",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="Example Name",
///     description="Example Description",
///     hours_of_operation_id="12345678-1234-1234-1234-123456789012",
///     outbound_caller_config={
///         "outbound_caller_id_name": "example",
///         "outbound_caller_id_number_id": "12345678-abcd-1234-abcd-123456789012",
///         "outbound_flow_id": "87654321-defg-1234-defg-987654321234",
///     },
///     tags={
///         "Name": "Example Queue with Outbound Caller Config",
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
///     var test = new Aws.Connect.Queue("test", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "Example Name",
///         Description = "Example Description",
///         HoursOfOperationId = "12345678-1234-1234-1234-123456789012",
///         OutboundCallerConfig = new Aws.Connect.Inputs.QueueOutboundCallerConfigArgs
///         {
///             OutboundCallerIdName = "example",
///             OutboundCallerIdNumberId = "12345678-abcd-1234-abcd-123456789012",
///             OutboundFlowId = "87654321-defg-1234-defg-987654321234",
///         },
///         Tags =
///         {
///             { "Name", "Example Queue with Outbound Caller Config" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connect.NewQueue(ctx, "test", &connect.QueueArgs{
/// 			InstanceId:         pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:               pulumi.String("Example Name"),
/// 			Description:        pulumi.String("Example Description"),
/// 			HoursOfOperationId: pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 			OutboundCallerConfig: &connect.QueueOutboundCallerConfigArgs{
/// 				OutboundCallerIdName:     pulumi.String("example"),
/// 				OutboundCallerIdNumberId: pulumi.String("12345678-abcd-1234-abcd-123456789012"),
/// 				OutboundFlowId:           pulumi.String("87654321-defg-1234-defg-987654321234"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Queue with Outbound Caller Config"),
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
/// import com.pulumi.aws.connect.Queue;
/// import com.pulumi.aws.connect.QueueArgs;
/// import com.pulumi.aws.connect.inputs.QueueOutboundCallerConfigArgs;
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
///         var test = new Queue("test", QueueArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("Example Name")
///             .description("Example Description")
///             .hoursOfOperationId("12345678-1234-1234-1234-123456789012")
///             .outboundCallerConfig(QueueOutboundCallerConfigArgs.builder()
///                 .outboundCallerIdName("example")
///                 .outboundCallerIdNumberId("12345678-abcd-1234-abcd-123456789012")
///                 .outboundFlowId("87654321-defg-1234-defg-987654321234")
///                 .build())
///             .tags(Map.of("Name", "Example Queue with Outbound Caller Config"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:connect:Queue
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: Example Name
///       description: Example Description
///       hoursOfOperationId: 12345678-1234-1234-1234-123456789012
///       outboundCallerConfig:
///         outboundCallerIdName: example
///         outboundCallerIdNumberId: 12345678-abcd-1234-abcd-123456789012
///         outboundFlowId: 87654321-defg-1234-defg-987654321234
///       tags:
///         Name: Example Queue with Outbound Caller Config
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Queues using the `instance_id` and `queue_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/queue:Queue example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class Queue extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Queue.
  late final pulumi.Output<String> arn;
  /// Specifies the description of the Queue.
  late final pulumi.Output<String?> description;
  /// Specifies the identifier of the Hours of Operation.
  late final pulumi.Output<String> hoursOfOperationId;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies the maximum number of contacts that can be in the queue before it is considered full. Minimum value of 0.
  late final pulumi.Output<int?> maxContacts;
  /// Specifies the name of the Queue.
  late final pulumi.Output<String> name;
  /// A block that defines the outbound caller ID name, number, and outbound whisper flow. The Outbound Caller Config block is documented below.
  late final pulumi.Output<QueueOutboundCallerConfig?> outboundCallerConfig;
  /// The identifier for the Queue.
  late final pulumi.Output<String> queueId;
  /// Specifies a list of quick connects ids that determine the quick connects available to agents who are working the queue.
  late final pulumi.Output<List<String>?> quickConnectIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the description of the Queue. Valid values are `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> status;
  /// Tags to apply to the Queue. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Queue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Queue]. {@macro pulumi_connect_queue_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Queue(
    String name, {
    QueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/queue:Queue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hoursOfOperationId = registerOutput<String>('hoursOfOperationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxContacts = registerOutput<int?>('maxContacts');
    this.name = registerOutput<String>('name');
    this.outboundCallerConfig = registerOutput<QueueOutboundCallerConfig?>('outboundCallerConfig');
    this.queueId = registerOutput<String>('queueId');
    this.quickConnectIds = registerOutput<List<String>?>('quickConnectIds');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Queue] resource's state with the given [name] and [id].
  static Queue get(
    String name,
    pulumi.Input<String> id, {
    QueueState? state,
  }) {
    return Queue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Queue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/queue:Queue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hoursOfOperationId = registerOutput<String>('hoursOfOperationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxContacts = registerOutput<int?>('maxContacts');
    this.name = registerOutput<String>('name');
    this.outboundCallerConfig = registerOutput<QueueOutboundCallerConfig?>('outboundCallerConfig');
    this.queueId = registerOutput<String>('queueId');
    this.quickConnectIds = registerOutput<List<String>?>('quickConnectIds');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
