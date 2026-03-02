// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the link to a Key Vault.
class KeyVaultReference {
  /// Azure resource ID of the Key Vault.
  final pulumi.Input<String> id;

  /// Creates a new [KeyVaultReference].
  /// [id] Azure resource ID of the Key Vault.
  KeyVaultReference({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: (map['id'] as String).input(),
    );
  }
}

