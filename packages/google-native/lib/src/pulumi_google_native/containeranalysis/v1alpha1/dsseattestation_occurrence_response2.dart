// ignore_for_file: unused_element, unnecessary_cast

import 'envelope_response2.dart';
import 'in_toto_statement_response2.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrenceResponse2 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final EnvelopeResponse2 envelope;
  final InTotoStatementResponse2 statement;

  DSSEAttestationOccurrenceResponse2({
    required this.envelope,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envelope'] = envelope.toMap();
    map['statement'] = statement.toMap();
    return map;
  }

  factory DSSEAttestationOccurrenceResponse2.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceResponse2(
      envelope: EnvelopeResponse2.fromMap(
          (map['envelope'] as Map).cast<String, dynamic>()),
      statement: InTotoStatementResponse2.fromMap(
          (map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}
