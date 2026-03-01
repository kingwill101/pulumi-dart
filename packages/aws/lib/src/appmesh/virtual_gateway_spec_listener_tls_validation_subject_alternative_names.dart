// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_listener_tls_validation_subject_alternative_names_match.dart';

class VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch
  match;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'match': match.toMap()};
  }

  factory VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames(
      match:
          VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap(
            (map['match'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
