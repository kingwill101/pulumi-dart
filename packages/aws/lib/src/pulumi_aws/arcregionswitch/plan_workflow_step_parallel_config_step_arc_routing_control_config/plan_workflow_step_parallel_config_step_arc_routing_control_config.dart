// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control/plan_workflow_step_parallel_config_step_arc_routing_control_config_region_and_routing_control.dart';

class PlanWorkflowStepParallelConfigStepArcRoutingControlConfig {
  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  /// List of regions and their routing controls. See Region and Routing Controls below.
  final List<
          PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>?
      regionAndRoutingControls;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  PlanWorkflowStepParallelConfigStepArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.regionAndRoutingControls,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final crossAccountRoleValue = crossAccountRole;
    if (crossAccountRoleValue != null) {
      map['crossAccountRole'] = crossAccountRoleValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    final regionAndRoutingControlsValue = regionAndRoutingControls;
    if (regionAndRoutingControlsValue != null) {
      map['regionAndRoutingControls'] = Input.encodeList<
          PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl,
          Map<String,
              dynamic>>(regionAndRoutingControlsValue, (value) => value.toMap());
    }
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepArcRoutingControlConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepArcRoutingControlConfig(
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      regionAndRoutingControls: map['regionAndRoutingControls'] == null
          ? null
          : Input.decodeList<
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl>(
              map['regionAndRoutingControls'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfigRegionAndRoutingControl
                      .fromMap((value as Map).cast<String, dynamic>())),
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
    );
  }
}
