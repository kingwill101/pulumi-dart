// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../room_message_review_handler/room_message_review_handler.dart';

/// The set of arguments for Room.
class RoomArgs {
  /// List of Logging Configuration
  /// ARNs to attach to the room.
  final Input<List<String>>? loggingConfigurationIdentifiers;

  /// Maximum number of characters in a single
  /// message. Messages are expected to be UTF-8 encoded and this limit applies
  /// specifically to rune/code-point count, not number of bytes.
  final Input<int>? maximumMessageLength;

  /// Maximum number of messages per
  /// second that can be sent to the room (by all clients).
  final Input<int>? maximumMessageRatePerSecond;

  /// Configuration information for optional
  /// review of messages.
  final Input<RoomMessageReviewHandler>? messageReviewHandler;

  /// Room name.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
    final map = <String, dynamic>{};
    final loggingConfigurationIdentifiersValue =
        loggingConfigurationIdentifiers;
    if (loggingConfigurationIdentifiersValue != null) {
      map['loggingConfigurationIdentifiers'] =
          loggingConfigurationIdentifiersValue;
    }
    final maximumMessageLengthValue = maximumMessageLength;
    if (maximumMessageLengthValue != null) {
      map['maximumMessageLength'] = maximumMessageLengthValue;
    }
    final maximumMessageRatePerSecondValue = maximumMessageRatePerSecond;
    if (maximumMessageRatePerSecondValue != null) {
      map['maximumMessageRatePerSecond'] = maximumMessageRatePerSecondValue;
    }
    final messageReviewHandlerValue = messageReviewHandler;
    if (messageReviewHandlerValue != null) {
      map['messageReviewHandler'] = Input.mapOptionalInputValue<
              RoomMessageReviewHandler, Map<String, dynamic>>(
          messageReviewHandlerValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RoomArgs.fromMap(Map<String, dynamic> map) {
    return RoomArgs(
      loggingConfigurationIdentifiers: Input.asOptionalInput<List<String>>(
          map['loggingConfigurationIdentifiers']),
      maximumMessageLength:
          Input.asOptionalInput<int>(map['maximumMessageLength']),
      maximumMessageRatePerSecond:
          Input.asOptionalInput<int>(map['maximumMessageRatePerSecond']),
      messageReviewHandler: Input.asOptionalInput<RoomMessageReviewHandler>(
          map['messageReviewHandler']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
