// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_cert_options_response.dart';
import 'client_config_response.dart';

/// Broker Advanced Settings
class AdvancedSettingsResponse {
  /// Configurations related to All Clients.
  final pulumi.Input<ClientConfigResponse>? clients;
  /// The setting to enable or disable encryption of internal Traffic.
  final pulumi.Input<String>? encryptInternalTraffic;
  /// Certificate rotation and private key configuration.
  final pulumi.Input<CertManagerCertOptionsResponse>? internalCerts;

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
      'clients': ?pulumi.Input.mapOptionalInputValue<ClientConfigResponse, Map<String, dynamic>>(clients, (value) => value.toMap()),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'internalCerts': ?pulumi.Input.mapOptionalInputValue<CertManagerCertOptionsResponse, Map<String, dynamic>>(internalCerts, (value) => value.toMap()),
    };
  }

  factory AdvancedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedSettingsResponse(
      clients: map['clients'] == null ? null : (ClientConfigResponse.fromMap((map['clients'] as Map).cast<String, dynamic>())).input(),
      encryptInternalTraffic: map['encryptInternalTraffic'] == null ? null : (map['encryptInternalTraffic'] as String).input(),
      internalCerts: map['internalCerts'] == null ? null : (CertManagerCertOptionsResponse.fromMap((map['internalCerts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

