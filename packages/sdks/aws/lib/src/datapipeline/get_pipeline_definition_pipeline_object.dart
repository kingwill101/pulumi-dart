// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_definition_pipeline_object_field.dart';

class GetPipelineDefinitionPipelineObject {
  /// Key-value pairs that define the properties of the object. See below
  final pulumi.Input<List<GetPipelineDefinitionPipelineObjectField>>? fields;
  /// ID of the object.
  final pulumi.Input<String> id;
  /// ARN of the storage connector.
  final pulumi.Input<String> name;

  /// Creates a new [GetPipelineDefinitionPipelineObject].
  /// [fields] Key-value pairs that define the properties of the object. See below
  /// [id] ID of the object.
  /// [name] ARN of the storage connector.
  GetPipelineDefinitionPipelineObject({
    this.fields,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<GetPipelineDefinitionPipelineObjectField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<GetPipelineDefinitionPipelineObjectField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'name': name,
    };
  }

  factory GetPipelineDefinitionPipelineObject.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionPipelineObject(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<GetPipelineDefinitionPipelineObjectField>(map['fields'], (value) => GetPipelineDefinitionPipelineObjectField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

