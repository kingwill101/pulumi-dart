import 'package:pulumi/pulumi.dart';
import 'managed_notification_account_contact_association_args.dart';

/// Resource for managing an AWS User Notifications Managed Notification Account Contact Association. This resource associates an account contact with a managed notification configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Managed Notification Account Contact Association using the `managed_notification_configuration_arn,contact_identifier` format. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation example arn:aws:notifications::123456789012:managed-notification-configuration/category/AWS-Health/sub-category/Security,ACCOUNT_PRIMARY
/// ```
class ManagedNotificationAccountContactAssociation extends CustomResource {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  late final Output<String> contactIdentifier;

  /// ARN of the managed notification configuration to associate the account contact with.
  late final Output<String> managedNotificationConfigurationArn;

  ManagedNotificationAccountContactAssociation(
    String name, {
    ManagedNotificationAccountContactAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:notifications/managedNotificationAccountContactAssociation:ManagedNotificationAccountContactAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactIdentifier = registerOutput<String>('contactIdentifier');
    this.managedNotificationConfigurationArn =
        registerOutput<String>('managedNotificationConfigurationArn');
  }
}
