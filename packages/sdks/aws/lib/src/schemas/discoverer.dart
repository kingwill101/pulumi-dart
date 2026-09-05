import 'package:pulumi/pulumi.dart' as pulumi;
import 'discoverer_args.dart';
import 'discoverer_state.dart';

/// Provides an EventBridge Schema Discoverer resource.
///
/// &gt; **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const messenger = new aws.cloudwatch.EventBus("messenger", {name: "chat-messages"});
/// const test = new aws.schemas.Discoverer("test", {
///     sourceArn: messenger.arn,
///     description: "Auto discover event schemas",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// messenger = aws.cloudwatch.EventBus("messenger", name="chat-messages")
/// test = aws.schemas.Discoverer("test",
///     source_arn=messenger.arn,
///     description="Auto discover event schemas")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var messenger = new Aws.CloudWatch.EventBus("messenger", new()
///     {
///         Name = "chat-messages",
///     });
///
///     var test = new Aws.Schemas.Discoverer("test", new()
///     {
///         SourceArn = messenger.Arn,
///         Description = "Auto discover event schemas",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/schemas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		messenger, err := cloudwatch.NewEventBus(ctx, "messenger", &cloudwatch.EventBusArgs{
/// 			Name: pulumi.String("chat-messages"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = schemas.NewDiscoverer(ctx, "test", &schemas.DiscovererArgs{
/// 			SourceArn:   messenger.Arn,
/// 			Description: pulumi.String("Auto discover event schemas"),
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
/// resource "aws_cloudwatch_eventbus" "messenger" {
///   name = "chat-messages"
/// }
/// resource "aws_schemas_discoverer" "test" {
///   source_arn  = aws_cloudwatch_eventbus.messenger.arn
///   description = "Auto discover event schemas"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.EventBus;
/// import com.pulumi.aws.cloudwatch.EventBusArgs;
/// import com.pulumi.aws.schemas.Discoverer;
/// import com.pulumi.aws.schemas.DiscovererArgs;
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
///         var messenger = new EventBus("messenger", EventBusArgs.builder()
///             .name("chat-messages")
///             .build());
///
///         var test = new Discoverer("test", DiscovererArgs.builder()
///             .sourceArn(messenger.arn())
///             .description("Auto discover event schemas")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   messenger:
///     type: aws:cloudwatch:EventBus
///     properties:
///       name: chat-messages
///   test:
///     type: aws:schemas:Discoverer
///     properties:
///       sourceArn: ${messenger.arn}
///       description: Auto discover event schemas
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge discoverers using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/discoverer:Discoverer test 123
/// ```
class Discoverer extends pulumi.CustomResource {
  /// ARN of the discoverer.
  late final pulumi.Output<String> arn;
  /// The description of the discoverer. Maximum of 256 characters.
  late final pulumi.Output<String?> description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARN of the event bus to discover event schemas on.
  late final pulumi.Output<String> sourceArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Discoverer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Discoverer]. {@macro pulumi_schemas_discoverer_discoverer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Discoverer(
    String name, {
    DiscovererArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/discoverer:Discoverer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Discoverer] resource's state with the given [name] and [id].
  static Discoverer get(
    String name,
    pulumi.Input<String> id, {
    DiscovererState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Discoverer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Discoverer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/discoverer:Discoverer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Discoverer] resource.
  Discoverer.reference(String urn)
    : super(
        'aws:schemas/discoverer:Discoverer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
