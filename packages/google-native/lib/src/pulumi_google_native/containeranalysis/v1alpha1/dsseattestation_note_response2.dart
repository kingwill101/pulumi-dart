// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint_response2.dart';

/// A note describing an attestation
class DSSEAttestationNoteResponse2 {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHintResponse2 hint;

  DSSEAttestationNoteResponse2({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hint'] = hint.toMap();
    return map;
  }

  factory DSSEAttestationNoteResponse2.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNoteResponse2(
      hint: DSSEHintResponse2.fromMap(
          (map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
