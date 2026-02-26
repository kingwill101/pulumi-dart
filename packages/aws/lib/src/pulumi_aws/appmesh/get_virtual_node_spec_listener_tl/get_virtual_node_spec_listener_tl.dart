// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_listener_tl_certificate/get_virtual_node_spec_listener_tl_certificate.dart';
import '../get_virtual_node_spec_listener_tl_validation/get_virtual_node_spec_listener_tl_validation.dart';

class GetVirtualNodeSpecListenerTl {
  final List<GetVirtualNodeSpecListenerTlCertificate> certificates;
  final String mode;
  final List<GetVirtualNodeSpecListenerTlValidation> validations;

  GetVirtualNodeSpecListenerTl({
    required this.certificates,
    required this.mode,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = Input.encodeList<
        GetVirtualNodeSpecListenerTlCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['mode'] = mode;
    map['validations'] = Input.encodeList<
        GetVirtualNodeSpecListenerTlValidation,
        Map<String, dynamic>>(validations, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTl(
      certificates: Input.decodeList<GetVirtualNodeSpecListenerTlCertificate>(
          map['certificates'],
          (value) => GetVirtualNodeSpecListenerTlCertificate.fromMap(
              (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      validations: Input.decodeList<GetVirtualNodeSpecListenerTlValidation>(
          map['validations'],
          (value) => GetVirtualNodeSpecListenerTlValidation.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
