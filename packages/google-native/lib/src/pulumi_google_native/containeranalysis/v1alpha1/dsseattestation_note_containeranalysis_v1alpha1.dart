// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint_containeranalysis_v1alpha1.dart';

/// A note describing an attestation
class DSSEAttestationNoteContaineranalysisV1alpha1 {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHintContaineranalysisV1alpha1? hint;

  DSSEAttestationNoteContaineranalysisV1alpha1({
    this.hint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hintValue = hint;
    if (hintValue != null) {
      map['hint'] = hintValue.toMap();
    }
    return map;
  }

  factory DSSEAttestationNoteContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DSSEAttestationNoteContaineranalysisV1alpha1(
      hint: map['hint'] == null
          ? null
          : DSSEHintContaineranalysisV1alpha1.fromMap(
              (map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
