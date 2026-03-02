// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_certificate_acm.dart';
import 'virtual_gateway_spec_listener_tls_certificate_file.dart';
import 'virtual_gateway_spec_listener_tls_certificate_sds.dart';

class VirtualGatewaySpecListenerTlsCertificate {
  /// An AWS Certificate Manager (ACM) certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateAcm>? acm;
  /// Local file certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateFile>? file;
  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificateSds>? sds;

  /// Creates a new [VirtualGatewaySpecListenerTlsCertificate].
  /// [acm] An AWS Certificate Manager (ACM) certificate.
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualGatewaySpecListenerTlsCertificate({
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
      acm: map['acm'] == null ? null : ((VirtualGatewaySpecListenerTlsCertificateAcm.fromMap((map['acm']! as Map).cast<String, dynamic>())).input()).input(),
      file: map['file'] == null ? null : ((VirtualGatewaySpecListenerTlsCertificateFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input()).input(),
      sds: map['sds'] == null ? null : ((VirtualGatewaySpecListenerTlsCertificateSds.fromMap((map['sds']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

