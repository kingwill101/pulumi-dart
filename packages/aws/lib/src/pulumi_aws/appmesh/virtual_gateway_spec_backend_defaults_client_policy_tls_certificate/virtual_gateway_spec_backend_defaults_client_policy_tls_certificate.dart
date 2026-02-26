// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_file/virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_file.dart';
import '../virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_sds/virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_sds.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate {
  /// Local file certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile? file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds? sds;

  VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate(
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds
              .fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
