// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned identity properties.
class UserAssignedProperties {
  /// Arm resource id for user assigned identity to be used to fetch MSI token.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [UserAssignedProperties].
  /// [resourceId] Arm resource id for user assigned identity to be used to fetch MSI token.
  UserAssignedProperties({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory UserAssignedProperties.fromMap(Map<String, dynamic> map) {
    return UserAssignedProperties(
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

