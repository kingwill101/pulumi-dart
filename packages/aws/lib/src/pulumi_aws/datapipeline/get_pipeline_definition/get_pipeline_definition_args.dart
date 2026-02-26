// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_pipeline_definition_parameter_value/get_pipeline_definition_parameter_value.dart';

/// Arguments for getPipelineDefinition.
class GetPipelineDefinitionArgs {
  /// Parameter values used in the pipeline definition. See below
  final Input<List<GetPipelineDefinitionParameterValue>>? parameterValues;

  /// ID of the pipeline.
  final Input<String> pipelineId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetPipelineDefinitionArgs({
    this.parameterValues,
    required this.pipelineId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parameterValuesValue = parameterValues;
    if (parameterValuesValue != null) {
      map['parameterValues'] = Input.mapOptionalInputValue<
              List<GetPipelineDefinitionParameterValue>,
              List<Map<String, dynamic>>>(
          parameterValuesValue,
          (value) => Input.encodeList<GetPipelineDefinitionParameterValue,
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
      parameterValues:
          Input.asOptionalInput<List<GetPipelineDefinitionParameterValue>>(
              map['parameterValues']),
      pipelineId: Input.asInput<String>(map['pipelineId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
