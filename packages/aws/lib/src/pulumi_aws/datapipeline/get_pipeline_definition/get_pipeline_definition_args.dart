// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_pipeline_definition_parameter_value/get_pipeline_definition_parameter_value.dart';

/// Arguments for getPipelineDefinition.
class GetPipelineDefinitionArgs {
  /// Parameter values used in the pipeline definition. See below
  final pulumi.Input<List<GetPipelineDefinitionParameterValue>>?
      parameterValues;

  /// ID of the pipeline.
  final pulumi.Input<String> pipelineId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetPipelineDefinitionArgs({
    this.parameterValues,
    required this.pipelineId,
    this.region,
  });

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
      parameterValues: pulumi.Input.asOptionalInput<
          List<GetPipelineDefinitionParameterValue>>(map['parameterValues']),
      pipelineId: pulumi.Input.asInput<String>(map['pipelineId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
