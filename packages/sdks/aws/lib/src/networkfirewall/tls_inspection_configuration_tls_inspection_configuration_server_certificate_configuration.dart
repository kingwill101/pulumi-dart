// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_check_certificate_revocation_status.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_server_certificate.dart';

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration {
  /// ARN of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html) for limitations on CA certificates.
  final pulumi.Input<String?>? certificateAuthorityArn;
  /// Check Certificate Revocation Status block. Detailed below.
  final pulumi.Input<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus?>? checkCertificateRevocationStatus;
  /// Scope block. Detailed below.
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>> scopes;
  /// Server certificates to use for inbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html).
  final pulumi.Input<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>?>? serverCertificates;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration].
  /// [certificateAuthorityArn] ARN of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html) for limitations on CA certificates.
  /// [checkCertificateRevocationStatus] Check Certificate Revocation Status block. Detailed below.
  /// [scopes] Scope block. Detailed below.
  /// [serverCertificates] Server certificates to use for inbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html).
  const TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration({
    this.certificateAuthorityArn,
    this.checkCertificateRevocationStatus,
    required this.scopes,
    this.serverCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'checkCertificateRevocationStatus': ?pulumi.Input.mapOptionalInputValue<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus, Map<String, dynamic>>(checkCertificateRevocationStatus, (value) => value.toMap()),
      'scopes': pulumi.Input.mapInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverCertificates': ?pulumi.Input.mapOptionalInputValue<List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>, List<Map<String, dynamic>>>(serverCertificates, (value) => pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration(
      certificateAuthorityArn: (() { final guardedValue = map['certificateAuthorityArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkCertificateRevocationStatus: (() { final guardedValue = map['checkCertificateRevocationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopes: pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>(map['scopes']!, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope.fromMap((value as Map).cast<String, dynamic>()))),
      serverCertificates: (() { final guardedValue = map['serverCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>(guardedValue, (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
