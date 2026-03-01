// ignore_for_file: unused_element, unnecessary_cast

import 'note_attestation_authority_hint.dart';

class NoteAttestationAuthority {
  /// This submessage provides human-readable hints about the purpose of
  /// the AttestationAuthority. Because the name of a Note acts as its
  /// resource reference, it is important to disambiguate the canonical
  /// name of the Note (which might be a UUID for security purposes)
  /// from "readable" names more suitable for debug output. Note that
  /// these hints should NOT be used to look up AttestationAuthorities
  /// in security sensitive contexts, such as when looking up
  /// Attestations to verify.
  /// Structure is documented below.
  final NoteAttestationAuthorityHint hint;

  /// Creates a new [NoteAttestationAuthority].
  /// [hint] This submessage provides human-readable hints about the purpose of
  NoteAttestationAuthority({required this.hint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hint': hint.toMap()};
  }

  factory NoteAttestationAuthority.fromMap(Map<String, dynamic> map) {
    return NoteAttestationAuthority(
      hint: NoteAttestationAuthorityHint.fromMap(
        (map['hint'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
