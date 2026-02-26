// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint_response.dart';

class DSSEAttestationNoteResponse {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHintResponse hint;

  DSSEAttestationNoteResponse({
    required this.hint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hint'] = hint.toMap();
    return map;
  }

  factory DSSEAttestationNoteResponse.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNoteResponse(
      hint: DSSEHintResponse.fromMap(
          (map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
