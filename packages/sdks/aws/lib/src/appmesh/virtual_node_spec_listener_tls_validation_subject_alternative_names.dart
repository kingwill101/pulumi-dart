// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_validation_subject_alternative_names_match.dart';

class VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames {
  /// Criteria for determining a SAN's match.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch> match;

  /// Creates a new [VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames].
  /// [match] Criteria for determining a SAN's match.
  const VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames({
    required this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': pulumi.Input.mapInputValue<VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames(
      match: pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
    );
  }
}

