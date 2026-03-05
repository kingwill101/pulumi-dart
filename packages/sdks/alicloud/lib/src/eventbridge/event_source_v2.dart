import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_v2_args.dart';
import 'event_source_v2_source_http_event_parameters.dart';
import 'event_source_v2_source_kafka_parameters.dart';
import 'event_source_v2_source_mns_parameters.dart';
import 'event_source_v2_source_oss_event_parameters.dart';
import 'event_source_v2_source_rabbit_mq_parameters.dart';
import 'event_source_v2_source_rocketmq_parameters.dart';
import 'event_source_v2_source_scheduled_event_parameters.dart';
import 'event_source_v2_source_sls_parameters.dart';
import 'event_source_v2_state.dart';

/// Provides a Event Bridge Event Source V2 resource.
///
///
///
/// For information about Event Bridge Event Source V2 and how to use it, see [What is Event Source V2](https://www.alibabacloud.com/help/en/eventbridge/latest/api-eventbridge-2020-04-01-createeventsource).
///
/// &gt; **NOTE:** Available since v1.269.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultEventBus = new alicloud.eventbridge.EventBus("default", {eventBusName: `${name}-${_default.result}`});
/// const defaultEventSourceV2 = new alicloud.eventbridge.EventSourceV2("default", {
///     eventBusName: defaultEventBus.eventBusName,
///     eventSourceName: `${name}-${_default.result}`,
///     description: name,
///     linkedExternalSource: true,
///     sourceHttpEventParameters: {
///         type: "HTTP",
///         securityConfig: "referer",
///         methods: [
///             "GET",
///             "POST",
///             "DELETE",
///         ],
///         referers: [
///             "www.aliyun.com",
///             "www.alicloud.com",
///             "www.taobao.com",
///         ],
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
/// default_event_bus = alicloud.eventbridge.EventBus("default", event_bus_name=f"{name}-{default['result']}")
/// default_event_source_v2 = alicloud.eventbridge.EventSourceV2("default",
///     event_bus_name=default_event_bus.event_bus_name,
///     event_source_name=f"{name}-{default['result']}",
///     description=name,
///     linked_external_source=True,
///     source_http_event_parameters={
///         "type": "HTTP",
///         "security_config": "referer",
///         "methods": [
///             "GET",
///             "POST",
///             "DELETE",
///         ],
///         "referers": [
///             "www.aliyun.com",
///             "www.alicloud.com",
///             "www.taobao.com",
///         ],
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
///     var defaultEventBus = new AliCloud.EventBridge.EventBus("default", new()
///     {
///         EventBusName = $"{name}-{@default.Result}",
///     });
///
///     var defaultEventSourceV2 = new AliCloud.EventBridge.EventSourceV2("default", new()
///     {
///         EventBusName = defaultEventBus.EventBusName,
///         EventSourceName = $"{name}-{@default.Result}",
///         Description = name,
///         LinkedExternalSource = true,
///         SourceHttpEventParameters = new AliCloud.EventBridge.Inputs.EventSourceV2SourceHttpEventParametersArgs
///         {
///             Type = "HTTP",
///             SecurityConfig = "referer",
///             Methods = new[]
///             {
///                 "GET",
///                 "POST",
///                 "DELETE",
///             },
///             Referers = new[]
///             {
///                 "www.aliyun.com",
///                 "www.alicloud.com",
///                 "www.taobao.com",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
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
/// 		defaultEventBus, err := eventbridge.NewEventBus(ctx, "default", &eventbridge.EventBusArgs{
/// 			EventBusName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventbridge.NewEventSourceV2(ctx, "default", &eventbridge.EventSourceV2Args{
/// 			EventBusName:         defaultEventBus.EventBusName,
/// 			EventSourceName:      pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			Description:          pulumi.String(name),
/// 			LinkedExternalSource: pulumi.Bool(true),
/// 			SourceHttpEventParameters: &eventbridge.EventSourceV2SourceHttpEventParametersArgs{
/// 				Type:           pulumi.String("HTTP"),
/// 				SecurityConfig: pulumi.String("referer"),
/// 				Methods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("POST"),
/// 					pulumi.String("DELETE"),
/// 				},
/// 				Referers: pulumi.StringArray{
/// 					pulumi.String("www.aliyun.com"),
/// 					pulumi.String("www.alicloud.com"),
/// 					pulumi.String("www.taobao.com"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eventbridge.EventBus;
/// import com.pulumi.alicloud.eventbridge.EventBusArgs;
/// import com.pulumi.alicloud.eventbridge.EventSourceV2;
/// import com.pulumi.alicloud.eventbridge.EventSourceV2Args;
/// import com.pulumi.alicloud.eventbridge.inputs.EventSourceV2SourceHttpEventParametersArgs;
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
///         var defaultEventBus = new EventBus("defaultEventBus", EventBusArgs.builder()
///             .eventBusName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultEventSourceV2 = new EventSourceV2("defaultEventSourceV2", EventSourceV2Args.builder()
///             .eventBusName(defaultEventBus.eventBusName())
///             .eventSourceName(String.format("%s-%s", name,default_.result()))
///             .description(name)
///             .linkedExternalSource(true)
///             .sourceHttpEventParameters(EventSourceV2SourceHttpEventParametersArgs.builder()
///                 .type("HTTP")
///                 .securityConfig("referer")
///                 .methods(
///                     "GET",
///                     "POST",
///                     "DELETE")
///                 .referers(
///                     "www.aliyun.com",
///                     "www.alicloud.com",
///                     "www.taobao.com")
///                 .build())
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
///   defaultEventBus:
///     type: alicloud:eventbridge:EventBus
///     name: default
///     properties:
///       eventBusName: ${name}-${default.result}
///   defaultEventSourceV2:
///     type: alicloud:eventbridge:EventSourceV2
///     name: default
///     properties:
///       eventBusName: ${defaultEventBus.eventBusName}
///       eventSourceName: ${name}-${default.result}
///       description: ${name}
///       linkedExternalSource: true
///       sourceHttpEventParameters:
///         type: HTTP
///         securityConfig: referer
///         methods:
///           - GET
///           - POST
///           - DELETE
///         referers:
///           - www.aliyun.com
///           - www.alicloud.com
///           - www.taobao.com
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Event Source V2 can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/eventSourceV2:EventSourceV2 example <id>
/// ```
class EventSourceV2 extends pulumi.CustomResource {
  /// The detail describe of event source
  late final pulumi.Output<String?> description;

