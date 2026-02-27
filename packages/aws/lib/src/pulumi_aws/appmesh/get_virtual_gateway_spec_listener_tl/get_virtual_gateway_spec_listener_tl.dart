// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_gateway_spec_listener_tl_certificate/get_virtual_gateway_spec_listener_tl_certificate.dart';
import '../get_virtual_gateway_spec_listener_tl_validation/get_virtual_gateway_spec_listener_tl_validation.dart';

class GetVirtualGatewaySpecListenerTl {
  final List<GetVirtualGatewaySpecListenerTlCertificate> certificates;
  final String mode;
  final List<GetVirtualGatewaySpecListenerTlValidation> validations;

  GetVirtualGatewaySpecListenerTl({
    required this.certificates,
    required this.mode,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecListenerTlCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['mode'] = mode;
    map['validations'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecListenerTlValidation,
        Map<String, dynamic>>(validations, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecListenerTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTl(
      certificates:
          pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlCertificate>(
              map['certificates'],
              (value) => GetVirtualGatewaySpecListenerTlCertificate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      validations:
          pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlValidation>(
              map['validations'],
              (value) => GetVirtualGatewaySpecListenerTlValidation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
