// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_certificate_acm.dart';
import 'get_virtual_node_spec_listener_tl_certificate_file.dart';
import 'get_virtual_node_spec_listener_tl_certificate_sd.dart';

class GetVirtualNodeSpecListenerTlCertificate {
  /// AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlCertificateAcm>> acms;
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlCertificateFile>> files;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlCertificateSd>> sds;

  /// Creates a new [GetVirtualNodeSpecListenerTlCertificate].
  /// [acms] AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const GetVirtualNodeSpecListenerTlCertificate({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acms': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlCertificateAcm>, List<Map<String, dynamic>>>(acms, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlCertificateAcm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlCertificateFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlCertificateFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlCertificateSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlCertificateSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTlCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificate(
      acms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateAcm>(map['acms']!, (value) => GetVirtualNodeSpecListenerTlCertificateAcm.fromMap((value as Map).cast<String, dynamic>()))),
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateFile>(map['files']!, (value) => GetVirtualNodeSpecListenerTlCertificateFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateSd>(map['sds']!, (value) => GetVirtualNodeSpecListenerTlCertificateSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
