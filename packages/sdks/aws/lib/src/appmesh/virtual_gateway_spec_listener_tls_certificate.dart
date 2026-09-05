// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_certificate_acm.dart';
import 'virtual_gateway_spec_listener_tls_certificate_file.dart';
import 'virtual_gateway_spec_listener_tls_certificate_sds.dart';

class VirtualGatewaySpecListenerTlsCertificate {
  /// AWS Certificate Manager (ACM) certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateAcm?>? acm;
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateFile?>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateSds?>? sds;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificate].
  /// [acm] AWS Certificate Manager (ACM) certificate.
  /// [file] Optional.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  const VirtualGatewaySpecListenerTlsCertificate({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acm': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTlsCertificateAcm, Map<String, dynamic>>(acm, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTlsCertificateFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTlsCertificateSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerTlsCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsCertificate(
      acm: (() { final guardedValue = map['acm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerTlsCertificateAcm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerTlsCertificateFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerTlsCertificateSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
