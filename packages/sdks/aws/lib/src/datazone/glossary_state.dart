// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Glossary resources.
class GlossaryState {
  /// Description of the glossary. Must have a length between 0 and 4096.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? domainIdentifier;
  /// Name of the glossary. Must have length between 1 and 256.
  final pulumi.Input<String>? name;
  /// ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? owningProjectIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of business glossary. Valid values are DISABLED and ENABLED.
  final pulumi.Input<String>? status;

  /// Creates a new [GlossaryState].
  /// [description] Description of the glossary. Must have a length between 0 and 4096.
  /// [domainIdentifier] Optional.
  /// [name] Name of the glossary. Must have length between 1 and 256.
  /// [owningProjectIdentifier] ID of the project that owns business glossary. Must follow regex of ^[a-zA-Z0-9_-]{1,36}$.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of business glossary. Valid values are DISABLED and ENABLED.
  GlossaryState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainIdentifier,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owningProjectIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainIdentifier = pulumi.Input.asOptionalInput<String>(domainIdentifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      owningProjectIdentifier = pulumi.Input.asOptionalInput<String>(owningProjectIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainIdentifier': ?domainIdentifier,
      'name': ?name,
      'owningProjectIdentifier': ?owningProjectIdentifier,
      'region': ?region,
      'status': ?status,
    };
  }

  factory GlossaryState.fromMap(Map<String, dynamic> map) {
    return GlossaryState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainIdentifier: map['domainIdentifier'] == null ? null : pulumi.Output.create<String>(map['domainIdentifier'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owningProjectIdentifier: map['owningProjectIdentifier'] == null ? null : pulumi.Output.create<String>(map['owningProjectIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

