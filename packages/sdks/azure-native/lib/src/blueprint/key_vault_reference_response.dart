// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the link to a Key Vault.
class KeyVaultReferenceResponse {
  /// Azure resource ID of the Key Vault.
  final pulumi.Input<String> id;

  /// Creates a new [KeyVaultReferenceResponse].
  /// [id] Azure resource ID of the Key Vault.
  const KeyVaultReferenceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory KeyVaultReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultReferenceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
