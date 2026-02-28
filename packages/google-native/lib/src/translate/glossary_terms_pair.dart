// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_term.dart';

/// Represents a single entry for an unidirectional glossary.
class GlossaryTermsPair {
  /// The source term is the term that will get match in the text,
  final GlossaryTerm? sourceTerm;

  /// The term that will replace the match source term.
  final GlossaryTerm? targetTerm;

  /// Creates a new [GlossaryTermsPair].
  /// [sourceTerm] The source term is the term that will get match in the text,
  /// [targetTerm] The term that will replace the match source term.
  GlossaryTermsPair({
    this.sourceTerm,
    this.targetTerm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceTermValue = sourceTerm;
    if (sourceTermValue != null) {
      map['sourceTerm'] = sourceTermValue.toMap();
    }
    final targetTermValue = targetTerm;
    if (targetTermValue != null) {
      map['targetTerm'] = targetTermValue.toMap();
    }
    return map;
  }

  factory GlossaryTermsPair.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsPair(
      sourceTerm: map['sourceTerm'] == null
          ? null
          : GlossaryTerm.fromMap(
              (map['sourceTerm'] as Map).cast<String, dynamic>()),
      targetTerm: map['targetTerm'] == null
          ? null
          : GlossaryTerm.fromMap(
              (map['targetTerm'] as Map).cast<String, dynamic>()),
    );
  }
}
