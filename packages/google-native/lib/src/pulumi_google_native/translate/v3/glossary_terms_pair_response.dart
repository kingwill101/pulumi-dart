// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_term_response.dart';

/// Represents a single entry for an unidirectional glossary.
class GlossaryTermsPairResponse {
  /// The source term is the term that will get match in the text,
  final GlossaryTermResponse sourceTerm;

  /// The term that will replace the match source term.
  final GlossaryTermResponse targetTerm;

  GlossaryTermsPairResponse({
    required this.sourceTerm,
    required this.targetTerm,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceTerm'] = sourceTerm.toMap();
    map['targetTerm'] = targetTerm.toMap();
    return map;
  }

  factory GlossaryTermsPairResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsPairResponse(
      sourceTerm: GlossaryTermResponse.fromMap(
          (map['sourceTerm'] as Map).cast<String, dynamic>()),
      targetTerm: GlossaryTermResponse.fromMap(
          (map['targetTerm'] as Map).cast<String, dynamic>()),
    );
  }
}
