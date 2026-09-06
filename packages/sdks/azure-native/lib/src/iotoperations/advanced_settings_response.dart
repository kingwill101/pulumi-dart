// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_cert_options_response.dart';
import 'client_config_response.dart';

/// Broker Advanced Settings
class AdvancedSettingsResponse {
  /// Configurations related to All Clients.
  final pulumi.Input<ClientConfigResponse?>? clients;
  /// The setting to enable or disable encryption of internal Traffic.
  final pulumi.Input<String?>? encryptInternalTraffic;
  /// Certificate rotation and private key configuration.
  final pulumi.Input<CertManagerCertOptionsResponse?>? internalCerts;

  /// Creates a new [AdvancedSettingsResponse].
  /// [clients] Configurations related to All Clients.
  /// [encryptInternalTraffic] The setting to enable or disable encryption of internal Traffic.
  /// [internalCerts] Certificate rotation and private key configuration.
  AdvancedSettingsResponse({
    this.clients,
    pulumi.Input<String?>? encryptInternalTraffic,
    this.internalCerts,
  }) : encryptInternalTraffic = encryptInternalTraffic ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clients': ?pulumi.Input.mapOptionalInputValue<ClientConfigResponse, Map<String, dynamic>>(clients, (value) => value.toMap()),
      'encryptInternalTraffic': ?encryptInternalTraffic,
      'internalCerts': ?pulumi.Input.mapOptionalInputValue<CertManagerCertOptionsResponse, Map<String, dynamic>>(internalCerts, (value) => value.toMap()),
    };
  }

  factory AdvancedSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedSettingsResponse(
      clients: (() { final guardedValue = map['clients']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptInternalTraffic: (() { final guardedValue = map['encryptInternalTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internalCerts: (() { final guardedValue = map['internalCerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertManagerCertOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
