// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notifications_organizational_unit_association_organizational_unit_association_args_doc}
/// The set of arguments for OrganizationalUnitAssociation.
/// {@endtemplate}
/// {@macro pulumi_notifications_organizational_unit_association_organizational_unit_association_args_doc}
class OrganizationalUnitAssociationArgs {
  /// ARN of the notification configuration to associate the organizational unit with.
  final pulumi.Input<String> notificationConfigurationArn;
  /// ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  final pulumi.Input<String> organizationalUnitId;

  /// Creates a new [OrganizationalUnitAssociationArgs].
  /// [notificationConfigurationArn] ARN of the notification configuration to associate the organizational unit with.
  /// [organizationalUnitId] ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  OrganizationalUnitAssociationArgs({
    required this.notificationConfigurationArn,
    required this.organizationalUnitId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationConfigurationArn': notificationConfigurationArn,
      'organizationalUnitId': organizationalUnitId,
    };
  }

  factory OrganizationalUnitAssociationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitAssociationArgs(
      notificationConfigurationArn: pulumi.Input.fromValue(map['notificationConfigurationArn'] as String),
      organizationalUnitId: pulumi.Input.fromValue(map['organizationalUnitId'] as String),
    );
  }
}

