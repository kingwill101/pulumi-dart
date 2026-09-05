import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_session_queue_args.dart';
import 'game_session_queue_player_latency_policy.dart';
import 'game_session_queue_state.dart';

/// Provides an GameLift Game Session Queue resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.gamelift.GameSessionQueue("test", {
///     playerLatencyPolicies: [
///         {
///             maximumIndividualPlayerLatencyMilliseconds: 100,
///             policyDurationSeconds: 5,
///         },
///         {
///             maximumIndividualPlayerLatencyMilliseconds: 200,
///         },
///     ],
///     name: "example-session-queue",
///     destinations: [
///         usWest2Fleet.arn,
///         euCentral1Fleet.arn,
///     ],
///     notificationTarget: gameSessionQueueNotifications.arn,
///     timeoutInSeconds: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.gamelift.GameSessionQueue("test",
///     player_latency_policies=[
///         {
///             "maximum_individual_player_latency_milliseconds": 100,
///             "policy_duration_seconds": 5,
///         },
///         {
///             "maximum_individual_player_latency_milliseconds": 200,
///         },
///     ],
///     name="example-session-queue",
///     destinations=[
///         us_west2_fleet["arn"],
///         eu_central1_fleet["arn"],
///     ],
///     notification_target=game_session_queue_notifications["arn"],
///     timeout_in_seconds=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.GameLift.GameSessionQueue("test", new()
///     {
///         PlayerLatencyPolicies = new[]
///         {
///             new Aws.GameLift.Inputs.GameSessionQueuePlayerLatencyPolicyArgs
///             {
///                 MaximumIndividualPlayerLatencyMilliseconds = 100,
///                 PolicyDurationSeconds = 5,
///             },
///             new Aws.GameLift.Inputs.GameSessionQueuePlayerLatencyPolicyArgs
///             {
///                 MaximumIndividualPlayerLatencyMilliseconds = 200,
///             },
///         },
///         Name = "example-session-queue",
///         Destinations = new[]
///         {
///             usWest2Fleet.Arn,
///             euCentral1Fleet.Arn,
///         },
///         NotificationTarget = gameSessionQueueNotifications.Arn,
///         TimeoutInSeconds = 60,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewGameSessionQueue(ctx, "test", &gamelift.GameSessionQueueArgs{
/// 			PlayerLatencyPolicies: gamelift.GameSessionQueuePlayerLatencyPolicyArray{
/// 				&gamelift.GameSessionQueuePlayerLatencyPolicyArgs{
/// 					MaximumIndividualPlayerLatencyMilliseconds: pulumi.Int(100),
/// 					PolicyDurationSeconds:                      pulumi.Int(5),
/// 				},
/// 				&gamelift.GameSessionQueuePlayerLatencyPolicyArgs{
/// 					MaximumIndividualPlayerLatencyMilliseconds: pulumi.Int(200),
/// 				},
/// 			},
/// 			Name: pulumi.String("example-session-queue"),
/// 			Destinations: pulumi.StringArray{
/// 				usWest2Fleet.Arn,
/// 				euCentral1Fleet.Arn,
/// 			},
/// 			NotificationTarget: pulumi.Any(gameSessionQueueNotifications.Arn),
/// 			TimeoutInSeconds:   pulumi.Int(60),
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
/// resource "aws_gamelift_gamesessionqueue" "test" {
///   player_latency_policies {
///     maximum_individual_player_latency_milliseconds = 100
///     policy_duration_seconds                        = 5
///   }
///   player_latency_policies {
///     maximum_individual_player_latency_milliseconds = 200
///   }
///   name                = "example-session-queue"
///   destinations        = [usWest2Fleet.arn, euCentral1Fleet.arn]
///   notification_target = gameSessionQueueNotifications.arn
///   timeout_in_seconds  = 60
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.gamelift.GameSessionQueue;
/// import com.pulumi.aws.gamelift.GameSessionQueueArgs;
/// import com.pulumi.aws.gamelift.inputs.GameSessionQueuePlayerLatencyPolicyArgs;
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
///         var test = new GameSessionQueue("test", GameSessionQueueArgs.builder()
///             .playerLatencyPolicies(
///                 GameSessionQueuePlayerLatencyPolicyArgs.builder()
///                     .maximumIndividualPlayerLatencyMilliseconds(100)
///                     .policyDurationSeconds(5)
///                     .build(),
///                 GameSessionQueuePlayerLatencyPolicyArgs.builder()
///                     .maximumIndividualPlayerLatencyMilliseconds(200)
///                     .build())
///             .name("example-session-queue")
///             .destinations(
///                 usWest2Fleet.arn(),
///                 euCentral1Fleet.arn())
///             .notificationTarget(gameSessionQueueNotifications.arn())
///             .timeoutInSeconds(60)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:gamelift:GameSessionQueue
///     properties:
///       playerLatencyPolicies:
///         - maximumIndividualPlayerLatencyMilliseconds: 100
///           policyDurationSeconds: 5
///         - maximumIndividualPlayerLatencyMilliseconds: 200
///       name: example-session-queue
///       destinations:
///         - ${usWest2Fleet.arn}
///         - ${euCentral1Fleet.arn}
///       notificationTarget: ${gameSessionQueueNotifications.arn}
///       timeoutInSeconds: 60
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Game Session Queues using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/gameSessionQueue:GameSessionQueue example example
/// ```
class GameSessionQueue extends pulumi.CustomResource {
  /// Game Session Queue ARN.
  late final pulumi.Output<String> arn;
  /// Information to be added to all events that are related to this game session queue.
  late final pulumi.Output<String?> customEventData;
  /// List of fleet/alias ARNs used by session queue for placing game sessions.
  late final pulumi.Output<List<String>?> destinations;
  /// Name of the session queue.
  late final pulumi.Output<String> name;
  /// An SNS topic ARN that is set up to receive game session placement notifications.
  late final pulumi.Output<String?> notificationTarget;
  /// One or more policies used to choose fleet based on player latency. See below.
  late final pulumi.Output<List<GameSessionQueuePlayerLatencyPolicy>?> playerLatencyPolicies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Maximum time a game session request can remain in the queue.
  late final pulumi.Output<int?> timeoutInSeconds;

