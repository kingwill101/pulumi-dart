// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_term_relations.dart';
import 'glossary_term_timeouts.dart';

/// Input properties used for looking up and filtering GlossaryTerm resources.
class GlossaryTermState {
  /// Time of glossary term creation.
  final pulumi.Input<String>? createdAt;
  /// Creator of glossary term.
  final pulumi.Input<String>? createdBy;
  /// Identifier of domain.
  final pulumi.Input<String>? domainIdentifier;
  /// Identifier of glossary.
  final pulumi.Input<String>? glossaryIdentifier;
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

  /// Creates a new [GlossaryTermState].
  /// [createdAt] Time of glossary term creation.
  /// [createdBy] Creator of glossary term.
  /// [domainIdentifier] Identifier of domain.
  /// [glossaryIdentifier] Identifier of glossary.
  /// [longDescription] Long description of entry.
  /// [name] Name of glossary term.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shortDescription] Short description of entry.
  /// [status] If glossary term is ENABLED or DISABLED.
  /// [termRelations] Object classifying the term relations through the following attributes:
  /// [timeouts] Optional.
  GlossaryTermState({
    this.createdAt,
    this.createdBy,
    this.domainIdentifier,
    this.glossaryIdentifier,
    this.longDescription,
    this.name,
    this.region,
    this.shortDescription,
    this.status,
    this.termRelations,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'domainIdentifier': ?domainIdentifier,
      'glossaryIdentifier': ?glossaryIdentifier,
      'longDescription': ?longDescription,
      'name': ?name,
      'region': ?region,
      'shortDescription': ?shortDescription,
      'status': ?status,
      'termRelations': ?pulumi.Input.mapOptionalInputValue<GlossaryTermTermRelations, Map<String, dynamic>>(termRelations, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GlossaryTermTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory GlossaryTermState.fromMap(Map<String, dynamic> map) {
    return GlossaryTermState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainIdentifier: (() { final guardedValue = map['domainIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glossaryIdentifier: (() { final guardedValue = map['glossaryIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      longDescription: (() { final guardedValue = map['longDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortDescription: (() { final guardedValue = map['shortDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termRelations: (() { final guardedValue = map['termRelations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlossaryTermTermRelations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GlossaryTermTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

