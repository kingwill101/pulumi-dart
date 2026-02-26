// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint.dart';

class DSSEAttestationNote {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHint? hint;

  DSSEAttestationNote({
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

  factory DSSEAttestationNote.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNote(
      hint: map['hint'] == null
          ? null
          : DSSEHint.fromMap((map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
