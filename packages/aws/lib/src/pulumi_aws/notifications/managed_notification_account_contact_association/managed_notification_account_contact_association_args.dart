// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagedNotificationAccountContactAssociation.
class ManagedNotificationAccountContactAssociationArgs {
  /// A unique value of an Account Contact Type to associate with the ManagedNotificationConfiguration. Valid values: `ACCOUNT_PRIMARY`, `ACCOUNT_ALTERNATE_BILLING`, `ACCOUNT_ALTERNATE_OPERATIONS`, `ACCOUNT_ALTERNATE_SECURITY`.
  final Input<String> contactIdentifier;

  /// ARN of the managed notification configuration to associate the account contact with.
  final Input<String> managedNotificationConfigurationArn;

  ManagedNotificationAccountContactAssociationArgs({
    required this.contactIdentifier,
    required this.managedNotificationConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactIdentifier'] = contactIdentifier;
    map['managedNotificationConfigurationArn'] =
        managedNotificationConfigurationArn;
    return map;
  }

  factory ManagedNotificationAccountContactAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedNotificationAccountContactAssociationArgs(
      contactIdentifier: Input.asInput<String>(map['contactIdentifier']),
      managedNotificationConfigurationArn:
          Input.asInput<String>(map['managedNotificationConfigurationArn']),
    );
  }
}
