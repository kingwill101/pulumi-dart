// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_file.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate_sds.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate {
  /// Local file certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile? file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds? sds;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate].
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file == null ? null : file!.toMap(),
      'sds': ?sds == null ? null : sds!.toMap(),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate(
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
      sds: map['sds'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
