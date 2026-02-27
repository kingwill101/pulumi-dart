// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../game_session_queue_player_latency_policy/game_session_queue_player_latency_policy.dart';

/// The set of arguments for GameSessionQueue.
class GameSessionQueueArgs {
  /// Information to be added to all events that are related to this game session queue.
  final Input<String>? customEventData;

  /// List of fleet/alias ARNs used by session queue for placing game sessions.
  final Input<List<String>>? destinations;

  /// Name of the session queue.
  final Input<String>? name;

  /// An SNS topic ARN that is set up to receive game session placement notifications.
  final Input<String>? notificationTarget;

  /// One or more policies used to choose fleet based on player latency. See below.
  final Input<List<GameSessionQueuePlayerLatencyPolicy>>? playerLatencyPolicies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Maximum time a game session request can remain in the queue.
  final Input<int>? timeoutInSeconds;

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
    final map = <String, dynamic>{};
    final customEventDataValue = customEventData;
    if (customEventDataValue != null) {
      map['customEventData'] = customEventDataValue;
    }
    final destinationsValue = destinations;
    if (destinationsValue != null) {
      map['destinations'] = destinationsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationTargetValue = notificationTarget;
    if (notificationTargetValue != null) {
      map['notificationTarget'] = notificationTargetValue;
    }
    final playerLatencyPoliciesValue = playerLatencyPolicies;
    if (playerLatencyPoliciesValue != null) {
      map['playerLatencyPolicies'] = Input.mapOptionalInputValue<
              List<GameSessionQueuePlayerLatencyPolicy>,
              List<Map<String, dynamic>>>(
          playerLatencyPoliciesValue,
          (value) => Input.encodeList<GameSessionQueuePlayerLatencyPolicy,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutInSecondsValue = timeoutInSeconds;
    if (timeoutInSecondsValue != null) {
      map['timeoutInSeconds'] = timeoutInSecondsValue;
    }
    return map;
  }

  factory GameSessionQueueArgs.fromMap(Map<String, dynamic> map) {
    return GameSessionQueueArgs(
      customEventData: Input.asOptionalInput<String>(map['customEventData']),
      destinations: Input.asOptionalInput<List<String>>(map['destinations']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationTarget:
          Input.asOptionalInput<String>(map['notificationTarget']),
      playerLatencyPolicies:
          Input.asOptionalInput<List<GameSessionQueuePlayerLatencyPolicy>>(
              map['playerLatencyPolicies']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeoutInSeconds: Input.asOptionalInput<int>(map['timeoutInSeconds']),
    );
  }
}
