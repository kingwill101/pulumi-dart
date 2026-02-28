// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_pipeline_object_field.dart';

class PipelineDefinitionPipelineObject {
  /// Configuration block for Key-value pairs that define the properties of the object. See below
  final List<PipelineDefinitionPipelineObjectField>? fields;

  /// ID of the object.
  final String id;

  /// ARN of the storage connector.
  final String name;

  /// Creates a new [PipelineDefinitionPipelineObject].
  /// [fields] Configuration block for Key-value pairs that define the properties of the object. See below
  /// [id] ID of the object.
  /// [name] ARN of the storage connector.
  PipelineDefinitionPipelineObject({
    this.fields,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<
          PipelineDefinitionPipelineObjectField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory PipelineDefinitionPipelineObject.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionPipelineObject(
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<PipelineDefinitionPipelineObjectField>(
              map['fields'],
              (value) => PipelineDefinitionPipelineObjectField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
