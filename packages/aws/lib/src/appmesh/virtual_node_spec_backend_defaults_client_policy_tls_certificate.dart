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
    return <String, dynamic>{
      'file': ?file == null ? null : file!.toMap(),
      'sds': ?sds == null ? null : sds!.toMap(),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate(
      file: map['file'] == null ? null : VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile.fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null ? null : VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}

