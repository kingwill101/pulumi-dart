// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For user assigned identity resource property.
class IdentityResponse {
  /// The client ID of the assigned identity.
  final pulumi.Input<String> clientId;
  /// The resource ID of the user assigned identity.
  final pulumi.Input<String> id;
  /// The principal ID of the assigned identity.
  final pulumi.Input<String> principalId;

  /// Creates a new [IdentityResponse].
  /// [clientId] The client ID of the assigned identity.
  /// [id] The resource ID of the user assigned identity.
  /// [principalId] The principal ID of the assigned identity.
  const IdentityResponse({
    required this.clientId,
    required this.id,
    required this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'id': id,
      'principalId': principalId,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
    );
  }
}
