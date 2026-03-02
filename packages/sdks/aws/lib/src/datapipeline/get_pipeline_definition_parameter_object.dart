// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_definition_parameter_object_attribute.dart';

class GetPipelineDefinitionParameterObject {
  final pulumi.Input<List<GetPipelineDefinitionParameterObjectAttribute>> attributes;
  /// ID of the object.
  final pulumi.Input<String> id;

  /// Creates a new [GetPipelineDefinitionParameterObject].
  /// [attributes] Required.
  /// [id] ID of the object.
  GetPipelineDefinitionParameterObject({
    required this.attributes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.mapInputValue<List<GetPipelineDefinitionParameterObjectAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<GetPipelineDefinitionParameterObjectAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
    };
  }

  factory GetPipelineDefinitionParameterObject.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionParameterObject(
      attributes: (pulumi.Input.decodeList<GetPipelineDefinitionParameterObjectAttribute>(map['attributes'], (value) => GetPipelineDefinitionParameterObjectAttribute.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
    );
  }
}

