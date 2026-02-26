import 'package:pulumi/pulumi.dart';
import '../notification_hub_timeouts/notification_hub_timeouts.dart';
import 'notification_hub_args.dart';

/// Resource for managing an AWS User Notifications Notification Hub.
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
/// var example = new Aws.Notifications.NotificationHub("example", new()
/// {
/// NotificationHubRegion = "us-west-2",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := notifications.NewNotificationHub(ctx, "example", &notifications.NotificationHubArgs{
/// NotificationHubRegion: pulumi.String("us-west-2"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new NotificationHub("example", NotificationHubArgs.builder()
/// .notificationHubRegion("us-west-2")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:notifications:NotificationHub
/// properties:
/// notificationHubRegion: us-west-2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Notification Hub using the <span pulumi-lang-nodejs="`notificationHubRegion " pulumi-lang-dotnet="`NotificationHubRegion " pulumi-lang-go="`notificationHubRegion " pulumi-lang-python="`notification_hub_region " pulumi-lang-yaml="`notificationHubRegion " pulumi-lang-java="`notificationHubRegion ">`notification_hub_region </span>`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/notificationHub:NotificationHub example us-west-2
/// ```
class NotificationHub extends CustomResource {
  /// Notification Hub region.
  late final Output<String> notificationHubRegion;
  late final Output<NotificationHubTimeouts?> timeouts;

  NotificationHub(
    String name, {
    NotificationHubArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationHub:NotificationHub',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.notificationHubRegion = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<NotificationHubTimeouts?>();
  }
}
