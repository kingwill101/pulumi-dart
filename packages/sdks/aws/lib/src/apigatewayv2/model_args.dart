// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_model_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_model_model_args_doc}
class ModelArgs {
  /// API identifier.
  final pulumi.Input<String> apiId;

  /// The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  final pulumi.Input<String> contentType;

  /// Description of the model. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? description;

  /// Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  final pulumi.Input<String> schema;

  /// Creates a new [ModelArgs].
  /// [apiId] API identifier.
  /// [contentType] The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  /// [description] Description of the model. Must be between 1 and 128 characters in length.
  /// [name] Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schema] Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  ModelArgs({
    required this.apiId,
    required this.contentType,
    this.description,
    this.name,
    this.region,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'contentType': contentType,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'schema': schema,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schema: pulumi.Input.fromValue(map['schema'] as String),
    );
  }
}
