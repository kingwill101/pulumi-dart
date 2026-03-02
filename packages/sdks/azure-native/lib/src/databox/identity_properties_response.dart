// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_properties_response.dart';

/// Managed identity properties.
class IdentityPropertiesResponse {
  /// Managed service identity type.
  final pulumi.Input<String>? type;
  /// User assigned identity properties.
  final pulumi.Input<UserAssignedPropertiesResponse>? userAssigned;

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
      'userAssigned': ?pulumi.Input.mapOptionalInputValue<UserAssignedPropertiesResponse, Map<String, dynamic>>(userAssigned, (value) => value.toMap()),
    };
  }

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssigned: map['userAssigned'] == null ? null : (UserAssignedPropertiesResponse.fromMap((map['userAssigned'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

