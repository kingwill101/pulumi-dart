import 'package:pulumi/pulumi.dart';
import 'managed_notification_additional_channel_association_args.dart';

/// Resource for managing an AWS User Notifications Managed Notification Additional Channel Association. This resource associates a channel (such as an email contact, mobile device, or chat channel) with a managed notification.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Managed Notification Additional Channel Association using the `managed_notification_arn,channel_arn` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/managedNotificationAdditionalChannelAssociation:ManagedNotificationAdditionalChannelAssociation example arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security,arn:aws:notificationscontacts:us-west-2:123456789012:emailcontact:example-contact
/// ```
class ManagedNotificationAdditionalChannelAssociation extends CustomResource {
  /// ARN of the channel to associate with the managed notification.
  late final Output<String> channelArn;

  /// ARN of the managed notification to associate the channel with.
  late final Output<String> managedNotificationArn;

  ManagedNotificationAdditionalChannelAssociation(
    String name, {
    ManagedNotificationAdditionalChannelAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAdditionalChannelAssociation:ManagedNotificationAdditionalChannelAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelArn = registerOutput<String>('channelArn');
    this.managedNotificationArn =
        registerOutput<String>('managedNotificationArn');
  }
}
