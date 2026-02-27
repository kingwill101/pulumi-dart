// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Glossary.
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

  GlossaryArgs({
    this.description,
    required this.domainIdentifier,
    this.name,
    required this.owningProjectIdentifier,
    this.region,
    this.status,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainIdentifier: pulumi.Input.asInput<String>(map['domainIdentifier']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      owningProjectIdentifier:
          pulumi.Input.asInput<String>(map['owningProjectIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asOptionalInput<String>(map['status']),
    );
  }
}
