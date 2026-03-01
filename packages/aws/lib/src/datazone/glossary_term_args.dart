// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_term_term_relations.dart';
import 'glossary_term_timeouts.dart';

/// {@template pulumi_datazone_glossary_term_glossary_term_args_doc}
/// The set of arguments for GlossaryTerm.
/// {@endtemplate}
/// {@macro pulumi_datazone_glossary_term_glossary_term_args_doc}
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

  /// Creates a new [GlossaryTermArgs].
  /// [domainIdentifier] Identifier of domain.
  /// [glossaryIdentifier] Identifier of glossary.
  /// [longDescription] Long description of entry.
  /// [name] Name of glossary term.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shortDescription] Short description of entry.
  /// [status] If glossary term is ENABLED or DISABLED.
  /// [termRelations] Object classifying the term relations through the following attributes:
  /// [timeouts] Optional.
  GlossaryTermArgs({
    String? domainIdentifier,
    required String glossaryIdentifier,
    String? longDescription,
    String? name,
    String? region,
    String? shortDescription,
    String? status,
    GlossaryTermTermRelations? termRelations,
    GlossaryTermTimeouts? timeouts,
  }) :
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      glossaryIdentifier = pulumi.Input.asInput<String>(glossaryIdentifier),
      longDescription = pulumi.Input.asOptionalInput<String>(longDescription),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      shortDescription = pulumi.Input.asOptionalInput<String>(shortDescription),
      status = pulumi.Input.asOptionalInput<String>(status),
      termRelations = pulumi.Input.asOptionalInput<GlossaryTermTermRelations>(termRelations),
      timeouts = pulumi.Input.asOptionalInput<GlossaryTermTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainIdentifier': ?domainIdentifier,
      'glossaryIdentifier': glossaryIdentifier,
      'longDescription': ?longDescription,
      'name': ?name,
      'region': ?region,
      'shortDescription': ?shortDescription,
      'status': ?status,
      'termRelations': ?pulumi.Input.mapOptionalInputValue<GlossaryTermTermRelations, Map<String, dynamic>>(termRelations, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<GlossaryTermTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory GlossaryTermArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryTermArgs(
      domainIdentifier: map['domainIdentifier'] == null ? null : map['domainIdentifier'] as String,
      glossaryIdentifier: map['glossaryIdentifier'] as String,
      longDescription: map['longDescription'] == null ? null : map['longDescription'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      shortDescription: map['shortDescription'] == null ? null : map['shortDescription'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      termRelations: map['termRelations'] == null ? null : GlossaryTermTermRelations.fromMap((map['termRelations'] as Map).cast<String, dynamic>()),
      timeouts: map['timeouts'] == null ? null : GlossaryTermTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

