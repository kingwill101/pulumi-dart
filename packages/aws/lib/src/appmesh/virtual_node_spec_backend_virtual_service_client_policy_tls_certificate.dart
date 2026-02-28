// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy_tls_certificate_file.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_certificate_sds.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate {
  /// Local file certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile?
      file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds? sds;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate].
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate({
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

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate(
      file: map['file'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile
              .fromMap((map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds
              .fromMap((map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
