// ignore_for_file: unused_element, unnecessary_cast

import 'envelope_response.dart';
import 'in_toto_statement_response.dart';

/// Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
class DSSEAttestationOccurrenceResponse {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final EnvelopeResponse envelope;
  final InTotoStatementResponse statement;

  /// Creates a new [DSSEAttestationOccurrenceResponse].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Required.
  DSSEAttestationOccurrenceResponse({
    required this.envelope,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envelope'] = envelope.toMap();
    map['statement'] = statement.toMap();
    return map;
  }

  factory DSSEAttestationOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceResponse(
      envelope: EnvelopeResponse.fromMap(
          (map['envelope'] as Map).cast<String, dynamic>()),
      statement: InTotoStatementResponse.fromMap(
          (map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}
