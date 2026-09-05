import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_integration_args.dart';
import 'event_integration_event_filter.dart';
import 'event_integration_state.dart';

/// Provides an Amazon AppIntegrations Event Integration resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.EventIntegration("example", {
///     eventFilter: {
///         source: "aws.partner/example.com",
///     },
///     name: "example-name",
///     description: "Example Description",
///     eventbridgeBus: "default",
///     tags: {
///         Name: "Example Event Integration",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.EventIntegration("example",
///     event_filter={
///         "source": "aws.partner/example.com",
///     },
///     name="example-name",
///     description="Example Description",
///     eventbridge_bus="default",
///     tags={
///         "Name": "Example Event Integration",
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
///     var example = new Aws.AppConfig.EventIntegration("example", new()
///     {
///         EventFilter = new Aws.AppConfig.Inputs.EventIntegrationEventFilterArgs
///         {
///             Source = "aws.partner/example.com",
///         },
///         Name = "example-name",
///         Description = "Example Description",
///         EventbridgeBus = "default",
///         Tags =
///         {
///             { "Name", "Example Event Integration" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.NewEventIntegration(ctx, "example", &appconfig.EventIntegrationArgs{
/// 			EventFilter: &appconfig.EventIntegrationEventFilterArgs{
/// 				Source: pulumi.String("aws.partner/example.com"),
/// 			},
/// 			Name:           pulumi.String("example-name"),
/// 			Description:    pulumi.String("Example Description"),
/// 			EventbridgeBus: pulumi.String("default"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Event Integration"),
/// 			},
/// 		})
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
/// resource "aws_appconfig_eventintegration" "example" {
///   event_filter = {
///     source = "aws.partner/example.com"
///   }
///   name            = "example-name"
///   description     = "Example Description"
///   eventbridge_bus = "default"
///   tags = {
///     "Name" = "Example Event Integration"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.EventIntegration;
/// import com.pulumi.aws.appconfig.EventIntegrationArgs;
/// import com.pulumi.aws.appconfig.inputs.EventIntegrationEventFilterArgs;
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
///         var example = new EventIntegration("example", EventIntegrationArgs.builder()
///             .eventFilter(EventIntegrationEventFilterArgs.builder()
///                 .source("aws.partner/example.com")
///                 .build())
///             .name("example-name")
///             .description("Example Description")
///             .eventbridgeBus("default")
///             .tags(Map.of("Name", "Example Event Integration"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appconfig:EventIntegration
///     properties:
///       eventFilter:
///         source: aws.partner/example.com
///       name: example-name
///       description: Example Description
///       eventbridgeBus: default
///       tags:
///         Name: Example Event Integration
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon AppIntegrations Event Integrations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/eventIntegration:EventIntegration example example-name
/// ```
class EventIntegration extends pulumi.CustomResource {
  /// ARN of the Event Integration.
  late final pulumi.Output<String> arn;
  /// Description of the Event Integration.
  late final pulumi.Output<String?> description;
  /// Block that defines the configuration information for the event filter. The Event Filter block is documented below.
  late final pulumi.Output<EventIntegrationEventFilter> eventFilter;
  /// EventBridge bus.
  late final pulumi.Output<String> eventbridgeBus;
  /// Name of the Event Integration.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Tags to apply to the Event Integration. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [EventIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventIntegration]. {@macro pulumi_appconfig_event_integration_event_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventIntegration(
    String name, {
    EventIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/eventIntegration:EventIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventFilter = registerOutput<EventIntegrationEventFilter>('eventFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventIntegrationEventFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventbridgeBus = registerOutput<String>('eventbridgeBus');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [EventIntegration] resource's state with the given [name] and [id].
  static EventIntegration get(
    String name,
    pulumi.Input<String> id, {
    EventIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EventIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EventIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/eventIntegration:EventIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventFilter = registerOutput<EventIntegrationEventFilter>('eventFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventIntegrationEventFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventbridgeBus = registerOutput<String>('eventbridgeBus');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [EventIntegration] resource.
  EventIntegration.reference(String urn)
    : super(
        'aws:appconfig/eventIntegration:EventIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    eventFilter = registerOutput<EventIntegrationEventFilter>('eventFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EventIntegrationEventFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eventbridgeBus = registerOutput<String>('eventbridgeBus');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
