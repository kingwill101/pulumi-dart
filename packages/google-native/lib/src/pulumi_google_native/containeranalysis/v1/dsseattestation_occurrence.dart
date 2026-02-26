// ignore_for_file: unused_element, unnecessary_cast

import 'envelope.dart';
import 'in_toto_statement.dart';

/// Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final Envelope? envelope;
  final InTotoStatement? statement;

  DSSEAttestationOccurrence({
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

  factory DSSEAttestationOccurrence.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrence(
      envelope: map['envelope'] == null
          ? null
          : Envelope.fromMap((map['envelope'] as Map).cast<String, dynamic>()),
      statement: map['statement'] == null
          ? null
          : InTotoStatement.fromMap(
              (map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}
