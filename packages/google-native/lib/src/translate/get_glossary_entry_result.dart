// ignore_for_file: unused_element, unnecessary_cast

import 'glossary_terms_pair_response.dart';
import 'glossary_terms_set_response.dart';

/// Result data returned by getGlossaryEntry.
class GetGlossaryEntryResult {
  /// Describes the glossary entry.
  final String description;

  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  final String name;

  /// Used for an unidirectional glossary.
  final GlossaryTermsPairResponse termsPair;

  /// Used for an equivalent term sets glossary.
  final GlossaryTermsSetResponse termsSet;

  /// Creates a new [GetGlossaryEntryResult].
  /// [description] Describes the glossary entry.
  /// [name] The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  /// [termsPair] Used for an unidirectional glossary.
  /// [termsSet] Used for an equivalent term sets glossary.
  GetGlossaryEntryResult({
    required this.description,
    required this.name,
    required this.termsPair,
    required this.termsSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['name'] = name;
    map['termsPair'] = termsPair.toMap();
    map['termsSet'] = termsSet.toMap();
    return map;
  }

  factory GetGlossaryEntryResult.fromMap(Map<String, dynamic> map) {
    return GetGlossaryEntryResult(
      description: map['description'] as String,
      name: map['name'] as String,
      termsPair: GlossaryTermsPairResponse.fromMap(
          (map['termsPair'] as Map).cast<String, dynamic>()),
      termsSet: GlossaryTermsSetResponse.fromMap(
          (map['termsSet'] as Map).cast<String, dynamic>()),
    );
  }
}
