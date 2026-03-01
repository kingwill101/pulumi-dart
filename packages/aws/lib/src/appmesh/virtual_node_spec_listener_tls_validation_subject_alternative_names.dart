// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch match;

  /// Creates a new [VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': match.toMap(),
    };
  }

  factory VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames(
      match: VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

