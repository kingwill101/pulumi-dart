// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'room_message_review_handler.dart';

/// Input properties used for looking up and filtering Room resources.
class RoomState {
  /// ARN of the Room.
  final pulumi.Input<String>? arn;
  /// List of Logging Configuration
  /// ARNs to attach to the room.
  final pulumi.Input<List<String>>? loggingConfigurationIdentifiers;
  /// Maximum number of characters in a single
  /// message. Messages are expected to be UTF-8 encoded and this limit applies
  /// specifically to rune/code-point count, not number of bytes.
  final pulumi.Input<int>? maximumMessageLength;
  /// Maximum number of messages per
  /// second that can be sent to the room (by all clients).
  final pulumi.Input<int>? maximumMessageRatePerSecond;
  /// Configuration information for optional
  /// review of messages.
  final pulumi.Input<RoomMessageReviewHandler>? messageReviewHandler;
  /// Room name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RoomState].
  /// [arn] ARN of the Room.
  /// [loggingConfigurationIdentifiers] List of Logging Configuration
  /// [maximumMessageLength] Maximum number of characters in a single
  /// [maximumMessageRatePerSecond] Maximum number of messages per
  /// [messageReviewHandler] Configuration information for optional
  /// [name] Room name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RoomState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? loggingConfigurationIdentifiers,
    pulumi.Output<int>? maximumMessageLength,
    pulumi.Output<int>? maximumMessageRatePerSecond,
    pulumi.Output<RoomMessageReviewHandler>? messageReviewHandler,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      loggingConfigurationIdentifiers = pulumi.Input.asOptionalInput<List<String>>(loggingConfigurationIdentifiers),
      maximumMessageLength = pulumi.Input.asOptionalInput<int>(maximumMessageLength),
      maximumMessageRatePerSecond = pulumi.Input.asOptionalInput<int>(maximumMessageRatePerSecond),
      messageReviewHandler = pulumi.Input.asOptionalInput<RoomMessageReviewHandler>(messageReviewHandler),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'loggingConfigurationIdentifiers': ?loggingConfigurationIdentifiers,
      'maximumMessageLength': ?maximumMessageLength,
      'maximumMessageRatePerSecond': ?maximumMessageRatePerSecond,
      'messageReviewHandler': ?pulumi.Input.mapOptionalInputValue<RoomMessageReviewHandler, Map<String, dynamic>>(messageReviewHandler, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RoomState.fromMap(Map<String, dynamic> map) {
    return RoomState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      loggingConfigurationIdentifiers: map['loggingConfigurationIdentifiers'] == null ? null : pulumi.Output.create<List<String>>((map['loggingConfigurationIdentifiers'] as List).cast<String>()),
      maximumMessageLength: map['maximumMessageLength'] == null ? null : pulumi.Output.create<int>(map['maximumMessageLength'] as int),
      maximumMessageRatePerSecond: map['maximumMessageRatePerSecond'] == null ? null : pulumi.Output.create<int>(map['maximumMessageRatePerSecond'] as int),
      messageReviewHandler: map['messageReviewHandler'] == null ? null : pulumi.Output.create<RoomMessageReviewHandler>(RoomMessageReviewHandler.fromMap((map['messageReviewHandler'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

