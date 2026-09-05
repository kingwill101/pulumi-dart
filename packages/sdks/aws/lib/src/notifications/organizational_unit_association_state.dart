// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationalUnitAssociation resources.
class OrganizationalUnitAssociationState {
  /// ARN of the notification configuration to associate the organizational unit with.
  final pulumi.Input<String?>? notificationConfigurationArn;
  /// ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  final pulumi.Input<String?>? organizationalUnitId;

  /// Creates a new [OrganizationalUnitAssociationState].
  /// [notificationConfigurationArn] ARN of the notification configuration to associate the organizational unit with.
  /// [organizationalUnitId] ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  const OrganizationalUnitAssociationState({
    this.notificationConfigurationArn,
    this.organizationalUnitId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigurationArn': ?notificationConfigurationArn,
      'organizationalUnitId': ?organizationalUnitId,
    };
  }

  factory OrganizationalUnitAssociationState.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitAssociationState(
      notificationConfigurationArn: (() { final guardedValue = map['notificationConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationalUnitId: (() { final guardedValue = map['organizationalUnitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
