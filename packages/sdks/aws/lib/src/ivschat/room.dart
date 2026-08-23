import 'package:pulumi/pulumi.dart' as pulumi;
import 'room_args.dart';
import 'room_message_review_handler.dart';
import 'room_state.dart';

/// Resource for managing an AWS IVS (Interactive Video) Chat Room.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ivschat.Room("example", {name: "tf-room"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ivschat.Room("example", name="tf-room")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.IvsChat.Room("example", new()
///     {
///         Name = "tf-room",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivschat"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ivschat.NewRoom(ctx, "example", &ivschat.RoomArgs{
/// 			Name: pulumi.String("tf-room"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ivschat_room" "example" {
///   name = "tf-room"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ivschat.Room;
/// import com.pulumi.aws.ivschat.RoomArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Room("example", RoomArgs.builder()
///             .name("tf-room")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ivschat:Room
///     properties:
///       name: tf-room
/// ```
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
class Room extends pulumi.CustomResource {
  /// ARN of the Room.
  late final pulumi.Output<String> arn;
  /// List of Logging Configuration
  /// ARNs to attach to the room.
  late final pulumi.Output<List<String>?> loggingConfigurationIdentifiers;
  /// Maximum number of characters in a single
  /// message. Messages are expected to be UTF-8 encoded and this limit applies
  /// specifically to rune/code-point count, not number of bytes.
  late final pulumi.Output<int> maximumMessageLength;
  /// Maximum number of messages per
  /// second that can be sent to the room (by all clients).
  late final pulumi.Output<int> maximumMessageRatePerSecond;
  /// Configuration information for optional
  /// review of messages.
  late final pulumi.Output<RoomMessageReviewHandler?> messageReviewHandler;
  /// Room name.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Room].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Room]. {@macro pulumi_ivschat_room_room_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Room(
    String name, {
    RoomArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/room:Room',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    loggingConfigurationIdentifiers = registerOutput<List<String>?>('loggingConfigurationIdentifiers');
    maximumMessageLength = registerOutput<int>('maximumMessageLength');
    maximumMessageRatePerSecond = registerOutput<int>('maximumMessageRatePerSecond');
    messageReviewHandler = registerOutput<RoomMessageReviewHandler?>('messageReviewHandler', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoomMessageReviewHandler.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Room] resource's state with the given [name] and [id].
  static Room get(
    String name,
    pulumi.Input<String> id, {
    RoomState? state,
  }) {
    return Room._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Room._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivschat/room:Room',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    loggingConfigurationIdentifiers = registerOutput<List<String>?>('loggingConfigurationIdentifiers');
    maximumMessageLength = registerOutput<int>('maximumMessageLength');
    maximumMessageRatePerSecond = registerOutput<int>('maximumMessageRatePerSecond');
    messageReviewHandler = registerOutput<RoomMessageReviewHandler?>('messageReviewHandler', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RoomMessageReviewHandler.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
