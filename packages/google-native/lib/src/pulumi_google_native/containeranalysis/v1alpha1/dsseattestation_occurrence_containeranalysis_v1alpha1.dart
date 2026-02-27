// ignore_for_file: unused_element, unnecessary_cast

import 'envelope_containeranalysis_v1alpha1.dart';
import 'in_toto_statement_containeranalysis_v1alpha1.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrenceContaineranalysisV1alpha1 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final EnvelopeContaineranalysisV1alpha1? envelope;
  final InTotoStatementContaineranalysisV1alpha1? statement;

  DSSEAttestationOccurrenceContaineranalysisV1alpha1({
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

  factory DSSEAttestationOccurrenceContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceContaineranalysisV1alpha1(
      envelope: map['envelope'] == null
          ? null
          : EnvelopeContaineranalysisV1alpha1.fromMap(
              (map['envelope'] as Map).cast<String, dynamic>()),
      statement: map['statement'] == null
          ? null
          : InTotoStatementContaineranalysisV1alpha1.fromMap(
              (map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}
