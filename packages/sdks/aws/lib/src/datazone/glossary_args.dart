// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datazone_glossary_glossary_args_doc}
/// The set of arguments for Glossary.
/// {@endtemplate}
/// {@macro pulumi_datazone_glossary_glossary_args_doc}
class GlossaryArgs {
  /// Description of the glossary. Must have a length between 0 and 4096.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> domainIdentifier;
  /// Name of the glossary. Must have length between 1 and 256.
  final pulumi.Input<String>? name;
  /// ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of business glossary. Valid values are DISABLED and ENABLED.
  final pulumi.Input<String>? status;

  /// Creates a new [GlossaryArgs].
  /// [description] Description of the glossary. Must have a length between 0 and 4096.
  /// [domainIdentifier] Required.
  /// [name] Name of the glossary. Must have length between 1 and 256.
  /// [owningProjectIdentifier] ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of business glossary. Valid values are DISABLED and ENABLED.
  GlossaryArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> domainIdentifier,
    pulumi.Output<String>? name,
    required pulumi.Output<String> owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      owningProjectIdentifier = pulumi.Input.asInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainIdentifier': domainIdentifier,
      'name': ?name,
      'owningProjectIdentifier': owningProjectIdentifier,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: pulumi.Output.create<String>(map['domainIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owningProjectIdentifier: pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

