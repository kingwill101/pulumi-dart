// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Key Vault containing the SSL certificate
class KeyVaultCertificateSourceParametersResponseVault {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [KeyVaultCertificateSourceParametersResponseVault].
  /// [id] Resource ID.
  const KeyVaultCertificateSourceParametersResponseVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultCertificateSourceParametersResponseVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateSourceParametersResponseVault(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

