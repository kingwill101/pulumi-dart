import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_args.dart';
import 'event_event.dart';

/// Use this resource to create one or more Insights events during a terraform run.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.insights.Event("foo", {events: [{
///     type: "MyEvent",
///     timestamp: 1232471100,
///     attributes: [
///         {
///             key: "a_string_attribute",
///             value: "a string",
///         },
///         {
///             key: "an_integer_attribute",
///             value: "42",
///             type: "int",
///         },
///         {
///             key: "a_float_attribute",
///             value: "101.1",
///             type: "float",
///         },
///     ],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.insights.Event("foo", events=[{
///     "type": "MyEvent",
///     "timestamp": 1232471100,
///     "attributes": [
///         {
///             "key": "a_string_attribute",
///             "value": "a string",
///         },
///         {
///             "key": "an_integer_attribute",
///             "value": "42",
///             "type": "int",
///         },
///         {
///             "key": "a_float_attribute",
///             "value": "101.1",
///             "type": "float",
///         },
///     ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Insights.Event("foo", new()
///     {
///         Events = new[]
///         {
///             new NewRelic.Insights.Inputs.EventEventArgs
///             {
///                 Type = "MyEvent",
///                 Timestamp = 1232471100,
///                 Attributes = new[]
///                 {
///                     new NewRelic.Insights.Inputs.EventEventAttributeArgs
///                     {
///                         Key = "a_string_attribute",
///                         Value = "a string",
///                     },
///                     new NewRelic.Insights.Inputs.EventEventAttributeArgs
///                     {
///                         Key = "an_integer_attribute",
///                         Value = "42",
///                         Type = "int",
///                     },
///                     new NewRelic.Insights.Inputs.EventEventAttributeArgs
///                     {
///                         Key = "a_float_attribute",
///                         Value = "101.1",
///                         Type = "float",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/insights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := insights.NewEvent(ctx, "foo", &insights.EventArgs{
/// 			Events: insights.EventEventArray{
/// 				&insights.EventEventArgs{
/// 					Type:      pulumi.String("MyEvent"),
/// 					Timestamp: pulumi.Int(1232471100),
/// 					Attributes: insights.EventEventAttributeArray{
/// 						&insights.EventEventAttributeArgs{
/// 							Key:   pulumi.String("a_string_attribute"),
/// 							Value: pulumi.String("a string"),
/// 						},
/// 						&insights.EventEventAttributeArgs{
/// 							Key:   pulumi.String("an_integer_attribute"),
/// 							Value: pulumi.String("42"),
/// 							Type:  pulumi.String("int"),
/// 						},
/// 						&insights.EventEventAttributeArgs{
/// 							Key:   pulumi.String("a_float_attribute"),
/// 							Value: pulumi.String("101.1"),
/// 							Type:  pulumi.String("float"),
/// 						},
/// 					},
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
/// import com.pulumi.newrelic.insights.Event;
/// import com.pulumi.newrelic.insights.EventArgs;
/// import com.pulumi.newrelic.insights.inputs.EventEventArgs;
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
///         var foo = new Event("foo", EventArgs.builder()
///             .events(EventEventArgs.builder()
///                 .type("MyEvent")
///                 .timestamp(1232471100)
///                 .attributes(
///                     EventEventAttributeArgs.builder()
///                         .key("a_string_attribute")
///                         .value("a string")
///                         .build(),
///                     EventEventAttributeArgs.builder()
///                         .key("an_integer_attribute")
///                         .value("42")
///                         .type("int")
///                         .build(),
///                     EventEventAttributeArgs.builder()
///                         .key("a_float_attribute")
///                         .value("101.1")
///                         .type("float")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:insights:Event
///     properties:
///       events:
///         - type: MyEvent
///           timestamp: 1.2324711e+09
///           attributes:
///             - key: a_string_attribute
///               value: a string
///             - key: an_integer_attribute
///               value: 42
///               type: int
///             - key: a_float_attribute
///               value: 101.1
///               type: float
/// ```
///
///
/// ## Events
///
/// The `event` mapping supports the following arguments:
///
/// * `type` - (Required) The event's name. Can be a combination of alphanumeric characters, underscores, and colons.
/// * `timestamp` - (Optional) Must be a Unix epoch timestamp. You can define timestamps either in seconds or in milliseconds.
/// * `attribute` - (Required) An attribute to include in your event payload. Multiple attribute blocks can be defined for an event. See Attributes below for details.
///
/// ### Attributes
///
/// The `attribute` mapping supports the following arguments:
///
/// * `key` - (Required) The name of the attribute.
/// * `value` - (Required) The value of the attribute.
/// * `type` - (Optional) Specify the type for the attribute value. This is useful when passing integer or float values to Insights. Allowed values are `string`, `int`, or `float`. Defaults to `string`.
class Event extends pulumi.CustomResource {
  /// An event to insert into Insights. Multiple event blocks can be defined. See Events below for details.
  late final pulumi.Output<List<EventEvent>> events;

  /// Creates a new [Event].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Event]. {@macro pulumi_insights_event_event_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Event(
    String name, {
    EventArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:insights/event:Event',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.events = registerOutput<List<EventEvent>>('events');
  }
}
