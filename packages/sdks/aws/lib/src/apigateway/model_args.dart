// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_model_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_apigateway_model_model_args_doc}
class ModelArgs {
  /// Content type of the model
  final pulumi.Input<String> contentType;
  /// Description of the model
  final pulumi.Input<String>? description;
  /// Name of the model
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the associated REST API
  final pulumi.Input<String> restApi;
  /// Schema of the model in a JSON form
  final pulumi.Input<String>? schema;

  /// Creates a new [ModelArgs].
  /// [contentType] Content type of the model
  /// [description] Description of the model
  /// [name] Name of the model
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the associated REST API
  /// [schema] Schema of the model in a JSON form
  ModelArgs({
    required this.contentType,
    this.description,
    this.name,
    this.region,
    required this.restApi,
    this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'restApi': restApi,
      'schema': ?schema,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      contentType: (map['contentType'] as String).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      restApi: (map['restApi'] as String).input(),
      schema: map['schema'] == null ? null : ((map['schema'] as String).input()).input(),
    );
  }
}

