// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Model.
class ModelArgs2 {
  /// API identifier.
  final Input<String> apiId;

  /// The content-type for the model, for example, `application/json`. Must be between 1 and 256 characters in length.
  final Input<String> contentType;

  /// Description of the model. Must be between 1 and 128 characters in length.
  final Input<String>? description;

  /// Name of the model. Must be alphanumeric. Must be between 1 and 128 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Schema for the model. This should be a [JSON schema draft 4](https://tools.ietf.org/html/draft-zyp-json-schema-04) model. Must be less than or equal to 32768 characters in length.
  final Input<String> schema;

  ModelArgs2({
    required this.apiId,
    required this.contentType,
    this.description,
    this.name,
    this.region,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
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
    map['schema'] = schema;
    return map;
  }

  factory ModelArgs2.fromMap(Map<String, dynamic> map) {
    return ModelArgs2(
      apiId: Input.asInput<String>(map['apiId']),
      contentType: Input.asInput<String>(map['contentType']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      schema: Input.asInput<String>(map['schema']),
    );
  }
}
