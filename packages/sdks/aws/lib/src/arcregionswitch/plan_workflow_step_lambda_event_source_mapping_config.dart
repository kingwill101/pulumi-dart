// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_lambda_event_source_mapping_config_region_event_source_mapping.dart';
import 'plan_workflow_step_lambda_event_source_mapping_config_ungraceful.dart';

class PlanWorkflowStepLambdaEventSourceMappingConfig {
  /// Action to perform on the event source mapping.
  final pulumi.Input<String> action;
  /// Event source mappings per region. See `regionEventSourceMapping` Block for details.
  final pulumi.Input<List<PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping>?>? regionEventSourceMappings;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;
  /// Ungraceful behavior configuration. See `workflow.step.lambda_event_source_mapping_config.ungraceful` Block for details.
  final pulumi.Input<List<PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful>?>? ungracefuls;

  /// Creates a new [PlanWorkflowStepLambdaEventSourceMappingConfig].
  /// [action] Action to perform on the event source mapping.
  /// [regionEventSourceMappings] Event source mappings per region. See `regionEventSourceMapping` Block for details.
  /// [timeoutMinutes] Timeout in minutes.
  /// [ungracefuls] Ungraceful behavior configuration. See `workflow.step.lambda_event_source_mapping_config.ungraceful` Block for details.
  const PlanWorkflowStepLambdaEventSourceMappingConfig({
    required this.action,
    this.regionEventSourceMappings,
    this.timeoutMinutes,
    this.ungracefuls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'regionEventSourceMappings': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping>, List<Map<String, dynamic>>>(regionEventSourceMappings, (value) => pulumi.Input.encodeList<PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutMinutes': ?timeoutMinutes,
      'ungracefuls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful>, List<Map<String, dynamic>>>(ungracefuls, (value) => pulumi.Input.encodeList<PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepLambdaEventSourceMappingConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepLambdaEventSourceMappingConfig(
      action: pulumi.Input.fromValue(map['action'] as String),
      regionEventSourceMappings: (() { final guardedValue = map['regionEventSourceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping>(guardedValue, (value) => PlanWorkflowStepLambdaEventSourceMappingConfigRegionEventSourceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ungracefuls: (() { final guardedValue = map['ungracefuls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful>(guardedValue, (value) => PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
