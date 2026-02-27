import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_args.dart';

/// Resource for managing an AWS DataZone Glossary.
///
/// ## Example Usage
///
///
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Glossary using the import Datazone Glossary using a comma-delimited string combining the domain id, glossary id, and the id of the project it's under. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/glossary:Glossary example domain-id,glossary-id,owning-project-identifier
/// ```
class Glossary extends pulumi.CustomResource {
  /// Description of the glossary. Must have a length between 0 and 4096.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> domainIdentifier;

  /// Name of the glossary. Must have length between 1 and 256.
  late final pulumi.Output<String> name;

  /// ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of business glossary. Valid values are DISABLED and ENABLED.
  late final pulumi.Output<String?> status;

  Glossary(
    String name, {
    GlossaryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/glossary:Glossary',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.name = registerOutput<String>('name');
    this.owningProjectIdentifier =
        registerOutput<String>('owningProjectIdentifier');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String?>('status');
  }
}
