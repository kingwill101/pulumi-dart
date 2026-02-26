// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../glossary_term_term_relations/glossary_term_term_relations.dart';
import '../glossary_term_timeouts/glossary_term_timeouts.dart';

/// The set of arguments for GlossaryTerm.
class GlossaryTermArgs {
  /// Identifier of domain.
  final Input<String>? domainIdentifier;

  /// Identifier of glossary.
  final Input<String> glossaryIdentifier;

  /// Long description of entry.
  final Input<String>? longDescription;

  /// Name of glossary term.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Short description of entry.
  final Input<String>? shortDescription;

  /// If glossary term is ENABLED or DISABLED.
  final Input<String>? status;

  /// Object classifying the term relations through the following attributes:
  final Input<GlossaryTermTermRelations>? termRelations;
  final Input<GlossaryTermTimeouts>? timeouts;

  GlossaryTermArgs({
    this.domainIdentifier,
    required this.glossaryIdentifier,
    this.longDescription,
    this.name,
    this.region,
    this.shortDescription,
    this.status,
    this.termRelations,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainIdentifierValue = domainIdentifier;
    if (domainIdentifierValue != null) {
      map['domainIdentifier'] = domainIdentifierValue;
    }
    map['glossaryIdentifier'] = glossaryIdentifier;
    final longDescriptionValue = longDescription;
    if (longDescriptionValue != null) {
      map['longDescription'] = longDescriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final shortDescriptionValue = shortDescription;
    if (shortDescriptionValue != null) {
      map['shortDescription'] = shortDescriptionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final termRelationsValue = termRelations;
    if (termRelationsValue != null) {
      map['termRelations'] = Input.mapOptionalInputValue<
          GlossaryTermTermRelations,
          Map<String, dynamic>>(termRelationsValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<GlossaryTermTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlossaryTermArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryTermArgs(
      domainIdentifier: Input.asOptionalInput<String>(map['domainIdentifier']),
      glossaryIdentifier: Input.asInput<String>(map['glossaryIdentifier']),
      longDescription: Input.asOptionalInput<String>(map['longDescription']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      shortDescription: Input.asOptionalInput<String>(map['shortDescription']),
      status: Input.asOptionalInput<String>(map['status']),
      termRelations: Input.asOptionalInput<GlossaryTermTermRelations>(
          map['termRelations']),
      timeouts: Input.asOptionalInput<GlossaryTermTimeouts>(map['timeouts']),
    );
  }
}
