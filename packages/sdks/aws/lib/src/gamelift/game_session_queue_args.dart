// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_session_queue_player_latency_policy.dart';

/// {@template pulumi_gamelift_game_session_queue_game_session_queue_args_doc}
/// The set of arguments for GameSessionQueue.
/// {@endtemplate}
/// {@macro pulumi_gamelift_game_session_queue_game_session_queue_args_doc}
class GameSessionQueueArgs {
  /// Information to be added to all events that are related to this game session queue.
  final pulumi.Input<String>? customEventData;
  /// List of fleet/alias ARNs used by session queue for placing game sessions.
  final pulumi.Input<List<String>>? destinations;
  /// Name of the session queue.
  final pulumi.Input<String>? name;
  /// An SNS topic ARN that is set up to receive game session placement notifications.
  final pulumi.Input<String>? notificationTarget;
  /// One or more policies used to choose fleet based on player latency. See below.
  final pulumi.Input<List<GameSessionQueuePlayerLatencyPolicy>>? playerLatencyPolicies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Maximum time a game session request can remain in the queue.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [GameSessionQueueArgs].
  /// [customEventData] Information to be added to all events that are related to this game session queue.
  /// [destinations] List of fleet/alias ARNs used by session queue for placing game sessions.
  /// [name] Name of the session queue.
  /// [notificationTarget] An SNS topic ARN that is set up to receive game session placement notifications.
  /// [playerLatencyPolicies] One or more policies used to choose fleet based on player latency. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeoutInSeconds] Maximum time a game session request can remain in the queue.
  GameSessionQueueArgs({
    this.customEventData,
    this.destinations,
    this.name,
    this.notificationTarget,
    this.playerLatencyPolicies,
    this.region,
    this.tags,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEventData': ?customEventData,
      'destinations': ?destinations,
      'name': ?name,
      'notificationTarget': ?notificationTarget,
      'playerLatencyPolicies': ?pulumi.Input.mapOptionalInputValue<List<GameSessionQueuePlayerLatencyPolicy>, List<Map<String, dynamic>>>(playerLatencyPolicies, (value) => pulumi.Input.encodeList<GameSessionQueuePlayerLatencyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory GameSessionQueueArgs.fromMap(Map<String, dynamic> map) {
    return GameSessionQueueArgs(
      customEventData: map['customEventData'] == null ? null : ((map['customEventData'] as String).input()).input(),
      destinations: map['destinations'] == null ? null : (((map['destinations'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      notificationTarget: map['notificationTarget'] == null ? null : ((map['notificationTarget'] as String).input()).input(),
      playerLatencyPolicies: map['playerLatencyPolicies'] == null ? null : ((pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(map['playerLatencyPolicies']!, (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : ((map['timeoutInSeconds'] as int).input()).input(),
    );
  }
}

