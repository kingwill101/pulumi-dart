// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_certificate.dart';
import 'get_virtual_node_spec_listener_tl_validation.dart';

class GetVirtualNodeSpecListenerTl {
  /// Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlCertificate>> certificates;
  /// Listener's TLS mode.
  final pulumi.Input<String> mode;
  /// Listener's TLS validation context. See `spec.listener.tls.validation` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlValidation>> validations;

  /// Creates a new [GetVirtualNodeSpecListenerTl].
  /// [certificates] Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  /// [mode] Listener's TLS mode.
  /// [validations] Listener's TLS validation context. See `spec.listener.tls.validation` Block for details.
  const GetVirtualNodeSpecListenerTl({
    required this.certificates,
    required this.mode,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': mode,
      'validations': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlValidation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTl(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlCertificate>(map['certificates']!, (value) => GetVirtualNodeSpecListenerTlCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      validations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidation>(map['validations']!, (value) => GetVirtualNodeSpecListenerTlValidation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
