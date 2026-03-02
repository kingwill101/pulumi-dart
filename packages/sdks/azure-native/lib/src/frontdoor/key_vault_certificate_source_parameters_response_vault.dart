// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Key Vault containing the SSL certificate
class KeyVaultCertificateSourceParametersResponseVault {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [KeyVaultCertificateSourceParametersResponseVault].
  /// [id] Resource ID.
  KeyVaultCertificateSourceParametersResponseVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultCertificateSourceParametersResponseVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateSourceParametersResponseVault(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

