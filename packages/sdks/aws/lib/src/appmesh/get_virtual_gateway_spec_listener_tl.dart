// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_tl_certificate.dart';
import 'get_virtual_gateway_spec_listener_tl_validation.dart';

class GetVirtualGatewaySpecListenerTl {
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlCertificate>>
  certificates;
  final pulumi.Input<String> mode;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlValidation>>
  validations;

  /// Creates a new [GetVirtualGatewaySpecListenerTl].
  /// [certificates] Required.
  /// [mode] Required.
  /// [validations] Required.
  GetVirtualGatewaySpecListenerTl({
    required this.certificates,
    required this.mode,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerTlCertificate>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerTlCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mode': mode,
      'validations':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerTlValidation>,
            List<Map<String, dynamic>>
          >(
            validations,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerTlValidation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualGatewaySpecListenerTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTl(
      certificates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlCertificate>(
          map['certificates']!,
          (value) => GetVirtualGatewaySpecListenerTlCertificate.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      validations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlValidation>(
          map['validations']!,
          (value) => GetVirtualGatewaySpecListenerTlValidation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
