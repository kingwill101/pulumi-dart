// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_parameter_object_attribute.dart';

class PipelineDefinitionParameterObject {
  /// Configuration block for attributes of the parameter object. See below
  final pulumi.Input<List<PipelineDefinitionParameterObjectAttribute>?>? attributes;
  /// ID of the parameter object.
  final pulumi.Input<String> id;

  /// Creates a new [PipelineDefinitionParameterObject].
  /// [attributes] Configuration block for attributes of the parameter object. See below
  /// [id] ID of the parameter object.
  const PipelineDefinitionParameterObject({
    this.attributes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<PipelineDefinitionParameterObjectAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<PipelineDefinitionParameterObjectAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
    };
  }

  factory PipelineDefinitionParameterObject.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterObject(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineDefinitionParameterObjectAttribute>(guardedValue, (value) => PipelineDefinitionParameterObjectAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
