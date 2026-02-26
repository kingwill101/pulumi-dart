// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'glossary_terms_pair.dart';
import 'glossary_terms_set.dart';

/// The set of arguments for GlossaryEntry.
class GlossaryEntryArgs {
  /// Describes the glossary entry.
  final Input<String>? description;
  final Input<String> glossaryId;
  final Input<String>? location;

  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  final Input<String>? name;
  final Input<String>? project;

  /// Used for an unidirectional glossary.
  final Input<GlossaryTermsPair>? termsPair;

  /// Used for an equivalent term sets glossary.
  final Input<GlossaryTermsSet>? termsSet;

  GlossaryEntryArgs({
    this.description,
    required this.glossaryId,
    this.location,
    this.name,
    this.project,
    this.termsPair,
    this.termsSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['glossaryId'] = glossaryId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final termsPairValue = termsPair;
    if (termsPairValue != null) {
      map['termsPair'] =
          Input.mapOptionalInputValue<GlossaryTermsPair, Map<String, dynamic>>(
              termsPairValue, (value) => value.toMap());
    }
    final termsSetValue = termsSet;
    if (termsSetValue != null) {
      map['termsSet'] =
          Input.mapOptionalInputValue<GlossaryTermsSet, Map<String, dynamic>>(
              termsSetValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlossaryEntryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryEntryArgs(
      description: Input.asOptionalInput<String>(map['description']),
      glossaryId: Input.asInput<String>(map['glossaryId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      termsPair: Input.asOptionalInput<GlossaryTermsPair>(map['termsPair']),
      termsSet: Input.asOptionalInput<GlossaryTermsSet>(map['termsSet']),
    );
  }
}
