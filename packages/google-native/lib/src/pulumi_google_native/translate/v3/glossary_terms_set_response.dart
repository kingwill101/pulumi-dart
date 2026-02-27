// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_response.dart';

/// Represents a single entry for an equivalent term set glossary. This is used for equivalent term sets where each term can be replaced by the other terms in the set.
class GlossaryTermsSetResponse {
  /// Each term in the set represents a term that can be replaced by the other terms.
  final List<GlossaryTermResponse> terms;

  GlossaryTermsSetResponse({
    required this.terms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['terms'] =
        pulumi.Input.encodeList<GlossaryTermResponse, Map<String, dynamic>>(
            terms, (value) => value.toMap());
    return map;
  }

  factory GlossaryTermsSetResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermsSetResponse(
      terms: pulumi.Input.decodeList<GlossaryTermResponse>(
          map['terms'],
          (value) => GlossaryTermResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
