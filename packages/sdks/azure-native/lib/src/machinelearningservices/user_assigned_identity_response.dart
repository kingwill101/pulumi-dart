// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User assigned identity properties
class UserAssignedIdentityResponse {
  /// The client ID of the assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of the user assigned identity.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [UserAssignedIdentityResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  /// [tenantId] The tenant ID of the user assigned identity.
  UserAssignedIdentityResponse({
    required this.clientId,
    required this.principalId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': ?tenantId,
    };
  }

  factory UserAssignedIdentityResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

