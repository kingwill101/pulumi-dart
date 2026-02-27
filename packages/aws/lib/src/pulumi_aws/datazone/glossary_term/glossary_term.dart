import 'package:pulumi/pulumi.dart' as pulumi;
import '../glossary_term_term_relations/glossary_term_term_relations.dart';
import '../glossary_term_timeouts/glossary_term_timeouts.dart';
import 'glossary_term_args.dart';

/// Resource for managing an AWS DataZone Glossary Term.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Glossary Term using a comma-delimited string combining the `domain_identifier`, `id`, and the `glossary_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/glossaryTerm:GlossaryTerm example domain-id,glossary-term-id,glossary-id
/// ```
class GlossaryTerm extends pulumi.CustomResource {
  /// Time of glossary term creation.
  late final pulumi.Output<String> createdAt;

  /// Creator of glossary term.
  late final pulumi.Output<String> createdBy;

  /// Identifier of domain.
  late final pulumi.Output<String?> domainIdentifier;

  /// Identifier of glossary.
  late final pulumi.Output<String> glossaryIdentifier;

  /// Long description of entry.
  late final pulumi.Output<String?> longDescription;

  /// Name of glossary term.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Short description of entry.
  late final pulumi.Output<String?> shortDescription;

  /// If glossary term is ENABLED or DISABLED.
  late final pulumi.Output<String?> status;

  /// Object classifying the term relations through the following attributes:
  late final pulumi.Output<GlossaryTermTermRelations?> termRelations;
  late final pulumi.Output<GlossaryTermTimeouts?> timeouts;

  GlossaryTerm(
    String name, {
    GlossaryTermArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/glossaryTerm:GlossaryTerm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.domainIdentifier = registerOutput<String?>('domainIdentifier');
    this.glossaryIdentifier = registerOutput<String>('glossaryIdentifier');
    this.longDescription = registerOutput<String?>('longDescription');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.shortDescription = registerOutput<String?>('shortDescription');
    this.status = registerOutput<String?>('status');
    this.termRelations =
        registerOutput<GlossaryTermTermRelations?>('termRelations');
    this.timeouts = registerOutput<GlossaryTermTimeouts?>('timeouts');
  }
}
