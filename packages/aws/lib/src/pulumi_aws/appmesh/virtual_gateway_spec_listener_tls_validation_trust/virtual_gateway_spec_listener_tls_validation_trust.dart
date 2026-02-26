// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_gateway_spec_listener_tls_validation_trust_file/virtual_gateway_spec_listener_tls_validation_trust_file.dart';
import '../virtual_gateway_spec_listener_tls_validation_trust_sds/virtual_gateway_spec_listener_tls_validation_trust_sds.dart';

class VirtualGatewaySpecListenerTlsValidationTrust {
  /// TLS validation context trust for a local file certificate.
  final VirtualGatewaySpecListenerTlsValidationTrustFile? file;

  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualGatewaySpecListenerTlsValidationTrustSds? sds;

  VirtualGatewaySpecListenerTlsValidationTrust({
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

  factory VirtualGatewaySpecListenerTlsValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationTrust(
      file: map['file'] == null
          ? null
          : VirtualGatewaySpecListenerTlsValidationTrustFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      sds: map['sds'] == null
          ? null
          : VirtualGatewaySpecListenerTlsValidationTrustSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>()),
    );
  }
}
