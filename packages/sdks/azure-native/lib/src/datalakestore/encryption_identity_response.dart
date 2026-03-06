// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryption identity properties.
class EncryptionIdentityResponse {
  /// The principal identifier associated with the encryption.
  final pulumi.Input<String> principalId;
  /// The tenant identifier associated with the encryption.
  final pulumi.Input<String> tenantId;
  /// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionIdentityResponse].
  /// [principalId] The principal identifier associated with the encryption.
  /// [tenantId] The tenant identifier associated with the encryption.
  /// [type] The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  const EncryptionIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory EncryptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

