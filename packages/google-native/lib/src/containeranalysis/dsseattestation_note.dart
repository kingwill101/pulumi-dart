// ignore_for_file: unused_element, unnecessary_cast

import 'dssehint.dart';

class DSSEAttestationNote {
  /// DSSEHint hints at the purpose of the attestation authority.
  final DSSEHint? hint;

  /// Creates a new [DSSEAttestationNote].
  /// [hint] DSSEHint hints at the purpose of the attestation authority.
  DSSEAttestationNote({this.hint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hint': ?hint == null ? null : hint!.toMap()};
  }

  factory DSSEAttestationNote.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationNote(
      hint: map['hint'] == null
          ? null
          : DSSEHint.fromMap((map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
