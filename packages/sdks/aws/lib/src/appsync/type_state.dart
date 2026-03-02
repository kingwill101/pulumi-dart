// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Type resources.
class TypeState {
  /// GraphQL API ID.
  final pulumi.Input<String>? apiId;
  /// The ARN of the type.
  final pulumi.Input<String>? arn;
  /// The type definition.
  final pulumi.Input<String>? definition;
  /// The type description.
  final pulumi.Input<String>? description;
  /// The type format: `SDL` or `JSON`.
  final pulumi.Input<String>? format;
  /// The type name.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [TypeState].
  /// [apiId] GraphQL API ID.
  /// [arn] The ARN of the type.
  /// [definition] The type definition.
  /// [description] The type description.
  /// [format] The type format: `SDL` or `JSON`.
  /// [name] The type name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  TypeState({
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
      apiId: map['apiId'] == null ? null : ((map['apiId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      definition: map['definition'] == null ? null : ((map['definition'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      format: map['format'] == null ? null : ((map['format'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

