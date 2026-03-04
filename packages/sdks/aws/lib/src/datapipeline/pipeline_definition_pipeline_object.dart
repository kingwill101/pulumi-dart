// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_pipeline_object_field.dart';

class PipelineDefinitionPipelineObject {
  /// Configuration block for Key-value pairs that define the properties of the object. See below
  final pulumi.Input<List<PipelineDefinitionPipelineObjectField>>? fields;

  /// ID of the object.
  final pulumi.Input<String> id;

  /// ARN of the storage connector.
  final pulumi.Input<String> name;

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
    return <String, dynamic>{
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<PipelineDefinitionPipelineObjectField>,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) =>
                pulumi.Input.encodeList<
                  PipelineDefinitionPipelineObjectField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'name': name,
    };
  }

  factory PipelineDefinitionPipelineObject.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionPipelineObject(
      fields: (() {
        final guardedValue = map['fields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PipelineDefinitionPipelineObjectField>(
            guardedValue,
            (value) => PipelineDefinitionPipelineObjectField.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
