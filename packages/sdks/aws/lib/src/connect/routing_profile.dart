import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_profile_args.dart';
import 'routing_profile_state.dart';

/// Provides an Amazon Connect Routing Profile resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.connect.RoutingProfile("example", {
///     instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name: "example",
///     defaultOutboundQueueId: "12345678-1234-1234-1234-123456789012",
///     description: "example description",
///     mediaConcurrencies: [
///         {
///             channel: "VOICE",
///             concurrency: 1,
///             crossChannelBehavior: {
///                 behaviorType: "ROUTE_ANY_CHANNEL",
///             },
///         },
///         {
///             channel: "CHAT",
///             concurrency: 3,
///             crossChannelBehavior: {
///                 behaviorType: "ROUTE_CURRENT_CHANNEL_ONLY",
///             },
///         },
///     ],
///     queueConfigs: [{
///         channel: "VOICE",
///         delay: 2,
///         priority: 1,
///         queueId: "12345678-1234-1234-1234-123456789012",
///     }],
///     tags: {
///         Name: "Example Routing Profile",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.RoutingProfile("example",
///     instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
///     name="example",
///     default_outbound_queue_id="12345678-1234-1234-1234-123456789012",
///     description="example description",
///     media_concurrencies=[
///         {
///             "channel": "VOICE",
///             "concurrency": 1,
///             "cross_channel_behavior": {
///                 "behavior_type": "ROUTE_ANY_CHANNEL",
///             },
///         },
///         {
///             "channel": "CHAT",
///             "concurrency": 3,
///             "cross_channel_behavior": {
///                 "behavior_type": "ROUTE_CURRENT_CHANNEL_ONLY",
///             },
///         },
///     ],
///     queue_configs=[{
///         "channel": "VOICE",
///         "delay": 2,
///         "priority": 1,
///         "queue_id": "12345678-1234-1234-1234-123456789012",
///     }],
///     tags={
///         "Name": "Example Routing Profile",
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
///     var example = new Aws.Connect.RoutingProfile("example", new()
///     {
///         InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
///         Name = "example",
///         DefaultOutboundQueueId = "12345678-1234-1234-1234-123456789012",
///         Description = "example description",
///         MediaConcurrencies = new[]
///         {
///             new Aws.Connect.Inputs.RoutingProfileMediaConcurrencyArgs
///             {
///                 Channel = "VOICE",
///                 Concurrency = 1,
///                 CrossChannelBehavior = new Aws.Connect.Inputs.RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs
///                 {
///                     BehaviorType = "ROUTE_ANY_CHANNEL",
///                 },
///             },
///             new Aws.Connect.Inputs.RoutingProfileMediaConcurrencyArgs
///             {
///                 Channel = "CHAT",
///                 Concurrency = 3,
///                 CrossChannelBehavior = new Aws.Connect.Inputs.RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs
///                 {
///                     BehaviorType = "ROUTE_CURRENT_CHANNEL_ONLY",
///                 },
///             },
///         },
///         QueueConfigs = new[]
///         {
///             new Aws.Connect.Inputs.RoutingProfileQueueConfigArgs
///             {
///                 Channel = "VOICE",
///                 Delay = 2,
///                 Priority = 1,
///                 QueueId = "12345678-1234-1234-1234-123456789012",
///             },
///         },
///         Tags =
///         {
///             { "Name", "Example Routing Profile" },
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
/// 		_, err := connect.NewRoutingProfile(ctx, "example", &connect.RoutingProfileArgs{
/// 			InstanceId:             pulumi.String("aaaaaaaa-bbbb-cccc-dddd-111111111111"),
/// 			Name:                   pulumi.String("example"),
/// 			DefaultOutboundQueueId: pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 			Description:            pulumi.String("example description"),
/// 			MediaConcurrencies: connect.RoutingProfileMediaConcurrencyArray{
/// 				&connect.RoutingProfileMediaConcurrencyArgs{
/// 					Channel:     pulumi.String("VOICE"),
/// 					Concurrency: pulumi.Int(1),
/// 					CrossChannelBehavior: &connect.RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs{
/// 						BehaviorType: pulumi.String("ROUTE_ANY_CHANNEL"),
/// 					},
/// 				},
/// 				&connect.RoutingProfileMediaConcurrencyArgs{
/// 					Channel:     pulumi.String("CHAT"),
/// 					Concurrency: pulumi.Int(3),
/// 					CrossChannelBehavior: &connect.RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs{
/// 						BehaviorType: pulumi.String("ROUTE_CURRENT_CHANNEL_ONLY"),
/// 					},
/// 				},
/// 			},
/// 			QueueConfigs: connect.RoutingProfileQueueConfigArray{
/// 				&connect.RoutingProfileQueueConfigArgs{
/// 					Channel:  pulumi.String("VOICE"),
/// 					Delay:    pulumi.Int(2),
/// 					Priority: pulumi.Int(1),
/// 					QueueId:  pulumi.String("12345678-1234-1234-1234-123456789012"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Routing Profile"),
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
/// import com.pulumi.aws.connect.RoutingProfile;
/// import com.pulumi.aws.connect.RoutingProfileArgs;
/// import com.pulumi.aws.connect.inputs.RoutingProfileMediaConcurrencyArgs;
/// import com.pulumi.aws.connect.inputs.RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs;
/// import com.pulumi.aws.connect.inputs.RoutingProfileQueueConfigArgs;
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
///         var example = new RoutingProfile("example", RoutingProfileArgs.builder()
///             .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
///             .name("example")
///             .defaultOutboundQueueId("12345678-1234-1234-1234-123456789012")
///             .description("example description")
///             .mediaConcurrencies(
///                 RoutingProfileMediaConcurrencyArgs.builder()
///                     .channel("VOICE")
///                     .concurrency(1)
///                     .crossChannelBehavior(RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs.builder()
///                         .behaviorType("ROUTE_ANY_CHANNEL")
///                         .build())
///                     .build(),
///                 RoutingProfileMediaConcurrencyArgs.builder()
///                     .channel("CHAT")
///                     .concurrency(3)
///                     .crossChannelBehavior(RoutingProfileMediaConcurrencyCrossChannelBehaviorArgs.builder()
///                         .behaviorType("ROUTE_CURRENT_CHANNEL_ONLY")
///                         .build())
///                     .build())
///             .queueConfigs(RoutingProfileQueueConfigArgs.builder()
///                 .channel("VOICE")
///                 .delay(2)
///                 .priority(1)
///                 .queueId("12345678-1234-1234-1234-123456789012")
///                 .build())
///             .tags(Map.of("Name", "Example Routing Profile"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:connect:RoutingProfile
///     properties:
///       instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
///       name: example
///       defaultOutboundQueueId: 12345678-1234-1234-1234-123456789012
///       description: example description
///       mediaConcurrencies:
///         - channel: VOICE
///           concurrency: 1
///           crossChannelBehavior:
///             behaviorType: ROUTE_ANY_CHANNEL
///         - channel: CHAT
///           concurrency: 3
///           crossChannelBehavior:
///             behaviorType: ROUTE_CURRENT_CHANNEL_ONLY
///       queueConfigs:
///         - channel: VOICE
///           delay: 2
///           priority: 1
///           queueId: 12345678-1234-1234-1234-123456789012
///       tags:
///         Name: Example Routing Profile
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Routing Profiles using the `instance_id` and `routing_profile_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/routingProfile:RoutingProfile example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class RoutingProfile extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Routing Profile.
  late final pulumi.Output<String> arn;

  /// Specifies the default outbound queue for the Routing Profile.
  late final pulumi.Output<String> defaultOutboundQueueId;

  /// Specifies the description of the Routing Profile.
  late final pulumi.Output<String> description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// One or more `media_concurrencies` blocks that specify the channels that agents can handle in the Contact Control Panel (CCP) for this Routing Profile. The `media_concurrencies` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> mediaConcurrencies;

  /// Specifies the name of the Routing Profile.
  late final pulumi.Output<String> name;

  /// One or more `queue_configs` blocks that specify the inbound queues associated with the routing profile. If no queue is added, the agent only can make outbound calls. The `queue_configs` block is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> queueConfigs;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier for the Routing Profile.
  late final pulumi.Output<String> routingProfileId;

  /// Tags to apply to the Routing Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RoutingProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingProfile]. {@macro pulumi_connect_routing_profile_routing_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingProfile(
    String name, {
    RoutingProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/routingProfile:RoutingProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    defaultOutboundQueueId = registerOutput<String>('defaultOutboundQueueId');
    description = registerOutput<String>('description');
    instanceId = registerOutput<String>('instanceId');
    mediaConcurrencies = registerOutput<List<Map<String, dynamic>>>(
      'mediaConcurrencies',
    );
    this.name = registerOutput<String>('name');
    queueConfigs = registerOutput<List<Map<String, dynamic>>?>('queueConfigs');
    region = registerOutput<String>('region');
    routingProfileId = registerOutput<String>('routingProfileId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [RoutingProfile] resource's state with the given [name] and [id].
  static RoutingProfile get(
    String name,
    pulumi.Input<String> id, {
    RoutingProfileState? state,
  }) {
    return RoutingProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RoutingProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:connect/routingProfile:RoutingProfile',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    defaultOutboundQueueId = registerOutput<String>('defaultOutboundQueueId');
    description = registerOutput<String>('description');
    instanceId = registerOutput<String>('instanceId');
    mediaConcurrencies = registerOutput<List<Map<String, dynamic>>>(
      'mediaConcurrencies',
    );
    this.name = registerOutput<String>('name');
    queueConfigs = registerOutput<List<Map<String, dynamic>>?>('queueConfigs');
    region = registerOutput<String>('region');
    routingProfileId = registerOutput<String>('routingProfileId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
