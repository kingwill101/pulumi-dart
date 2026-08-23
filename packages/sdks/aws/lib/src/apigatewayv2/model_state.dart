// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Model resources.
class ModelState {
  /// API identifier.
  final pulumi.Input<String>? apiId;
  /// Content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
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
  /// [contentType] Content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  /// [description] Description of the model. Must be between 1 and 128 characters in length.
  /// [name] Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  const ModelState({
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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
