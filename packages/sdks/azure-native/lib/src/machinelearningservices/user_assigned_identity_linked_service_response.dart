// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User Assigned Identity
class UserAssignedIdentityLinkedServiceResponse {
  /// The clientId(aka appId) of the user assigned identity.
  final pulumi.Input<String> clientId;
  /// The principal ID of the user assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of the user assigned identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [UserAssignedIdentityLinkedServiceResponse].
  /// [clientId] The clientId(aka appId) of the user assigned identity.
  /// [principalId] The principal ID of the user assigned identity.
  /// [tenantId] The tenant ID of the user assigned identity.
  const UserAssignedIdentityLinkedServiceResponse({
    required this.clientId,
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory UserAssignedIdentityLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return UserAssignedIdentityLinkedServiceResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
