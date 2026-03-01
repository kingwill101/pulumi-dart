// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_definition_parameter_object_attribute.dart';

class GetPipelineDefinitionParameterObject {
  final List<GetPipelineDefinitionParameterObjectAttribute> attributes;
  /// ID of the object.
  final String id;

  /// Creates a new [GetPipelineDefinitionParameterObject].
  /// [attributes] Required.
  /// [id] ID of the object.
  GetPipelineDefinitionParameterObject({
    required this.attributes,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': pulumi.Input.encodeList<GetPipelineDefinitionParameterObjectAttribute, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetPipelineDefinitionParameterObject.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionParameterObject(
      attributes: pulumi.Input.decodeList<GetPipelineDefinitionParameterObjectAttribute>(map['attributes'], (value) => GetPipelineDefinitionParameterObjectAttribute.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

