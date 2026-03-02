// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_certificate_acm.dart';
import 'virtual_node_spec_listener_tls_certificate_file.dart';
import 'virtual_node_spec_listener_tls_certificate_sds.dart';

class VirtualNodeSpecListenerTlsCertificate {
  /// An AWS Certificate Manager (ACM) certificate.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateAcm>? acm;
  /// Local file certificate.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateFile>? file;
  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateSds>? sds;

  /// Creates a new [VirtualNodeSpecListenerTlsCertificate].
  /// [acm] An AWS Certificate Manager (ACM) certificate.
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualNodeSpecListenerTlsCertificate({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acm': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsCertificateAcm, Map<String, dynamic>>(acm, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsCertificateFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsCertificateSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTlsCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsCertificate(
      acm: map['acm'] == null ? null : ((VirtualNodeSpecListenerTlsCertificateAcm.fromMap((map['acm']! as Map).cast<String, dynamic>())).input()).input(),
      file: map['file'] == null ? null : ((VirtualNodeSpecListenerTlsCertificateFile.fromMap((map['file']! as Map).cast<String, dynamic>())).input()).input(),
      sds: map['sds'] == null ? null : ((VirtualNodeSpecListenerTlsCertificateSds.fromMap((map['sds']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

