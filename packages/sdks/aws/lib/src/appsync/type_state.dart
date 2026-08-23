// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Type resources.
class TypeState {
  /// GraphQL API ID.
  final pulumi.Input<String>? apiId;
  /// ARN of the type.
  final pulumi.Input<String>? arn;
  /// Type definition.
  final pulumi.Input<String>? definition;
  /// Type description.
  final pulumi.Input<String>? description;
  /// Type format: `SDL` or `JSON`.
  final pulumi.Input<String>? format;
  /// Type name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [TypeState].
  /// [apiId] GraphQL API ID.
  /// [arn] ARN of the type.
  /// [definition] Type definition.
  /// [description] Type description.
  /// [format] Type format: `SDL` or `JSON`.
  /// [name] Type name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const TypeState({
    this.apiId,
    this.arn,
    this.definition,
    this.description,
    this.format,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'arn': ?arn,
      'definition': ?definition,
      'description': ?description,
      'format': ?format,
      'name': ?name,
      'region': ?region,
    };
  }

  factory TypeState.fromMap(Map<String, dynamic> map) {
    return TypeState(
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
