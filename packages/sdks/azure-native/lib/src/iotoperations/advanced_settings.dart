// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_cert_options.dart';
import 'client_config.dart';

/// Broker Advanced Settings
class AdvancedSettings {
  /// Configurations related to All Clients.
  final pulumi.Input<ClientConfig>? clients;
  /// The setting to enable or disable encryption of internal Traffic.
  final pulumi.Input<String>? encryptInternalTraffic;
  /// Certificate rotation and private key configuration.
  final pulumi.Input<CertManagerCertOptions>? internalCerts;

  /// Creates a new [AdvancedSettings].
  /// [clients] Configurations related to All Clients.
  /// [encryptInternalTraffic] The setting to enable or disable encryption of internal Traffic.
  /// [internalCerts] Certificate rotation and private key configuration.
  AdvancedSettings({
    this.clients,
    this.encryptInternalTraffic,
    this.internalCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': ?pulumi.Input.mapOptionalInputValue<ClientConfig, Map<String, dynamic>>(clients, (value) => value.toMap()),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'internalCerts': ?pulumi.Input.mapOptionalInputValue<CertManagerCertOptions, Map<String, dynamic>>(internalCerts, (value) => value.toMap()),
    };
  }

  factory AdvancedSettings.fromMap(Map<String, dynamic> map) {
    return AdvancedSettings(
      clients: map['clients'] == null ? null : (ClientConfig.fromMap((map['clients'] as Map).cast<String, dynamic>())).input(),
      encryptInternalTraffic: map['encryptInternalTraffic'] == null ? null : (map['encryptInternalTraffic'] as String).input(),
      internalCerts: map['internalCerts'] == null ? null : (CertManagerCertOptions.fromMap((map['internalCerts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

