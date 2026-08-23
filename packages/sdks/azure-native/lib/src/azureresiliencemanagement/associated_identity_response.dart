// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of associated identity linked with the various resources.
class AssociatedIdentityResponse {
  /// Identity type linked with the resource
  final pulumi.Input<String> type;
  /// User assigned identity id linked with the resource
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [AssociatedIdentityResponse].
  /// [type] Identity type linked with the resource
  /// [userAssignedIdentity] User assigned identity id linked with the resource
  const AssociatedIdentityResponse({
    required this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory AssociatedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AssociatedIdentityResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      userAssignedIdentity: (() { final guardedValue = map['userAssignedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
