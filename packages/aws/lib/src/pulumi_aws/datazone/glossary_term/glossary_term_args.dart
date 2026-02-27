// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../glossary_term_term_relations/glossary_term_term_relations.dart';
import '../glossary_term_timeouts/glossary_term_timeouts.dart';

/// The set of arguments for GlossaryTerm.
class GlossaryTermArgs {
  /// Identifier of domain.
  final pulumi.Input<String>? domainIdentifier;

  /// Identifier of glossary.
  final pulumi.Input<String> glossaryIdentifier;

  /// Long description of entry.
  final pulumi.Input<String>? longDescription;

  /// Name of glossary term.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Short description of entry.
  final pulumi.Input<String>? shortDescription;

  /// If glossary term is ENABLED or DISABLED.
  final pulumi.Input<String>? status;

  /// Object classifying the term relations through the following attributes:
  final pulumi.Input<GlossaryTermTermRelations>? termRelations;
  final pulumi.Input<GlossaryTermTimeouts>? timeouts;

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
      map['termRelations'] = pulumi.Input.mapOptionalInputValue<
          GlossaryTermTermRelations,
          Map<String, dynamic>>(termRelationsValue, (value) => value.toMap());
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<GlossaryTermTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlossaryTermArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryTermArgs(
      domainIdentifier:
          pulumi.Input.asOptionalInput<String>(map['domainIdentifier']),
      glossaryIdentifier:
          pulumi.Input.asInput<String>(map['glossaryIdentifier']),
      longDescription:
          pulumi.Input.asOptionalInput<String>(map['longDescription']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      shortDescription:
          pulumi.Input.asOptionalInput<String>(map['shortDescription']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
      termRelations: pulumi.Input.asOptionalInput<GlossaryTermTermRelations>(
          map['termRelations']),
      timeouts:
          pulumi.Input.asOptionalInput<GlossaryTermTimeouts>(map['timeouts']),
    );
  }
}
