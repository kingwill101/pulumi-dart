// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate_file.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate_sds.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate {
  /// Local file certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile? file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds? sds;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate].
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate({
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

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate(
      file: map['file'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
