// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_tls_certificate_acm.dart';
import 'virtual_node_spec_listener_tls_certificate_file.dart';
import 'virtual_node_spec_listener_tls_certificate_sds.dart';

class VirtualNodeSpecListenerTlsCertificate {
  /// An AWS Certificate Manager (ACM) certificate.
  final VirtualNodeSpecListenerTlsCertificateAcm? acm;

  /// Local file certificate.
  final VirtualNodeSpecListenerTlsCertificateFile? file;

  /// A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final VirtualNodeSpecListenerTlsCertificateSds? sds;

  /// Creates a new [VirtualNodeSpecListenerTlsCertificate].
  /// [acm] An AWS Certificate Manager (ACM) certificate.
  /// [file] Local file certificate.
  /// [sds] A [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  VirtualNodeSpecListenerTlsCertificate({this.acm, this.file, this.sds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acm': ?acm == null ? null : acm!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'sds': ?sds == null ? null : sds!.toMap(),
    };
  }

  factory VirtualNodeSpecListenerTlsCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerTlsCertificate(
      acm: map['acm'] == null
          ? null
          : VirtualNodeSpecListenerTlsCertificateAcm.fromMap(
              (map['acm'] as Map).cast<String, dynamic>(),
            ),
      file: map['file'] == null
          ? null
          : VirtualNodeSpecListenerTlsCertificateFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
      sds: map['sds'] == null
          ? null
          : VirtualNodeSpecListenerTlsCertificateSds.fromMap(
              (map['sds'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
