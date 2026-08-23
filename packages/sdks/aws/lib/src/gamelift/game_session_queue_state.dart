// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'game_session_queue_player_latency_policy.dart';

/// Input properties used for looking up and filtering GameSessionQueue resources.
class GameSessionQueueState {
  /// Game Session Queue ARN.
  final pulumi.Input<String>? arn;
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
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Maximum time a game session request can remain in the queue.
  final pulumi.Input<int>? timeoutInSeconds;

  /// Creates a new [GameSessionQueueState].
  /// [arn] Game Session Queue ARN.
  /// [customEventData] Information to be added to all events that are related to this game session queue.
  /// [destinations] List of fleet/alias ARNs used by session queue for placing game sessions.
  /// [name] Name of the session queue.
  /// [notificationTarget] An SNS topic ARN that is set up to receive game session placement notifications.
  /// [playerLatencyPolicies] One or more policies used to choose fleet based on player latency. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeoutInSeconds] Maximum time a game session request can remain in the queue.
  const GameSessionQueueState({
    this.arn,
    this.customEventData,
    this.destinations,
    this.name,
    this.notificationTarget,
    this.playerLatencyPolicies,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customEventData': ?customEventData,
      'destinations': ?destinations,
      'name': ?name,
      'notificationTarget': ?notificationTarget,
      'playerLatencyPolicies': ?pulumi.Input.mapOptionalInputValue<List<GameSessionQueuePlayerLatencyPolicy>, List<Map<String, dynamic>>>(playerLatencyPolicies, (value) => pulumi.Input.encodeList<GameSessionQueuePlayerLatencyPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeoutInSeconds': ?timeoutInSeconds,
    };
  }

  factory GameSessionQueueState.fromMap(Map<String, dynamic> map) {
    return GameSessionQueueState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEventData: (() { final guardedValue = map['customEventData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationTarget: (() { final guardedValue = map['notificationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      playerLatencyPolicies: (() { final guardedValue = map['playerLatencyPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(guardedValue, (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
