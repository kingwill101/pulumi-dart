// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_validation_subject_alternative_names.dart';
import 'virtual_gateway_spec_listener_tls_validation_trust.dart';

class VirtualGatewaySpecListenerTlsValidation {
  /// SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames>? subjectAlternativeNames;
  /// TLS validation context trust.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidationTrust> trust;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidation].
  /// [subjectAlternativeNames] SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  /// [trust] TLS validation context trust.
  VirtualGatewaySpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trust': pulumi.Input.mapInputValue<VirtualGatewaySpecListenerTlsValidationTrust, Map<String, dynamic>>(trust, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null ? null : ((VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames.fromMap((map['subjectAlternativeNames']! as Map).cast<String, dynamic>())).input()).input(),
      trust: (VirtualGatewaySpecListenerTlsValidationTrust.fromMap((map['trust']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