  /// Name of the bus associated with the event source
  late final pulumi.Output<String> eventBusName;

  /// The code name of event source
  late final pulumi.Output<String> eventSourceName;
  late final pulumi.Output<bool?> linkedExternalSource;

  /// The request parameter SourceHttpEventParameters. See `source_http_event_parameters` below.
  late final pulumi.Output<EventSourceV2SourceHttpEventParameters?>
  sourceHttpEventParameters;

  /// Kafka event source parameter. See `source_kafka_parameters` below.
  late final pulumi.Output<EventSourceV2SourceKafkaParameters?>
  sourceKafkaParameters;

  /// Lightweight message queue (formerly MNS) event source parameter. See `source_mns_parameters` below.
  late final pulumi.Output<EventSourceV2SourceMnsParameters?>
  sourceMnsParameters;

  /// OSS event source parameters See `source_oss_event_parameters` below.
  late final pulumi.Output<EventSourceV2SourceOssEventParameters?>
  sourceOssEventParameters;

  /// The request parameter SourceRabbitMQParameters. See `source_rabbit_mq_parameters` below.
  late final pulumi.Output<EventSourceV2SourceRabbitMqParameters?>
  sourceRabbitMqParameters;

  /// The request parameter SourceRocketMQParameters. See `source_rocketmq_parameters` below.
  late final pulumi.Output<EventSourceV2SourceRocketmqParameters?>
  sourceRocketmqParameters;

  /// Time event source parameter. See `source_scheduled_event_parameters` below.
  late final pulumi.Output<EventSourceV2SourceScheduledEventParameters?>
  sourceScheduledEventParameters;

  /// The request parameter SourceSLSParameters. See `source_sls_parameters` below.
  late final pulumi.Output<EventSourceV2SourceSlsParameters?>
  sourceSlsParameters;

  /// Creates a new [EventSourceV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSourceV2]. {@macro pulumi_eventbridge_event_source_v2_event_source_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSourceV2(
    String name, {
    EventSourceV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/eventSourceV2:EventSourceV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String>('eventBusName');
    eventSourceName = registerOutput<String>('eventSourceName');
    linkedExternalSource = registerOutput<bool?>('linkedExternalSource');
    sourceHttpEventParameters =
        registerOutput<EventSourceV2SourceHttpEventParameters?>(
          'sourceHttpEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceHttpEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceKafkaParameters = registerOutput<EventSourceV2SourceKafkaParameters?>(
      'sourceKafkaParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceKafkaParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceMnsParameters = registerOutput<EventSourceV2SourceMnsParameters?>(
      'sourceMnsParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceMnsParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceOssEventParameters =
        registerOutput<EventSourceV2SourceOssEventParameters?>(
          'sourceOssEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceOssEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceRabbitMqParameters =
        registerOutput<EventSourceV2SourceRabbitMqParameters?>(
          'sourceRabbitMqParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceRabbitMqParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceRocketmqParameters =
        registerOutput<EventSourceV2SourceRocketmqParameters?>(
          'sourceRocketmqParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceRocketmqParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceScheduledEventParameters =
        registerOutput<EventSourceV2SourceScheduledEventParameters?>(
          'sourceScheduledEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceScheduledEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceSlsParameters = registerOutput<EventSourceV2SourceSlsParameters?>(
      'sourceSlsParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceSlsParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [EventSourceV2] resource's state with the given [name] and [id].
  static EventSourceV2 get(
    String name,
    pulumi.Input<String> id, {
    EventSourceV2State? state,
  }) {
    return EventSourceV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventSourceV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eventbridge/eventSourceV2:EventSourceV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    eventBusName = registerOutput<String>('eventBusName');
    eventSourceName = registerOutput<String>('eventSourceName');
    linkedExternalSource = registerOutput<bool?>('linkedExternalSource');
    sourceHttpEventParameters =
        registerOutput<EventSourceV2SourceHttpEventParameters?>(
          'sourceHttpEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceHttpEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceKafkaParameters = registerOutput<EventSourceV2SourceKafkaParameters?>(
      'sourceKafkaParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceKafkaParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceMnsParameters = registerOutput<EventSourceV2SourceMnsParameters?>(
      'sourceMnsParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceMnsParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sourceOssEventParameters =
        registerOutput<EventSourceV2SourceOssEventParameters?>(
          'sourceOssEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceOssEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceRabbitMqParameters =
        registerOutput<EventSourceV2SourceRabbitMqParameters?>(
          'sourceRabbitMqParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceRabbitMqParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceRocketmqParameters =
        registerOutput<EventSourceV2SourceRocketmqParameters?>(
          'sourceRocketmqParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceRocketmqParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceScheduledEventParameters =
        registerOutput<EventSourceV2SourceScheduledEventParameters?>(
          'sourceScheduledEventParameters',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return EventSourceV2SourceScheduledEventParameters.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    sourceSlsParameters = registerOutput<EventSourceV2SourceSlsParameters?>(
      'sourceSlsParameters',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EventSourceV2SourceSlsParameters.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
