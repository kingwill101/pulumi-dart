// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_check_certificate_revocation_status.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope.dart';
import 'tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_server_certificate.dart';

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration {
  /// ARN of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html) for limitations on CA certificates.
  final String? certificateAuthorityArn;
  /// Check Certificate Revocation Status block. Detailed below.
  final TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus? checkCertificateRevocationStatus;
  /// Scope block. Detailed below.
  final List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope> scopes;
  /// Server certificates to use for inbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html).
  final List<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>? serverCertificates;

  /// Creates a new [TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration].
  /// [certificateAuthorityArn] ARN of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html) for limitations on CA certificates.
  /// [checkCertificateRevocationStatus] Check Certificate Revocation Status block. Detailed below.
  /// [scopes] Scope block. Detailed below.
  /// [serverCertificates] Server certificates to use for inbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html).
  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration({
    this.certificateAuthorityArn,
    this.checkCertificateRevocationStatus,
    required this.scopes,
    this.serverCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArn': ?certificateAuthorityArn,
      'checkCertificateRevocationStatus': ?checkCertificateRevocationStatus == null ? null : checkCertificateRevocationStatus!.toMap(),
      'scopes': pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope, Map<String, dynamic>>(scopes, (value) => value.toMap()),
      'serverCertificates': ?serverCertificates == null ? null : pulumi.Input.encodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate, Map<String, dynamic>>(serverCertificates!, (value) => value.toMap()),
    };
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration.fromMap(Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null ? null : map['certificateAuthorityArn'] as String,
      checkCertificateRevocationStatus: map['checkCertificateRevocationStatus'] == null ? null : TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus.fromMap((map['checkCertificateRevocationStatus'] as Map).cast<String, dynamic>()),
      scopes: pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>(map['scopes'], (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope.fromMap((value as Map).cast<String, dynamic>())),
      serverCertificates: map['serverCertificates'] == null ? null : pulumi.Input.decodeList<TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>(map['serverCertificates'], (value) => TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

