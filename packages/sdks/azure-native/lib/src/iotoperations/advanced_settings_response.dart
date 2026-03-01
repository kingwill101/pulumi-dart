// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_cert_options_response.dart';
import 'client_config_response.dart';

/// Broker Advanced Settings
class AdvancedSettingsResponse {
  /// Configurations related to All Clients.
  final ClientConfigResponse? clients;
  /// The setting to enable or disable encryption of internal Traffic.
  final String? encryptInternalTraffic;
  /// Certificate rotation and private key configuration.
  final CertManagerCertOptionsResponse? internalCerts;

  /// Creates a new [AdvancedSettingsResponse].
  /// [clients] Configurations related to All Clients.
  /// [encryptInternalTraffic] The setting to enable or disable encryption of internal Traffic.
  /// [internalCerts] Certificate rotation and private key configuration.
  AdvancedSettingsResponse({
    this.clients,
    this.encryptInternalTraffic,
    this.internalCerts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': ?clients == null ? null : clients!.toMap(),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'internalCerts': ?internalCerts == null ? null : internalCerts!.toMap(),
    };
  }

  factory AdvancedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedSettingsResponse(
      clients: map['clients'] == null ? null : ClientConfigResponse.fromMap((map['clients'] as Map).cast<String, dynamic>()),
      encryptInternalTraffic: map['encryptInternalTraffic'] == null ? null : map['encryptInternalTraffic'] as String,
      internalCerts: map['internalCerts'] == null ? null : CertManagerCertOptionsResponse.fromMap((map['internalCerts'] as Map).cast<String, dynamic>()),
    );
  }
}

