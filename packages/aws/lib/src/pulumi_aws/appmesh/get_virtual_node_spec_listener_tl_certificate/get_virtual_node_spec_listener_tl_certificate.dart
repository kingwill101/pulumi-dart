// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_listener_tl_certificate_acm/get_virtual_node_spec_listener_tl_certificate_acm.dart';
import '../get_virtual_node_spec_listener_tl_certificate_file/get_virtual_node_spec_listener_tl_certificate_file.dart';
import '../get_virtual_node_spec_listener_tl_certificate_sd/get_virtual_node_spec_listener_tl_certificate_sd.dart';

class GetVirtualNodeSpecListenerTlCertificate {
  final List<GetVirtualNodeSpecListenerTlCertificateAcm> acms;
  final List<GetVirtualNodeSpecListenerTlCertificateFile> files;
  final List<GetVirtualNodeSpecListenerTlCertificateSd> sds;

  GetVirtualNodeSpecListenerTlCertificate({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acms'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTlCertificateAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificate(
      acms: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateAcm>(
          map['acms'],
          (value) => GetVirtualNodeSpecListenerTlCertificateAcm.fromMap(
              (value as Map).cast<String, dynamic>())),
      files:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateFile>(
              map['files'],
              (value) => GetVirtualNodeSpecListenerTlCertificateFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sds: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificateSd>(
          map['sds'],
          (value) => GetVirtualNodeSpecListenerTlCertificateSd.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
