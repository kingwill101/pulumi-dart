// ignore_for_file: unused_element, unnecessary_cast

import 'envelope.dart';
import 'in_toto_statement.dart';

/// Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final Envelope? envelope;
  final InTotoStatement? statement;

  /// Creates a new [DSSEAttestationOccurrence].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Optional.
  DSSEAttestationOccurrence({this.envelope, this.statement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope': ?envelope == null ? null : envelope!.toMap(),
      'statement': ?statement == null ? null : statement!.toMap(),
    };
  }

  factory DSSEAttestationOccurrence.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrence(
      envelope: map['envelope'] == null
          ? null
          : Envelope.fromMap((map['envelope'] as Map).cast<String, dynamic>()),
      statement: map['statement'] == null
          ? null
          : InTotoStatement.fromMap(
              (map['statement'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
