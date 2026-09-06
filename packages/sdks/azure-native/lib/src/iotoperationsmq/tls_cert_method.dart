// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cert_method.dart';
import 'key_vault_certificate_properties.dart';
import 'manual_cert_method.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethod {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final pulumi.Input<AutomaticCertMethod?>? automatic;
  /// Option 3 - TLS server certificate retrieved from Key Vault..
  final pulumi.Input<KeyVaultCertificateProperties?>? keyVault;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final pulumi.Input<ManualCertMethod?>? manual;

  /// Creates a new [TlsCertMethod].
  /// [automatic] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [keyVault] Option 3 - TLS server certificate retrieved from Key Vault..
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  const TlsCertMethod({
    this.automatic,
    this.keyVault,
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?pulumi.Input.mapOptionalInputValue<AutomaticCertMethod, Map<String, dynamic>>(automatic, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultCertificateProperties, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'manual': ?pulumi.Input.mapOptionalInputValue<ManualCertMethod, Map<String, dynamic>>(manual, (value) => value.toMap()),
    };
  }

  factory TlsCertMethod.fromMap(Map<String, dynamic> map) {
    return TlsCertMethod(
      automatic: (() { final guardedValue = map['automatic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutomaticCertMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVault: (() { final guardedValue = map['keyVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultCertificateProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manual: (() { final guardedValue = map['manual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManualCertMethod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
