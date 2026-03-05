import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_hub_args.dart';
import 'notification_hub_state.dart';
import 'notification_hub_timeouts.dart';

/// Resource for managing an AWS User Notifications Notification Hub.
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
/// const example = new aws.notifications.NotificationHub("example", {notificationHubRegion: "us-west-2"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.NotificationHub("example", notification_hub_region="us-west-2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Notifications.NotificationHub("example", new()
///     {
///         NotificationHubRegion = "us-west-2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notifications.NewNotificationHub(ctx, "example", &notifications.NotificationHubArgs{
/// 			NotificationHubRegion: pulumi.String("us-west-2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.notifications.NotificationHub;
/// import com.pulumi.aws.notifications.NotificationHubArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new NotificationHub("example", NotificationHubArgs.builder()
///             .notificationHubRegion("us-west-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:NotificationHub
///     properties:
///       notificationHubRegion: us-west-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Notification Hub using the `notification_hub_region `. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/notificationHub:NotificationHub example us-west-2
/// ```
class NotificationHub extends pulumi.CustomResource {
  /// Notification Hub region.
  late final pulumi.Output<String> notificationHubRegion;
  late final pulumi.Output<NotificationHubTimeouts?> timeouts;

  /// Creates a new [NotificationHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationHub]. {@macro pulumi_notifications_notification_hub_notification_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationHub(
    String name, {
    NotificationHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationHub:NotificationHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    notificationHubRegion = registerOutput<String>('notificationHubRegion');
    timeouts = registerOutput<NotificationHubTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationHubTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [NotificationHub] resource's state with the given [name] and [id].
  static NotificationHub get(
    String name,
    pulumi.Input<String> id, {
    NotificationHubState? state,
  }) {
    return NotificationHub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationHub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationHub:NotificationHub',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    notificationHubRegion = registerOutput<String>('notificationHubRegion');
    timeouts = registerOutput<NotificationHubTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NotificationHubTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
