// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_arc_routing_control_config_region_and_routing_control.dart';

class PlanWorkflowStepArcRoutingControlConfig {
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// List of regions and their routing controls. See Region and Routing Controls below.
  final pulumi.Input<List<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl>>? regionAndRoutingControls;
  /// Timeout in minutes.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepArcRoutingControlConfig].
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [regionAndRoutingControls] List of regions and their routing controls. See Region and Routing Controls below.
  /// [timeoutMinutes] Timeout in minutes.
  PlanWorkflowStepArcRoutingControlConfig({
    this.crossAccountRole,
    this.externalId,
    this.regionAndRoutingControls,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'regionAndRoutingControls': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl>, List<Map<String, dynamic>>>(regionAndRoutingControls, (value) => pulumi.Input.encodeList<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepArcRoutingControlConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepArcRoutingControlConfig(
      crossAccountRole: map['crossAccountRole'] == null ? null : ((map['crossAccountRole'] as String).input()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
      regionAndRoutingControls: map['regionAndRoutingControls'] == null ? null : ((pulumi.Input.decodeList<PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl>(map['regionAndRoutingControls']!, (value) => PlanWorkflowStepArcRoutingControlConfigRegionAndRoutingControl.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      timeoutMinutes: map['timeoutMinutes'] == null ? null : ((map['timeoutMinutes'] as int).input()).input(),
    );
  }
}

