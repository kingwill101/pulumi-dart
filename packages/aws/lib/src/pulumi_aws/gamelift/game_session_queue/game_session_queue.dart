import 'package:pulumi/pulumi.dart';
import '../game_session_queue_player_latency_policy/game_session_queue_player_latency_policy.dart';
import 'game_session_queue_args.dart';

/// Provides an GameLift Game Session Queue resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.gamelift.GameSessionQueue("test", {
/// name: "example-session-queue",
/// destinations: [
/// usWest2Fleet.arn,
/// euCentral1Fleet.arn,
/// ],
/// notificationTarget: gameSessionQueueNotifications.arn,
/// playerLatencyPolicies: [
/// {
/// maximumIndividualPlayerLatencyMilliseconds: 100,
/// policyDurationSeconds: 5,
/// },
/// {
/// maximumIndividualPlayerLatencyMilliseconds: 200,
/// },
/// ],
/// timeoutInSeconds: 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.gamelift.GameSessionQueue("test",
/// name="example-session-queue",
/// destinations=[
/// us_west2_fleet["arn"],
/// eu_central1_fleet["arn"],
/// ],
/// notification_target=game_session_queue_notifications["arn"],
/// player_latency_policies=[
/// {
/// "maximum_individual_player_latency_milliseconds": 100,
/// "policy_duration_seconds": 5,
/// },
/// {
/// "maximum_individual_player_latency_milliseconds": 200,
/// },
/// ],
/// timeout_in_seconds=60)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.GameLift.GameSessionQueue("test", new()
/// {
/// Name = "example-session-queue",
/// Destinations = new[]
/// {
/// usWest2Fleet.Arn,
/// euCentral1Fleet.Arn,
/// },
/// NotificationTarget = gameSessionQueueNotifications.Arn,
/// PlayerLatencyPolicies = new[]
/// {
/// new Aws.GameLift.Inputs.GameSessionQueuePlayerLatencyPolicyArgs
/// {
/// MaximumIndividualPlayerLatencyMilliseconds = 100,
/// PolicyDurationSeconds = 5,
/// },
/// new Aws.GameLift.Inputs.GameSessionQueuePlayerLatencyPolicyArgs
/// {
/// MaximumIndividualPlayerLatencyMilliseconds = 200,
/// },
/// },
/// TimeoutInSeconds = 60,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := gamelift.NewGameSessionQueue(ctx, "test", &gamelift.GameSessionQueueArgs{
/// Name: pulumi.String("example-session-queue"),
/// Destinations: pulumi.StringArray{
/// usWest2Fleet.Arn,
/// euCentral1Fleet.Arn,
/// },
/// NotificationTarget: pulumi.Any(gameSessionQueueNotifications.Arn),
/// PlayerLatencyPolicies: gamelift.GameSessionQueuePlayerLatencyPolicyArray{
/// &gamelift.GameSessionQueuePlayerLatencyPolicyArgs{
/// MaximumIndividualPlayerLatencyMilliseconds: pulumi.Int(100),
/// PolicyDurationSeconds:                      pulumi.Int(5),
/// },
/// &gamelift.GameSessionQueuePlayerLatencyPolicyArgs{
/// MaximumIndividualPlayerLatencyMilliseconds: pulumi.Int(200),
/// },
/// },
/// TimeoutInSeconds: pulumi.Int(60),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var test = new GameSessionQueue("test", GameSessionQueueArgs.builder()
/// .name("example-session-queue")
/// .destinations(
/// usWest2Fleet.arn(),
/// euCentral1Fleet.arn())
/// .notificationTarget(gameSessionQueueNotifications.arn())
/// .playerLatencyPolicies(
/// GameSessionQueuePlayerLatencyPolicyArgs.builder()
/// .maximumIndividualPlayerLatencyMilliseconds(100)
/// .policyDurationSeconds(5)
/// .build(),
/// GameSessionQueuePlayerLatencyPolicyArgs.builder()
/// .maximumIndividualPlayerLatencyMilliseconds(200)
/// .build())
/// .timeoutInSeconds(60)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:gamelift:GameSessionQueue
/// properties:
/// name: example-session-queue
/// destinations:
/// - ${usWest2Fleet.arn}
/// - ${euCentral1Fleet.arn}
/// notificationTarget: ${gameSessionQueueNotifications.arn}
/// playerLatencyPolicies:
/// - maximumIndividualPlayerLatencyMilliseconds: 100
/// policyDurationSeconds: 5
/// - maximumIndividualPlayerLatencyMilliseconds: 200
/// timeoutInSeconds: 60
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Game Session Queues using their <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/gameSessionQueue:GameSessionQueue example example
/// ```
class GameSessionQueue extends CustomResource {
  /// Game Session Queue ARN.
  late final Output<String> arn;

  /// Information to be added to all events that are related to this game session queue.
  late final Output<String?> customEventData;

  /// List of fleet/alias ARNs used by session queue for placing game sessions.
  late final Output<List<String>?> destinations;

  /// Name of the session queue.
  late final Output<String> name;

  /// An SNS topic ARN that is set up to receive game session placement notifications.
  late final Output<String?> notificationTarget;

  /// One or more policies used to choose fleet based on player latency. See below.
  late final Output<List<GameSessionQueuePlayerLatencyPolicy>?>
      playerLatencyPolicies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Maximum time a game session request can remain in the queue.
  late final Output<int?> timeoutInSeconds;

  GameSessionQueue(
    String name, {
    GameSessionQueueArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/gameSessionQueue:GameSessionQueue',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.customEventData = registerOutput<String?>('customEventData');
    this.destinations = registerOutput<List<String>?>('destinations');
    this.name = registerOutput<String>('name');
    this.notificationTarget = registerOutput<String?>('notificationTarget');
    this.playerLatencyPolicies =
        registerOutput<List<GameSessionQueuePlayerLatencyPolicy>?>(
            'playerLatencyPolicies');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeoutInSeconds = registerOutput<int?>('timeoutInSeconds');
  }
}
