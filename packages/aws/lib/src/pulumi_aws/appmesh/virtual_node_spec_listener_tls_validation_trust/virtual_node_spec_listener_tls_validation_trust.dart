// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_listener_tls_validation_trust_file/virtual_node_spec_listener_tls_validation_trust_file.dart';
import '../virtual_node_spec_listener_tls_validation_trust_sds/virtual_node_spec_listener_tls_validation_trust_sds.dart';

class VirtualNodeSpecListenerTlsValidationTrust {
  /// TLS validation context trust for a local file certificate.
  final VirtualNodeSpecListenerTlsValidationTrustFile? file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecListenerTlsValidationTrustSds? sds;

  VirtualNodeSpecListenerTlsValidationTrust({
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

  factory VirtualNodeSpecListenerTlsValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationTrust(
      file: map['file'] == null
          ? null
          : VirtualNodeSpecListenerTlsValidationTrustFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecListenerTlsValidationTrustSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
