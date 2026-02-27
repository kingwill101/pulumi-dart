// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../plan_workflow_step_arc_routing_control_config_region_and_routing_control/plan_workflow_step_arc_routing_control_config_region_and_routing_control.dart';

class PlanWorkflowStepArcRoutingControlConfig {
  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  /// List of regions and their routing controls. See Region and Routing Controls below.
  final List<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl>?
      regionAndRoutingControls;

  /// Timeout in minutes.
  final int? timeoutMinutes;

  PlanWorkflowStepArcRoutingControlConfig({
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
      map['regionAndRoutingControls'] = pulumi.Input.encodeList<
              PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl,
              Map<String, dynamic>>(
          regionAndRoutingControlsValue, (value) => value.toMap());
    }
    final timeoutMinutesValue = timeoutMinutes;
    if (timeoutMinutesValue != null) {
      map['timeoutMinutes'] = timeoutMinutesValue;
    }
    return map;
  }

  factory PlanWorkflowStepArcRoutingControlConfig.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfig(
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      regionAndRoutingControls: map['regionAndRoutingControls'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl>(
              map['regionAndRoutingControls'],
              (value) =>
                  PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl
                      .fromMap((value as Map).cast<String, dynamic>())),
      timeoutMinutes:
          map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
    );
  }
}
