// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_managed_notification_account_contact_association_managed_notification_account_contact_association_args_doc}
/// The set of arguments for ManagedNotificationAccountContactAssociation.
/// {@endtemplate}
/// {@macro pulumi_notifications_managed_notification_account_contact_association_managed_notification_account_contact_association_args_doc}
class ManagedNotificationAccountContactAssociationArgs {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  final pulumi.Input<String> contactIdentifier;
  /// ARN of the managed notification configuration to associate the account contact with.
  final pulumi.Input<String> managedNotificationConfigurationArn;

  /// Creates a new [ManagedNotificationAccountContactAssociationArgs].
  /// [contactIdentifier] A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  /// [managedNotificationConfigurationArn] ARN of the managed notification configuration to associate the account contact with.
  ManagedNotificationAccountContactAssociationArgs({
    required pulumi.Output<String> contactIdentifier,
    required pulumi.Output<String> managedNotificationConfigurationArn,
  }) :
      contactIdentifier = pulumi.Input.asInput<String>(contactIdentifier),
      managedNotificationConfigurationArn = pulumi.Input.asInput<String>(managedNotificationConfigurationArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactIdentifier': contactIdentifier,
      'managedNotificationConfigurationArn': managedNotificationConfigurationArn,
    };
  }

  factory ManagedNotificationAccountContactAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ManagedNotificationAccountContactAssociationArgs(
      contactIdentifier: pulumi.Output.create<String>(map['contactIdentifier'] as String),
      managedNotificationConfigurationArn: pulumi.Output.create<String>(map['managedNotificationConfigurationArn'] as String),
    );
  }
}

