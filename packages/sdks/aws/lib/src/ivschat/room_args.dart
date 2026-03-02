// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'room_message_review_handler.dart';

/// {@template pulumi_ivschat_room_room_args_doc}
/// The set of arguments for Room.
/// {@endtemplate}
/// {@macro pulumi_ivschat_room_room_args_doc}
class RoomArgs {
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

  /// Creates a new [RoomArgs].
  /// [loggingConfigurationIdentifiers] List of Logging Configuration
  /// [maximumMessageLength] Maximum number of characters in a single
  /// [maximumMessageRatePerSecond] Maximum number of messages per
  /// [messageReviewHandler] Configuration information for optional
  /// [name] Room name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RoomArgs({
    this.loggingConfigurationIdentifiers,
    this.maximumMessageLength,
    this.maximumMessageRatePerSecond,
    this.messageReviewHandler,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingConfigurationIdentifiers': ?loggingConfigurationIdentifiers,
      'maximumMessageLength': ?maximumMessageLength,
      'maximumMessageRatePerSecond': ?maximumMessageRatePerSecond,
      'messageReviewHandler': ?pulumi.Input.mapOptionalInputValue<RoomMessageReviewHandler, Map<String, dynamic>>(messageReviewHandler, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RoomArgs.fromMap(Map<String, dynamic> map) {
    return RoomArgs(
      loggingConfigurationIdentifiers: map['loggingConfigurationIdentifiers'] == null ? null : (((map['loggingConfigurationIdentifiers'] as List).cast<String>()).input()).input(),
      maximumMessageLength: map['maximumMessageLength'] == null ? null : ((map['maximumMessageLength'] as int).input()).input(),
      maximumMessageRatePerSecond: map['maximumMessageRatePerSecond'] == null ? null : ((map['maximumMessageRatePerSecond'] as int).input()).input(),
      messageReviewHandler: map['messageReviewHandler'] == null ? null : ((RoomMessageReviewHandler.fromMap((map['messageReviewHandler']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

