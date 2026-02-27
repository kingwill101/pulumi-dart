import 'package:pulumi/pulumi.dart';
import 'channel_association_args.dart';

/// Resource for managing an AWS User Notifications Channel Association. This resource associates a channel (such as an email contact) with a notification configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Channel Association using the `notification_configuration_arn,channel_arn` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/channelAssociation:ChannelAssociation example arn:aws:notifications:us-west-2:123456789012:configuration:example-notification-config,arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ChannelAssociation extends CustomResource {
  /// ARN of the channel to associate with the notification configuration. Must match pattern `^arn:aws:(chatbot|consoleapp|notifications-contacts):[a-zA-Z0-9-]*:[0-9]{12}:[a-zA-Z0-9-_.@]+/[a-zA-Z0-9/_.@:-]+$`.
  late final Output<String> arn;

  /// ARN of the notification configuration to associate the channel with.
  late final Output<String> notificationConfigurationArn;

  ChannelAssociation(
    String name, {
    ChannelAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/channelAssociation:ChannelAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.notificationConfigurationArn =
        registerOutput<String>('notificationConfigurationArn');
  }
}
