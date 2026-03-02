// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automatic_cert_method_response.dart';
import 'key_vault_certificate_properties_response.dart';
import 'manual_cert_method_response.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethodResponse {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final pulumi.Input<AutomaticCertMethodResponse>? automatic;
  /// Option 3 - TLS server certificate retrieved from Key Vault..
  final pulumi.Input<KeyVaultCertificatePropertiesResponse>? keyVault;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final pulumi.Input<ManualCertMethodResponse>? manual;

  /// Creates a new [TlsCertMethodResponse].
  /// [automatic] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [keyVault] Option 3 - TLS server certificate retrieved from Key Vault..
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  TlsCertMethodResponse({
    this.automatic,
    this.keyVault,
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?pulumi.Input.mapOptionalInputValue<AutomaticCertMethodResponse, Map<String, dynamic>>(automatic, (value) => value.toMap()),
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultCertificatePropertiesResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'manual': ?pulumi.Input.mapOptionalInputValue<ManualCertMethodResponse, Map<String, dynamic>>(manual, (value) => value.toMap()),
    };
  }

  factory TlsCertMethodResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertMethodResponse(
      automatic: map['automatic'] == null ? null : (AutomaticCertMethodResponse.fromMap((map['automatic']! as Map).cast<String, dynamic>())).input(),
      keyVault: map['keyVault'] == null ? null : (KeyVaultCertificatePropertiesResponse.fromMap((map['keyVault']! as Map).cast<String, dynamic>())).input(),
      manual: map['manual'] == null ? null : (ManualCertMethodResponse.fromMap((map['manual']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

