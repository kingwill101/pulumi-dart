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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<String>? glossaryIdentifier,
    pulumi.Output<String>? longDescription,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? shortDescription,
    pulumi.Output<String>? status,
    pulumi.Output<GlossaryTermTermRelations>? termRelations,
    pulumi.Output<GlossaryTermTimeouts>? timeouts,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      glossaryIdentifier = pulumi.Input.asOptionalInput<String>(glossaryIdentifier),
      longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      shortDescription = pulumi.Input.asOptionalInput<String>(shortDescription),
      status = pulumi.Input.asOptionalInput<String>(status),
      termRelations = pulumi.Input.asOptionalInput<GlossaryTermTermRelations>(termRelations),
      timeouts = pulumi.Input.asOptionalInput<GlossaryTermTimeouts>(timeouts);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      glossaryIdentifier: map['glossaryIdentifier'] == null ? null : pulumi.Output.create<String>(map['glossaryIdentifier'] as String),
      longDescription: map['longDescription'] == null ? null : pulumi.Output.create<String>(map['longDescription'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      shortDescription: map['shortDescription'] == null ? null : pulumi.Output.create<String>(map['shortDescription'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      termRelations: map['termRelations'] == null ? null : pulumi.Output.create<GlossaryTermTermRelations>(GlossaryTermTermRelations.fromMap((map['termRelations'] as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<GlossaryTermTimeouts>(GlossaryTermTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

