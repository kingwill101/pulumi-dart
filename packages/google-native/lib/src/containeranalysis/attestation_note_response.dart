// ignore_for_file: unused_element, unnecessary_cast

import 'hint_response.dart';

/// Note kind that represents a logical attestation "role" or "authority". For example, an organization might have one `Authority` for "QA" and one for "build". This note is intended to act strictly as a grouping mechanism for the attached occurrences (Attestations). This grouping mechanism also provides a security boundary, since IAM ACLs gate the ability for a principle to attach an occurrence to a given note. It also provides a single point of lookup to find all attached attestation occurrences, even if they don't all live in the same project.
class AttestationNoteResponse {
  /// Hint hints at the purpose of the attestation authority.
  final HintResponse hint;

  /// Creates a new [AttestationNoteResponse].
  /// [hint] Hint hints at the purpose of the attestation authority.
  AttestationNoteResponse({required this.hint});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hint': hint.toMap()};
  }

  factory AttestationNoteResponse.fromMap(Map<String, dynamic> map) {
    return AttestationNoteResponse(
      hint: HintResponse.fromMap((map['hint'] as Map).cast<String, dynamic>()),
    );
  }
}
