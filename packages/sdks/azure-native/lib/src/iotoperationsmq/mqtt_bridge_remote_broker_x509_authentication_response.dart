// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_certificate_properties_response.dart';

/// MqttBridge RemoteBroker X509 Authentication properties.
class MqttBridgeRemoteBrokerX509AuthenticationResponse {
  /// Keyvault X509 secret properties.
  final pulumi.Input<KeyVaultCertificatePropertiesResponse>? keyVault;
  /// Secret where cert details are stored.
  final pulumi.Input<String>? secretName;

  /// Creates a new [MqttBridgeRemoteBrokerX509AuthenticationResponse].
  /// [keyVault] Keyvault X509 secret properties.
  /// [secretName] Secret where cert details are stored.
  MqttBridgeRemoteBrokerX509AuthenticationResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?pulumi.Input.mapOptionalInputValue<KeyVaultCertificatePropertiesResponse, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory MqttBridgeRemoteBrokerX509AuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return MqttBridgeRemoteBrokerX509AuthenticationResponse(
      keyVault: map['keyVault'] == null ? null : (KeyVaultCertificatePropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>())).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
    );
  }
}

