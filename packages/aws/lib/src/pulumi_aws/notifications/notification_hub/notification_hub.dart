import 'package:pulumi/pulumi.dart' as pulumi;
import '../notification_hub_timeouts/notification_hub_timeouts.dart';
import 'notification_hub_args.dart';

/// Resource for managing an AWS User Notifications Notification Hub.
///
/// ## Example Usage
///
/// ### Basic Usage
///
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
    this.notificationHubRegion =
        registerOutput<String>('notificationHubRegion');
    this.timeouts = registerOutput<NotificationHubTimeouts?>('timeouts');
  }
}
