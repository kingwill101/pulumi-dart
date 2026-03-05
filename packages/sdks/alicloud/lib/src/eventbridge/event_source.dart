import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_args.dart';
import 'event_source_state.dart';

/// Provides a Event Bridge Event Source resource.
///
/// For information about Event Bridge Event Source and how to use it, see [What is Event Source](https://www.alibabacloud.com/help/en/eventbridge/latest/api-eventbridge-2020-04-01-createeventsource).
///
/// &gt; **NOTE:** Available since v1.130.0.
///
/// &gt; **NOTE:** Deprecated since v1.269.0.
///
/// &gt; **DEPRECATED:** This resource has been deprecated from version `1.269.0`. Please use new resource alicloud_event_bridge_event_source_v2.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultQueue = new alicloud.mns.Queue("default", {name: `${name}-${_default.result}`});
/// const defaultEventBus = new alicloud.eventbridge.EventBus("default", {eventBusName: `${name}-${_default.result}`});
/// const defaultEventSource = new alicloud.eventbridge.EventSource("default", {
///     eventBusName: defaultEventBus.eventBusName,
///     eventSourceName: `${name}-${_default.result}`,
///     description: name,
///     linkedExternalSource: true,
///     externalSourceType: "MNS",
///     externalSourceConfig: {
///         QueueName: defaultQueue.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_queue = alicloud.mns.Queue("default", name=f"{name}-{default['result']}")
/// default_event_bus = alicloud.eventbridge.EventBus("default", event_bus_name=f"{name}-{default['result']}")
/// default_event_source = alicloud.eventbridge.EventSource("default",
///     event_bus_name=default_event_bus.event_bus_name,
///     event_source_name=f"{name}-{default['result']}",
///     description=name,
///     linked_external_source=True,
///     external_source_type="MNS",
///     external_source_config={
///         "QueueName": default_queue.name,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultQueue = new AliCloud.Mns.Queue("default", new()
///     {
///         Name = $"{name}-{@default.Result}",
///     });
///
///     var defaultEventBus = new AliCloud.EventBridge.EventBus("default", new()
///     {
///         EventBusName = $"{name}-{@default.Result}",
///     });
///
///     var defaultEventSource = new AliCloud.EventBridge.EventSource("default", new()
///     {
///         EventBusName = defaultEventBus.EventBusName,
///         EventSourceName = $"{name}-{@default.Result}",
///         Description = name,
///         LinkedExternalSource = true,
///         ExternalSourceType = "MNS",
///         ExternalSourceConfig =
///         {
///             { "QueueName", defaultQueue.Name },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQueue, err := mns.NewQueue(ctx, "default", &mns.QueueArgs{
/// 			Name: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEventBus, err := eventbridge.NewEventBus(ctx, "default", &eventbridge.EventBusArgs{
/// 			EventBusName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventbridge.NewEventSource(ctx, "default", &eventbridge.EventSourceArgs{
/// 			EventBusName:         defaultEventBus.EventBusName,
/// 			EventSourceName:      pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description:          pulumi.String(name),
/// 			LinkedExternalSource: pulumi.Bool(true),
/// 			ExternalSourceType:   pulumi.String("MNS"),
/// 			ExternalSourceConfig: pulumi.StringMap{
/// 				"QueueName": defaultQueue.Name,
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.mns.Queue;
/// import com.pulumi.alicloud.mns.QueueArgs;
/// import com.pulumi.alicloud.eventbridge.EventBus;
/// import com.pulumi.alicloud.eventbridge.EventBusArgs;
/// import com.pulumi.alicloud.eventbridge.EventSource;
/// import com.pulumi.alicloud.eventbridge.EventSourceArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultQueue = new Queue("defaultQueue", QueueArgs.builder()
///             .name(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultEventBus = new EventBus("defaultEventBus", EventBusArgs.builder()
///             .eventBusName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultEventSource = new EventSource("defaultEventSource", EventSourceArgs.builder()
///             .eventBusName(defaultEventBus.eventBusName())
///             .eventSourceName(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .linkedExternalSource(true)
///             .externalSourceType("MNS")
///             .externalSourceConfig(Map.of("QueueName", defaultQueue.name()))
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultQueue:
///     type: alicloud:mns:Queue
///     name: default
///     properties:
///       name: ${name}-${default.result}
///   defaultEventBus:
///     type: alicloud:eventbridge:EventBus
///     name: default
///     properties:
///       eventBusName: ${name}-${default.result}
///   defaultEventSource:
///     type: alicloud:eventbridge:EventSource
///     name: default
///     properties:
///       eventBusName: ${defaultEventBus.eventBusName}
///       eventSourceName: ${name}-${default.result}
///       description: ${name}
///       linkedExternalSource: true
///       externalSourceType: MNS
///       externalSourceConfig:
///         QueueName: ${defaultQueue.name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Event Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/eventSource:EventSource example <event_source_name>
/// ```
class EventSource extends pulumi.CustomResource {
  /// The description of the event source.
  late final pulumi.Output<String?> description;
  /// The name of the event bus to which the event source is attached.
  late final pulumi.Output<String> eventBusName;
  /// The name of the event source.
  late final pulumi.Output<String> eventSourceName;
  /// The configuration of the external data source.
  /// When `external_source_type` is `RabbitMQ`, The following attributes are supported:
  /// `RegionId` - The region ID of RabbitMQ.
  /// `InstanceId` - The instance ID of RabbitMQ.
  /// `VirtualHostName` - The virtual host name of RabbitMQ.
  /// `QueueName` - The queue name of RabbitMQ.
  /// When `external_source_type` is `RabbitMQ`, The following attributes are supported:
  /// `RegionId` - The region ID of RabbitMQ.
  /// `InstanceId` - The instance ID of RabbitMQ.
  /// `Topic` - The topic of RabbitMQ.
  /// `Offset` -  The offset of RabbitMQ, valid values: `CONSUME_FROM_FIRST_OFFSET`, `CONSUME_FROM_LAST_OFFSET` and `CONSUME_FROM_TIMESTAMP`.
  /// `GroupID` - The group ID of consumer.
  /// When `external_source_type` is `MNS`, The following attributes are supported:
  /// `QueueName` - The queue name of MNS.
  late final pulumi.Output<Map<String, String>?> externalSourceConfig;
  /// The type of the external data source. Valid values: `RabbitMQ`, `RocketMQ` and `MNS`.
  late final pulumi.Output<String?> externalSourceType;
  /// Specifies whether to connect to an external data source. Default value: `false`.
  late final pulumi.Output<bool?> linkedExternalSource;

  /// Creates a new [EventSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSource]. {@macro pulumi_eventbridge_event_source_event_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSource(
    String name, {
    EventSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/eventSource:EventSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String>('eventBusName');
    eventSourceName = registerOutput<String>('eventSourceName');
    externalSourceConfig = registerOutput<Map<String, String>?>('externalSourceConfig');
    externalSourceType = registerOutput<String?>('externalSourceType');
    linkedExternalSource = registerOutput<bool?>('linkedExternalSource');
  }

  /// Gets an existing [EventSource] resource's state with the given [name] and [id].
  static EventSource get(
    String name,
    pulumi.Input<String> id, {
    EventSourceState? state,
  }) {
    return EventSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/eventSource:EventSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String>('eventBusName');
    eventSourceName = registerOutput<String>('eventSourceName');
    externalSourceConfig = registerOutput<Map<String, String>?>('externalSourceConfig');
    externalSourceType = registerOutput<String?>('externalSourceType');
    linkedExternalSource = registerOutput<bool?>('linkedExternalSource');
  }
}
