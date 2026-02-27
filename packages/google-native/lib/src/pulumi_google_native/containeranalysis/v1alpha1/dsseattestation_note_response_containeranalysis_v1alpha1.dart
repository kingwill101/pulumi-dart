// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint_response_containeranalysis_v1alpha1.dart';

/// A note describing an attestation
class DSSEAttestationNoteResponseContaineranalysisV1alpha1 {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHintResponseContaineranalysisV1alpha1 hint;

  DSSEAttestationNoteResponseContaineranalysisV1alpha1({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hint'] = hint.toMap();
    return map;
  }

  factory DSSEAttestationNoteResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DSSEAttestationNoteResponseContaineranalysisV1alpha1(
      hint: DSSEHintResponseContaineranalysisV1alpha1.fromMap(
          (map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
