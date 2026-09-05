// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control.dart';

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String?>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String?>? externalId;
  /// Regions and their routing controls. See `regionAndRoutingControls` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>?>? regionAndRoutingControls;
  /// Timeout in minutes.
  final pulumi.Input<int?>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepArcRoutingControlConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [regionAndRoutingControls] Regions and their routing controls. See `regionAndRoutingControls` Block for details.
  /// [timeoutMinutes] Timeout in minutes.
  const PlanWorkflowStepParallelConfigStepArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.regionAndRoutingControls,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'regionAndRoutingControls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>, List<Map<String, dynamic>>>(regionAndRoutingControls, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfig(
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionAndRoutingControls: (() { final guardedValue = map['regionAndRoutingControls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
