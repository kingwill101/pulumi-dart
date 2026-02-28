// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_definition_parameter_value.dart';

/// {@template pulumi_datapipeline_get_pipeline_definition_get_pipeline_definition_args_doc}
/// Arguments for getPipelineDefinition.
/// {@endtemplate}
/// {@macro pulumi_datapipeline_get_pipeline_definition_get_pipeline_definition_args_doc}
class GetPipelineDefinitionArgs {
  /// Parameter values used in the pipeline definition. See below
  final pulumi.Input<List<GetPipelineDefinitionParameterValue>>?
      parameterValues;

  /// ID of the pipeline.
  final pulumi.Input<String> pipelineId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPipelineDefinitionArgs].
  /// [parameterValues] Parameter values used in the pipeline definition. See below
  /// [pipelineId] ID of the pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPipelineDefinitionArgs({
    List<GetPipelineDefinitionParameterValue>? parameterValues,
    required String pipelineId,
    String? region,
  })  : parameterValues = pulumi.Input.asOptionalInput<
            List<GetPipelineDefinitionParameterValue>>(parameterValues),
        pipelineId = pulumi.Input.asInput<String>(pipelineId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterValuesValue = parameterValues;
    if (parameterValuesValue != null) {
      map['parameterValues'] = pulumi.Input.mapOptionalInputValue<
              List<GetPipelineDefinitionParameterValue>,
              List<Map<String, dynamic>>>(
          parameterValuesValue,
          (value) => pulumi.Input.encodeList<
              GetPipelineDefinitionParameterValue,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['pipelineId'] = pipelineId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetPipelineDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPipelineDefinitionArgs(
      parameterValues: map['parameterValues'] == null
          ? null
          : pulumi.Input.decodeList<GetPipelineDefinitionParameterValue>(
              map['parameterValues'],
              (value) => GetPipelineDefinitionParameterValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pipelineId: map['pipelineId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
