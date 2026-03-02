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
    this.apiId,
    this.contentType,
    this.description,
    this.name,
    this.region,
    this.schema,
  });

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
      apiId: map['apiId'] == null ? null : ((map['apiId'] as String).input()).input(),
      contentType: map['contentType'] == null ? null : ((map['contentType'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schema: map['schema'] == null ? null : ((map['schema'] as String).input()).input(),
    );
  }
}

