import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_bus_args.dart';
import 'event_bus_state.dart';

/// Provides a Event Bridge Event Bus resource.
///
/// For information about Event Bridge Event Bus and how to use it, see [What is Event Bus](https://www.alibabacloud.com/help/en/eventbridge/latest/api-eventbridge-2020-04-01-createeventbus).
///
/// > **NOTE:** Available since v1.129.0.
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
/// const name = config.get("name") || "tf-example";
/// const example = new alicloud.eventbridge.EventBus("example", {eventBusName: name});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// example = alicloud.eventbridge.EventBus("example", event_bus_name=name)
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
///     var name = config.Get("name") ?? "tf-example";
///     var example = new AliCloud.EventBridge.EventBus("example", new()
///     {
///         EventBusName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := eventbridge.NewEventBus(ctx, "example", &eventbridge.EventBusArgs{
/// 			EventBusName: pulumi.String(name),
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
/// import com.pulumi.alicloud.eventbridge.EventBus;
/// import com.pulumi.alicloud.eventbridge.EventBusArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var example = new EventBus("example", EventBusArgs.builder()
///             .eventBusName(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   example:
///     type: alicloud:eventbridge:EventBus
///     properties:
///       eventBusName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Event Bus can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/eventBus:EventBus example <event_bus_name>
/// ```
class EventBus extends pulumi.CustomResource {
  /// The description of event bus.
  late final pulumi.Output<String?> description;
  /// The name of event bus. The length is limited to 2 ~ 127 characters, which can be composed of letters, numbers or hyphens (-)
  late final pulumi.Output<String> eventBusName;

  /// Creates a new [EventBus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventBus]. {@macro pulumi_eventbridge_event_bus_event_bus_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventBus(
    String name, {
    EventBusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/eventBus:EventBus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String>('eventBusName');
  }

  /// Gets an existing [EventBus] resource's state with the given [name] and [id].
  static EventBus get(
    String name,
    pulumi.Input<String> id, {
    EventBusState? state,
  }) {
    return EventBus._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventBus._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/eventBus:EventBus',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String>('eventBusName');
  }
}
