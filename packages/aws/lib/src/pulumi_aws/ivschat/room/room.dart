import 'package:pulumi/pulumi.dart';
import '../room_message_review_handler/room_message_review_handler.dart';
import 'room_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Chat Room.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS Chat room.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Chat Room using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivschat/room:Room example arn:aws:ivschat:us-west-2:326937407773:room/GoXEXyB4VwHb
/// ```
class Room extends CustomResource {
  /// ARN of the Room.
  late final Output<String> arn;

  /// List of Logging Configuration
  /// ARNs to attach to the room.
  late final Output<List<String>?> loggingConfigurationIdentifiers;

  /// Maximum number of characters in a single
  /// message. Messages are expected to be UTF-8 encoded and this limit applies
  /// specifically to rune/code-point count, not number of bytes.
  late final Output<int> maximumMessageLength;

  /// Maximum number of messages per
  /// second that can be sent to the room (by all clients).
  late final Output<int> maximumMessageRatePerSecond;

  /// Configuration information for optional
  /// review of messages.
  late final Output<RoomMessageReviewHandler?> messageReviewHandler;

  /// Room name.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Room(
    String name, {
    RoomArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/room:Room',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.loggingConfigurationIdentifiers =
        registerOutput<List<String>?>('loggingConfigurationIdentifiers');
    this.maximumMessageLength = registerOutput<int>('maximumMessageLength');
    this.maximumMessageRatePerSecond =
        registerOutput<int>('maximumMessageRatePerSecond');
    this.messageReviewHandler =
        registerOutput<RoomMessageReviewHandler?>('messageReviewHandler');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
