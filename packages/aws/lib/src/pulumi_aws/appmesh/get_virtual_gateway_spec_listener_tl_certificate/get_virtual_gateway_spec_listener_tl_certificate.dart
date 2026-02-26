// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_listener_tl_certificate_acm/get_virtual_gateway_spec_listener_tl_certificate_acm.dart';
import '../get_virtual_gateway_spec_listener_tl_certificate_file/get_virtual_gateway_spec_listener_tl_certificate_file.dart';
import '../get_virtual_gateway_spec_listener_tl_certificate_sd/get_virtual_gateway_spec_listener_tl_certificate_sd.dart';

class GetVirtualGatewaySpecListenerTlCertificate {
  final List<GetVirtualGatewaySpecListenerTlCertificateAcm> acms;
  final List<GetVirtualGatewaySpecListenerTlCertificateFile> files;
  final List<GetVirtualGatewaySpecListenerTlCertificateSd> sds;

  GetVirtualGatewaySpecListenerTlCertificate({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acms'] = Input.encodeList<
        GetVirtualGatewaySpecListenerTlCertificateAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = Input.encodeList<
        GetVirtualGatewaySpecListenerTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<GetVirtualGatewaySpecListenerTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlCertificate(
      acms: Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateAcm>(
          map['acms'],
          (value) => GetVirtualGatewaySpecListenerTlCertificateAcm.fromMap(
              (value as Map).cast<String, dynamic>())),
      files: Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateFile>(
          map['files'],
          (value) => GetVirtualGatewaySpecListenerTlCertificateFile.fromMap(
              (value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<GetVirtualGatewaySpecListenerTlCertificateSd>(
          map['sds'],
          (value) => GetVirtualGatewaySpecListenerTlCertificateSd.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
