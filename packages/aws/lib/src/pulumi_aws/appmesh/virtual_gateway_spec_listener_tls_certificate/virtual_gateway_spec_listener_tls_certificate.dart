// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_gateway_spec_listener_tls_certificate_acm/virtual_gateway_spec_listener_tls_certificate_acm.dart';
import '../virtual_gateway_spec_listener_tls_certificate_file/virtual_gateway_spec_listener_tls_certificate_file.dart';
import '../virtual_gateway_spec_listener_tls_certificate_sds/virtual_gateway_spec_listener_tls_certificate_sds.dart';

class VirtualGatewaySpecListenerTlsCertificate {
  /// An AWS Certificate Manager (ACM) certificate.
  final VirtualGatewaySpecListenerTlsCertificateAcm? acm;

  /// Local file certificate.
  final VirtualGatewaySpecListenerTlsCertificateFile? file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualGatewaySpecListenerTlsCertificateSds? sds;

  VirtualGatewaySpecListenerTlsCertificate({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acmValue = acm;
    if (acmValue != null) {
      map['acm'] = acmValue.toMap();
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    final sdsValue = sds;
    if (sdsValue != null) {
      map['sds'] = sdsValue.toMap();
    }
    return map;
  }

  factory VirtualGatewaySpecListenerTlsCertificate.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificate(
      acm: map['acm'] == null
          ? null
          : VirtualGatewaySpecListenerTlsCertificateAcm.fromMap(
              (map['acm'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecListenerTlsCertificateFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualGatewaySpecListenerTlsCertificateSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
