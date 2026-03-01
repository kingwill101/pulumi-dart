// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Model resources.
class ModelState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  final pulumi.Input<String>? contentType;
  /// Description of the model. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? description;
  /// Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  final pulumi.Input<String>? schema;

  /// Creates a new [ModelState].
  /// [apiId] API identifier.
  /// [contentType] The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  /// [description] Description of the model. Must be between 1 and 128 characters in length.
  /// [name] Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  ModelState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? schema,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      schema = pulumi.Input.asOptionalInput<String>(schema);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'contentType': ?contentType,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'schema': ?schema,
    };
  }

  factory ModelState.fromMap(Map<String, dynamic> map) {
    return ModelState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schema: map['schema'] == null ? null : pulumi.Output.create<String>(map['schema'] as String),
    );
  }
}

