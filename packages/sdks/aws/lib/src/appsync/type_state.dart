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
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? definition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? format,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      definition = pulumi.Input.asOptionalInput<String>(definition),
      description = pulumi.Input.asOptionalInput<String>(description),
      format = pulumi.Input.asOptionalInput<String>(format),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      definition: map['definition'] == null ? null : pulumi.Output.create<String>(map['definition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

