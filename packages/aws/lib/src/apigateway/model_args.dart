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
    required String contentType,
    String? description,
    String? name,
    String? region,
    required String restApi,
    String? schema,
  })  : contentType = pulumi.Input.asInput<String>(contentType),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        restApi = pulumi.Input.asInput<String>(restApi),
        schema = pulumi.Input.asOptionalInput<String>(schema);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentType'] = contentType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    final schemaValue = schema;
    if (schemaValue != null) {
      map['schema'] = schemaValue;
    }
    return map;
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      contentType: map['contentType'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApi: map['restApi'] as String,
      schema: map['schema'] == null ? null : map['schema'] as String,
    );
  }
}
