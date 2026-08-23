// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_definition_parameter_object.dart';
import 'get_pipeline_definition_parameter_value.dart';
import 'get_pipeline_definition_pipeline_object.dart';

/// Result data returned by getPipelineDefinition.
class GetPipelineDefinitionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Parameter objects used in the pipeline definition. See below
  final List<GetPipelineDefinitionParameterObject> parameterObjects;
  /// Parameter values used in the pipeline definition. See below
  final List<GetPipelineDefinitionParameterValue>? parameterValues;
  final String pipelineId;
  /// Objects defined in the pipeline. See below
  final List<GetPipelineDefinitionPipelineObject> pipelineObjects;
  final String region;

  /// Creates a new [GetPipelineDefinitionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameterObjects] Parameter objects used in the pipeline definition. See below
  /// [parameterValues] Parameter values used in the pipeline definition. See below
  /// [pipelineId] Required.
  /// [pipelineObjects] Objects defined in the pipeline. See below
  /// [region] Required.
  const GetPipelineDefinitionResult({
    required this.id,
    required this.parameterObjects,
    this.parameterValues,
    required this.pipelineId,
    required this.pipelineObjects,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parameterObjects': pulumi.Input.encodeList<GetPipelineDefinitionParameterObject, Map<String, dynamic>>(parameterObjects, (value) => value.toMap()),
      'parameterValues': ?(() { final guardedValue = parameterValues; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPipelineDefinitionParameterValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'pipelineId': pipelineId,
      'pipelineObjects': pulumi.Input.encodeList<GetPipelineDefinitionPipelineObject, Map<String, dynamic>>(pipelineObjects, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetPipelineDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionResult(
      id: map['id'] as String,
      parameterObjects: pulumi.Input.decodeList<GetPipelineDefinitionParameterObject>(map['parameterObjects']!, (value) => GetPipelineDefinitionParameterObject.fromMap((value as Map).cast<String, dynamic>())),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPipelineDefinitionParameterValue>(guardedValue, (value) => GetPipelineDefinitionParameterValue.fromMap((value as Map).cast<String, dynamic>())); })(),
      pipelineId: map['pipelineId'] as String,
      pipelineObjects: pulumi.Input.decodeList<GetPipelineDefinitionPipelineObject>(map['pipelineObjects']!, (value) => GetPipelineDefinitionPipelineObject.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
