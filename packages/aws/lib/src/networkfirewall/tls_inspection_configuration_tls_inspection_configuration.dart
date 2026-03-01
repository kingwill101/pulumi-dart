// ignore_for_file: unused_element, unnecessary_cast

import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration.dart';

class TlsInspectionConfigurationTlsInspectionConfiguration {
  /// Server certificate configurations that are associated with the TLS configuration. Detailed below.
  final TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration serverCertificateConfiguration;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfiguration].
  /// [serverCertificateConfiguration] Server certificate configurations that are associated with the TLS configuration. Detailed below.
  TlsInspectionConfigurationTlsInspectionConfiguration({
    required this.serverCertificateConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverCertificateConfiguration': serverCertificateConfiguration.toMap(),
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfiguration.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfiguration(
      serverCertificateConfiguration: TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration.fromMap((map['serverCertificateConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

