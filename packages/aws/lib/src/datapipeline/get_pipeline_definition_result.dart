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
  GetPipelineDefinitionResult({
    required this.id,
    required this.parameterObjects,
    this.parameterValues,
    required this.pipelineId,
    required this.pipelineObjects,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parameterObjects'] = pulumi.Input.encodeList<
        GetPipelineDefinitionParameterObject,
        Map<String, dynamic>>(parameterObjects, (value) => value.toMap());
    final parameterValuesValue = parameterValues;
    if (parameterValuesValue != null) {
      map['parameterValues'] = pulumi.Input.encodeList<
          GetPipelineDefinitionParameterValue,
          Map<String, dynamic>>(parameterValuesValue, (value) => value.toMap());
    }
    map['pipelineId'] = pipelineId;
    map['pipelineObjects'] = pulumi.Input.encodeList<
        GetPipelineDefinitionPipelineObject,
        Map<String, dynamic>>(pipelineObjects, (value) => value.toMap());
    map['region'] = region;
    return map;
  }

  factory GetPipelineDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionResult(
      id: map['id'] as String,
      parameterObjects:
          pulumi.Input.decodeList<GetPipelineDefinitionParameterObject>(
              map['parameterObjects'],
              (value) => GetPipelineDefinitionParameterObject.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parameterValues: map['parameterValues'] == null
          ? null
          : pulumi.Input.decodeList<GetPipelineDefinitionParameterValue>(
              map['parameterValues'],
              (value) => GetPipelineDefinitionParameterValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pipelineId: map['pipelineId'] as String,
      pipelineObjects:
          pulumi.Input.decodeList<GetPipelineDefinitionPipelineObject>(
              map['pipelineObjects'],
              (value) => GetPipelineDefinitionPipelineObject.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
