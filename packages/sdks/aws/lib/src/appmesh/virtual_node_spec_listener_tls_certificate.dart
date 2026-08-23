// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_certificate_acm.dart';
import 'virtual_node_spec_listener_tls_certificate_file.dart';
import 'virtual_node_spec_listener_tls_certificate_sds.dart';

class VirtualNodeSpecListenerTlsCertificate {
  /// AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateAcm>? acm;
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateFile>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificateSds>? sds;

  /// Creates a new [VirtualNodeSpecListenerTlsCertificate].
  /// [acm] AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  /// [file] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const VirtualNodeSpecListenerTlsCertificate({
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
      acm: (() { final guardedValue = map['acm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsCertificateAcm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsCertificateFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsCertificateSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
