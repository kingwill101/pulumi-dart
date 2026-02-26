// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_listener_tl_validation_trust_file/get_virtual_gateway_spec_listener_tl_validation_trust_file.dart';
import '../get_virtual_gateway_spec_listener_tl_validation_trust_sd/get_virtual_gateway_spec_listener_tl_validation_trust_sd.dart';

class GetVirtualGatewaySpecListenerTlValidationTrust {
  final List<GetVirtualGatewaySpecListenerTlValidationTrustFile> files;
  final List<GetVirtualGatewaySpecListenerTlValidationTrustSd> sds;

  GetVirtualGatewaySpecListenerTlValidationTrust({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = Input.encodeList<
        GetVirtualGatewaySpecListenerTlValidationTrustFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<
        GetVirtualGatewaySpecListenerTlValidationTrustSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationTrust(
      files:
          Input.decodeList<GetVirtualGatewaySpecListenerTlValidationTrustFile>(
              map['files'],
              (value) =>
                  GetVirtualGatewaySpecListenerTlValidationTrustFile.fromMap(
                      (value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<GetVirtualGatewaySpecListenerTlValidationTrustSd>(
          map['sds'],
          (value) => GetVirtualGatewaySpecListenerTlValidationTrustSd.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
