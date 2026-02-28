// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_definition_parameter_object_attribute.dart';

class PipelineDefinitionParameterObject {
  /// Configuration block for attributes of the parameter object. See below
  final List<PipelineDefinitionParameterObjectAttribute>? attributes;

  /// ID of the parameter object.
  final String id;

  /// Creates a new [PipelineDefinitionParameterObject].
  /// [attributes] Configuration block for attributes of the parameter object. See below
  /// [id] ID of the parameter object.
  PipelineDefinitionParameterObject({
    this.attributes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = pulumi.Input.encodeList<
          PipelineDefinitionParameterObjectAttribute,
          Map<String, dynamic>>(attributesValue, (value) => value.toMap());
    }
    map['id'] = id;
    return map;
  }

  factory PipelineDefinitionParameterObject.fromMap(Map<String, dynamic> map) {
    return PipelineDefinitionParameterObject(
      attributes: map['attributes'] == null
          ? null
          : pulumi.Input.decodeList<PipelineDefinitionParameterObjectAttribute>(
              map['attributes'],
              (value) => PipelineDefinitionParameterObjectAttribute.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}
