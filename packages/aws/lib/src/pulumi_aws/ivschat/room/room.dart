import 'package:pulumi/pulumi.dart';
import '../room_message_review_handler/room_message_review_handler.dart';
import 'room_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Chat Room.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.IvsChat.Room("example", new()
/// {
/// Name = "tf-room",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivschat"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ivschat.NewRoom(ctx, "example", &ivschat.RoomArgs{
/// Name: pulumi.String("tf-room"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Room("example", RoomArgs.builder()
/// .name("tf-room")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ivschat:Room
/// properties:
/// name: tf-room
/// ```
/// <!--End PulumiCodeChooser -->
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IVS Chat room.
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

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
