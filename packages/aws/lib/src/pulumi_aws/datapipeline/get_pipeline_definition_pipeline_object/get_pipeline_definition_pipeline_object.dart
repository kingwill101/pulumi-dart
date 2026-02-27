// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_pipeline_definition_pipeline_object_field/get_pipeline_definition_pipeline_object_field.dart';

class GetPipelineDefinitionPipelineObject {
  /// Key-value pairs that define the properties of the object. See below
  final List<GetPipelineDefinitionPipelineObjectField>? fields;

  /// ID of the object.
  final String id;

  /// ARN of the storage connector.
  final String name;

  GetPipelineDefinitionPipelineObject({
    this.fields,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<
          GetPipelineDefinitionPipelineObjectField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetPipelineDefinitionPipelineObject.fromMap(
      Map<String, dynamic> map) {
    return GetPipelineDefinitionPipelineObject(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<GetPipelineDefinitionPipelineObjectField>(
              map['fields'],
              (value) => GetPipelineDefinitionPipelineObjectField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
