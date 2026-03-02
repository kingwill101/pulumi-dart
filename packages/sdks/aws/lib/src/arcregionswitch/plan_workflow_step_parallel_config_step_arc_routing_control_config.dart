// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control.dart';

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// List of regions and their routing controls. See Region and Routing Controls below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>>? regionAndRoutingControls;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepArcRoutingControlConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [regionAndRoutingControls] List of regions and their routing controls. See Region and Routing Controls below.
  /// [timeoutMinutes] Timeout in minutes.
  PlanWorkflowStepParallelConfigStepArcRoutingControlConfig({
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
      crossAccountRole: map['crossAccountRole'] == null ? null : (map['crossAccountRole'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      regionAndRoutingControls: map['regionAndRoutingControls'] == null ? null : (pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>(map['regionAndRoutingControls'], (value) => PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : (map['timeoutMinutes'] as int).input(),
    );
  }
}

