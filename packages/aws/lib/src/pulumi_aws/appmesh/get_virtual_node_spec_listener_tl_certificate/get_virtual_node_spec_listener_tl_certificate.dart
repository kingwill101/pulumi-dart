// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
    map['acms'] = Input.encodeList<GetVirtualNodeSpecListenerTlCertificateAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = Input.encodeList<GetVirtualNodeSpecListenerTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<GetVirtualNodeSpecListenerTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlCertificate(
      acms: Input.decodeList<GetVirtualNodeSpecListenerTlCertificateAcm>(
          map['acms'],
          (value) => GetVirtualNodeSpecListenerTlCertificateAcm.fromMap(
              (value as Map).cast<String, dynamic>())),
      files: Input.decodeList<GetVirtualNodeSpecListenerTlCertificateFile>(
          map['files'],
          (value) => GetVirtualNodeSpecListenerTlCertificateFile.fromMap(
              (value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<GetVirtualNodeSpecListenerTlCertificateSd>(
          map['sds'],
          (value) => GetVirtualNodeSpecListenerTlCertificateSd.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
