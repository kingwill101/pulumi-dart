// ignore_for_file: unused_element, unnecessary_cast

import 'envelope2.dart';
import 'in_toto_statement2.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrence2 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final Envelope2? envelope;
  final InTotoStatement2? statement;

  DSSEAttestationOccurrence2({
    this.envelope,
    this.statement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final envelopeValue = envelope;
    if (envelopeValue != null) {
      map['envelope'] = envelopeValue.toMap();
    }
    final statementValue = statement;
    if (statementValue != null) {
      map['statement'] = statementValue.toMap();
    }
    return map;
  }

  factory DSSEAttestationOccurrence2.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrence2(
      envelope: map['envelope'] == null
          ? null
          : Envelope2.fromMap((map['envelope'] as Map).cast<String, dynamic>()),
      statement: map['statement'] == null
          ? null
          : InTotoStatement2.fromMap(
              (map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}
