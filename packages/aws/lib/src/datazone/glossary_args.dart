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
    String? description,
    required String domainIdentifier,
    String? name,
    required String owningProjectIdentifier,
    String? region,
    String? status,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        domainIdentifier = pulumi.Input.asInput<String>(domainIdentifier),
        name = pulumi.Input.asOptionalInput<String>(name),
        owningProjectIdentifier =
            pulumi.Input.asInput<String>(owningProjectIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainIdentifier'] = domainIdentifier;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['owningProjectIdentifier'] = owningProjectIdentifier;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory GlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      domainIdentifier: map['domainIdentifier'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      owningProjectIdentifier: map['owningProjectIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
