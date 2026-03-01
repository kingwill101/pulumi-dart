// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_properties.dart';

/// Managed identity properties.
class IdentityProperties {
  /// Managed service identity type.
  final String? type;
  /// User assigned identity properties.
  final UserAssignedProperties? userAssigned;

  /// Creates a new [IdentityProperties].
  /// [type] Managed service identity type.
  /// [userAssigned] User assigned identity properties.
  IdentityProperties({
    this.type,
    this.userAssigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssigned': ?userAssigned == null ? null : userAssigned!.toMap(),
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      type: map['type'] == null ? null : map['type'] as String,
      userAssigned: map['userAssigned'] == null ? null : UserAssignedProperties.fromMap((map['userAssigned'] as Map).cast<String, dynamic>()),
    );
  }
}

