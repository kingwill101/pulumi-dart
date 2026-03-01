// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_listener_tls_validation_subject_alternative_names.dart';
import 'virtual_gateway_spec_listener_tls_validation_trust.dart';

class VirtualGatewaySpecListenerTlsValidation {
  /// SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  final VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames?
  subjectAlternativeNames;

  /// TLS validation context trust.
  final VirtualGatewaySpecListenerTlsValidationTrust trust;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidation].
  /// [subjectAlternativeNames] SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  /// [trust] TLS validation context trust.
  VirtualGatewaySpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?subjectAlternativeNames == null
          ? null
          : subjectAlternativeNames!.toMap(),
      'trust': trust.toMap(),
    };
  }

  factory VirtualGatewaySpecListenerTlsValidation.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames.fromMap(
              (map['subjectAlternativeNames'] as Map).cast<String, dynamic>(),
            ),
      trust: VirtualGatewaySpecListenerTlsValidationTrust.fromMap(
        (map['trust'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
