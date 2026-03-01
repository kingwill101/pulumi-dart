// ignore_for_file: unused_element, unnecessary_cast

import 'automatic_cert_method.dart';
import 'key_vault_certificate_properties.dart';
import 'manual_cert_method.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethod {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final AutomaticCertMethod? automatic;
  /// Option 3 - TLS server certificate retrieved from Key Vault..
  final KeyVaultCertificateProperties? keyVault;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final ManualCertMethod? manual;

  /// Creates a new [TlsCertMethod].
  /// [automatic] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [keyVault] Option 3 - TLS server certificate retrieved from Key Vault..
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  TlsCertMethod({
    this.automatic,
    this.keyVault,
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic == null ? null : automatic!.toMap(),
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'manual': ?manual == null ? null : manual!.toMap(),
    };
  }

  factory TlsCertMethod.fromMap(Map<String, dynamic> map) {
    return TlsCertMethod(
      automatic: map['automatic'] == null ? null : AutomaticCertMethod.fromMap((map['automatic'] as Map).cast<String, dynamic>()),
      keyVault: map['keyVault'] == null ? null : KeyVaultCertificateProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      manual: map['manual'] == null ? null : ManualCertMethod.fromMap((map['manual'] as Map).cast<String, dynamic>()),
    );
  }
}

