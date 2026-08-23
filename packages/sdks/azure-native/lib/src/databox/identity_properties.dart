// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_assigned_properties.dart';

/// Managed identity properties.
class IdentityProperties {
  /// Managed service identity type.
  final pulumi.Input<String>? type;
  /// User assigned identity properties.
  final pulumi.Input<UserAssignedProperties>? userAssigned;

  /// Creates a new [IdentityProperties].
  /// [type] Managed service identity type.
  /// [userAssigned] User assigned identity properties.
  const IdentityProperties({
    this.type,
    this.userAssigned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssigned': ?pulumi.Input.mapOptionalInputValue<UserAssignedProperties, Map<String, dynamic>>(userAssigned, (value) => value.toMap()),
    };
  }

  factory IdentityProperties.fromMap(Map<String, dynamic> map) {
    return IdentityProperties(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userAssigned: (() { final guardedValue = map['userAssigned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAssignedProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
