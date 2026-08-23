// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_validation_subject_alternative_names_match.dart';

class VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch> match;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  const VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNames(
      match: pulumi.Input.fromValue(VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}
