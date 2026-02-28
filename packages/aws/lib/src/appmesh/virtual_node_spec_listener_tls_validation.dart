// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_listener_tls_validation_trust.dart';

class VirtualNodeSpecListenerTlsValidation {
  /// SANs for a TLS validation context.
  final VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames?
      subjectAlternativeNames;

  /// TLS validation context trust.
  final VirtualNodeSpecListenerTlsValidationTrust trust;

  /// Creates a new [VirtualNodeSpecListenerTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context.
  /// [trust] TLS validation context trust.
  VirtualNodeSpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final subjectAlternativeNamesValue = subjectAlternativeNames;
    if (subjectAlternativeNamesValue != null) {
      map['subjectAlternativeNames'] = subjectAlternativeNamesValue.toMap();
    }
    map['trust'] = trust.toMap();
    return map;
  }

  factory VirtualNodeSpecListenerTlsValidation.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidation(
      subjectAlternativeNames: map['subjectAlternativeNames'] == null
          ? null
          : VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames.fromMap(
              (map['subjectAlternativeNames'] as Map).cast<String, dynamic>()),
      trust: VirtualNodeSpecListenerTlsValidationTrust.fromMap(
          (map['trust'] as Map).cast<String, dynamic>()),
    );
  }
}
