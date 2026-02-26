// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_check_certificate_revocation_status/tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_check_certificate_revocation_status.dart';
import '../tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope/tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_scope.dart';
import '../tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_server_certificate/tls_inspection_configuration_tls_inspection_configuration_server_certificate_configuration_server_certificate.dart';

class TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration {
  /// ARN of the imported certificate authority (CA) certificate within Certificate Manager (ACM) to use for outbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html) for limitations on CA certificates.
  final String? certificateAuthorityArn;

  /// Check Certificate Revocation Status block. Detailed below.
  final TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus?
      checkCertificateRevocationStatus;

  /// Scope block. Detailed below.
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>
      scopes;

  /// Server certificates to use for inbound SSL/TLS inspection. See [Using SSL/TLS certificates with TLS inspection configurations](https://docs.aws.amazon.com/network-firewall/latest/developerguide/tls-inspection-certificate-requirements.html).
  final List<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>?
      serverCertificates;

  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration({
    this.certificateAuthorityArn,
    this.checkCertificateRevocationStatus,
    required this.scopes,
    this.serverCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateAuthorityArnValue = certificateAuthorityArn;
    if (certificateAuthorityArnValue != null) {
      map['certificateAuthorityArn'] = certificateAuthorityArnValue;
    }
    final checkCertificateRevocationStatusValue =
        checkCertificateRevocationStatus;
    if (checkCertificateRevocationStatusValue != null) {
      map['checkCertificateRevocationStatus'] =
          checkCertificateRevocationStatusValue.toMap();
    }
    map['scopes'] = Input.encodeList<
        TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope,
        Map<String, dynamic>>(scopes, (value) => value.toMap());
    final serverCertificatesValue = serverCertificates;
    if (serverCertificatesValue != null) {
      map['serverCertificates'] = Input.encodeList<
          TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate,
          Map<String,
              dynamic>>(serverCertificatesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfiguration(
      certificateAuthorityArn: map['certificateAuthorityArn'] == null
          ? null
          : map['certificateAuthorityArn'] as String,
      checkCertificateRevocationStatus: map[
                  'checkCertificateRevocationStatus'] ==
              null
          ? null
          : TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatus
              .fromMap((map['checkCertificateRevocationStatus'] as Map)
                  .cast<String, dynamic>()),
      scopes: Input.decodeList<
              TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope>(
          map['scopes'],
          (value) =>
              TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScope
                  .fromMap((value as Map).cast<String, dynamic>())),
      serverCertificates: map['serverCertificates'] == null
          ? null
          : Input.decodeList<
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate>(
              map['serverCertificates'],
              (value) =>
                  TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificate
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
