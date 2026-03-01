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
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeoutInSeconds] Maximum time a game session request can remain in the queue.
  GameSessionQueueState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? customEventData,
    pulumi.Output<List<String>>? destinations,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notificationTarget,
    pulumi.Output<List<GameSessionQueuePlayerLatencyPolicy>>? playerLatencyPolicies,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? timeoutInSeconds,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      customEventData = pulumi.Input.asOptionalInput<String>(customEventData),
      destinations = pulumi.Input.asOptionalInput<List<String>>(destinations),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationTarget = pulumi.Input.asOptionalInput<String>(notificationTarget),
      playerLatencyPolicies = pulumi.Input.asOptionalInput<List<GameSessionQueuePlayerLatencyPolicy>>(playerLatencyPolicies),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeoutInSeconds = pulumi.Input.asOptionalInput<int>(timeoutInSeconds);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      customEventData: map['customEventData'] == null ? null : pulumi.Output.create<String>(map['customEventData'] as String),
      destinations: map['destinations'] == null ? null : pulumi.Output.create<List<String>>((map['destinations'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notificationTarget: map['notificationTarget'] == null ? null : pulumi.Output.create<String>(map['notificationTarget'] as String),
      playerLatencyPolicies: map['playerLatencyPolicies'] == null ? null : pulumi.Output.create<List<GameSessionQueuePlayerLatencyPolicy>>(pulumi.Input.decodeList<GameSessionQueuePlayerLatencyPolicy>(map['playerLatencyPolicies'], (value) => GameSessionQueuePlayerLatencyPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeoutInSeconds: map['timeoutInSeconds'] == null ? null : pulumi.Output.create<int>(map['timeoutInSeconds'] as int),
    );
  }
}

