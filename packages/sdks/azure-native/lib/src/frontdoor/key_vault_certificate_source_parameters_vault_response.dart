// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Key Vault containing the SSL certificate
class KeyVaultCertificateSourceParametersVaultResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Creates a new [KeyVaultCertificateSourceParametersVaultResponse].
  /// [id] Resource ID.
  const KeyVaultCertificateSourceParametersVaultResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultCertificateSourceParametersVaultResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateSourceParametersVaultResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