  /// Creates a new [GameSessionQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GameSessionQueue]. {@macro pulumi_gamelift_game_session_queue_game_session_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GameSessionQueue(
    String name, {
    GameSessionQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameSessionQueue:GameSessionQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    customEventData = registerOutput<String?>('customEventData');
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    notificationTarget = registerOutput<String?>('notificationTarget');
    playerLatencyPolicies = registerOutput<List<GameSessionQueuePlayerLatencyPolicy>?>('playerLatencyPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(guardedValue, (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
  }

  /// Gets an existing [GameSessionQueue] resource's state with the given [name] and [id].
  static GameSessionQueue get(
    String name,
    pulumi.Input<String> id, {
    GameSessionQueueState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GameSessionQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GameSessionQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameSessionQueue:GameSessionQueue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customEventData = registerOutput<String?>('customEventData');
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    notificationTarget = registerOutput<String?>('notificationTarget');
    playerLatencyPolicies = registerOutput<List<GameSessionQueuePlayerLatencyPolicy>?>('playerLatencyPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(guardedValue, (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
  }

  /// Creates a typed reference to an existing [GameSessionQueue] resource.
  GameSessionQueue.reference(String urn)
    : super(
        'aws:gamelift/gameSessionQueue:GameSessionQueue',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    customEventData = registerOutput<String?>('customEventData');
    destinations = registerOutput<List<String>?>('destinations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    notificationTarget = registerOutput<String?>('notificationTarget');
    playerLatencyPolicies = registerOutput<List<GameSessionQueuePlayerLatencyPolicy>?>('playerLatencyPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(guardedValue, (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
  }
}
