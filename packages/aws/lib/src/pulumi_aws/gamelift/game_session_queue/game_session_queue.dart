import 'package:pulumi/pulumi.dart';
import '../game_session_queue_player_latency_policy/game_session_queue_player_latency_policy.dart';
import 'game_session_queue_args.dart';

/// Provides an GameLift Game Session Queue resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Game Session Queues using their `name`. For example:
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

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
