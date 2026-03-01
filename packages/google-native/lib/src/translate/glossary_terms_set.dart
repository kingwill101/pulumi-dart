// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term.dart';

/// Represents a single entry for an equivalent term set glossary. This is used for equivalent term sets where each term can be replaced by the other terms in the set.
class GlossaryTermsSet {
  /// Each term in the set represents a term that can be replaced by the other terms.
  final List<GlossaryTerm>? terms;

  /// Creates a new [GlossaryTermsSet].
  /// [terms] Each term in the set represents a term that can be replaced by the other terms.
  GlossaryTermsSet({this.terms});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'terms': ?terms == null
          ? null
          : pulumi.Input.encodeList<GlossaryTerm, Map<String, dynamic>>(
              terms!,
              (value) => value.toMap(),
            ),
    };
  }

  factory GlossaryTermsSet.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsSet(
      terms: map['terms'] == null
          ? null
          : pulumi.Input.decodeList<GlossaryTerm>(
              map['terms'],
              (value) =>
                  GlossaryTerm.fromMap((value as Map).cast<String, dynamic>()),
            ),
    );
  }
}
