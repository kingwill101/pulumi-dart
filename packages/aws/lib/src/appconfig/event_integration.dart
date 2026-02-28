import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_integration_args.dart';
import 'event_integration_event_filter.dart';

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
///     name: "example-name",
///     description: "Example Description",
///     eventbridgeBus: "default",
///     eventFilter: {
///         source: "aws.partner/examplepartner.com",
///     },
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
///     name="example-name",
///     description="Example Description",
///     eventbridge_bus="default",
///     event_filter={
///         "source": "aws.partner/examplepartner.com",
///     },
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
///         Name = "example-name",
///         Description = "Example Description",
///         EventbridgeBus = "default",
///         EventFilter = new Aws.AppConfig.Inputs.EventIntegrationEventFilterArgs
///         {
///             Source = "aws.partner/examplepartner.com",
///         },
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
/// 			Name:           pulumi.String("example-name"),
/// 			Description:    pulumi.String("Example Description"),
/// 			EventbridgeBus: pulumi.String("default"),
/// 			EventFilter: &appconfig.EventIntegrationEventFilterArgs{
/// 				Source: pulumi.String("aws.partner/examplepartner.com"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appconfig.EventIntegration;
/// import com.pulumi.aws.appconfig.EventIntegrationArgs;
/// import com.pulumi.aws.appconfig.inputs.EventIntegrationEventFilterArgs;
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
///         var example = new EventIntegration("example", EventIntegrationArgs.builder()
///             .name("example-name")
///             .description("Example Description")
///             .eventbridgeBus("default")
///             .eventFilter(EventIntegrationEventFilterArgs.builder()
///                 .source("aws.partner/examplepartner.com")
///                 .build())
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
///       name: example-name
///       description: Example Description
///       eventbridgeBus: default
///       eventFilter:
///         source: aws.partner/examplepartner.com
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

  /// Tags to apply to the Event Integration. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.eventFilter =
        registerOutput<EventIntegrationEventFilter>('eventFilter');
    this.eventbridgeBus = registerOutput<String>('eventbridgeBus');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
