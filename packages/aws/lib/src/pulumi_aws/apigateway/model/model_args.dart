// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Model.
class ModelArgs {
  /// Content type of the model
  final Input<String> contentType;

  /// Description of the model
  final Input<String>? description;

  /// Name of the model
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the associated REST API
  final Input<String> restApi;

  /// Schema of the model in a JSON form
  final Input<String>? schema;

  ModelArgs({
    required this.contentType,
    this.description,
    this.name,
    this.region,
    required this.restApi,
    this.schema,
  });

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
      contentType: Input.asInput<String>(map['contentType']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      restApi: Input.asInput<String>(map['restApi']),
      schema: Input.asOptionalInput<String>(map['schema']),
    );
  }
}
