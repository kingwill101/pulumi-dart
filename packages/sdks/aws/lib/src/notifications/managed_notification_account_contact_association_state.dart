// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedNotificationAccountContactAssociation resources.
class ManagedNotificationAccountContactAssociationState {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  final pulumi.Input<String>? contactIdentifier;
  /// ARN of the managed notification configuration to associate the account contact with.
  final pulumi.Input<String>? managedNotificationConfigurationArn;

  /// Creates a new [ManagedNotificationAccountContactAssociationState].
  /// [contactIdentifier] A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  /// [managedNotificationConfigurationArn] ARN of the managed notification configuration to associate the account contact with.
  ManagedNotificationAccountContactAssociationState({
    this.contactIdentifier,
    this.managedNotificationConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactIdentifier': ?contactIdentifier,
      'managedNotificationConfigurationArn': ?managedNotificationConfigurationArn,
    };
  }

  factory ManagedNotificationAccountContactAssociationState.fromMap(Map<String, dynamic> map) {
    return ManagedNotificationAccountContactAssociationState(
      contactIdentifier: map['contactIdentifier'] == null ? null : ((map['contactIdentifier'] as String).input()).input(),
      managedNotificationConfigurationArn: map['managedNotificationConfigurationArn'] == null ? null : ((map['managedNotificationConfigurationArn'] as String).input()).input(),
    );
  }
}

