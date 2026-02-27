// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationalUnitAssociation.
class OrganizationalUnitAssociationArgs {
  /// ARN of the notification configuration to associate the organizational unit with.
  final pulumi.Input<String> notificationConfigurationArn;

  /// ID of the organizational unit or ID of the root to associate with the notification configuration. Can be a root ID (e.g., `r-1234`), or an organization ID (e.g., `o-1234567890`).
  final pulumi.Input<String> organizationalUnitId;

  OrganizationalUnitAssociationArgs({
    required this.notificationConfigurationArn,
    required this.organizationalUnitId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notificationConfigurationArn'] = notificationConfigurationArn;
    map['organizationalUnitId'] = organizationalUnitId;
    return map;
  }

  factory OrganizationalUnitAssociationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationalUnitAssociationArgs(
      notificationConfigurationArn:
          pulumi.Input.asInput<String>(map['notificationConfigurationArn']),
      organizationalUnitId:
          pulumi.Input.asInput<String>(map['organizationalUnitId']),
    );
  }
}
