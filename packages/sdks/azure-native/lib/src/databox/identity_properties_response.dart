// ignore_for_file: unused_element, unnecessary_cast

import 'user_assigned_properties_response.dart';

/// Managed identity properties.
class IdentityPropertiesResponse {
  /// Managed service identity type.
  final String? type;
  /// User assigned identity properties.
  final UserAssignedPropertiesResponse? userAssigned;

  /// Creates a new [IdentityPropertiesResponse].
  /// [type] Managed service identity type.
  /// [userAssigned] User assigned identity properties.
  IdentityPropertiesResponse({
    this.type,
    this.userAssigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssigned': ?userAssigned == null ? null : userAssigned!.toMap(),
    };
  }

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
      type: map['type'] == null ? null : map['type'] as String,
      userAssigned: map['userAssigned'] == null ? null : UserAssignedPropertiesResponse.fromMap((map['userAssigned'] as Map).cast<String, dynamic>()),
    );
  }
}

