// ignore_for_file: unused_element, unnecessary_cast

class DeliveryPipelineConditionTargetsPresentCondition {
  /// The list of Target names that are missing. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.
  final List<String>? missingTargets;

  /// True if there aren't any missing Targets.
  final bool? status;

  /// Output only. Most recent time at which the pipeline was updated.
  final String? updateTime;

  DeliveryPipelineConditionTargetsPresentCondition({
    this.missingTargets,
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final missingTargetsValue = missingTargets;
    if (missingTargetsValue != null) {
      map['missingTargets'] = missingTargetsValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory DeliveryPipelineConditionTargetsPresentCondition.fromMap(
      Map<String, dynamic> map) {
    return DeliveryPipelineConditionTargetsPresentCondition(
      missingTargets: map['missingTargets'] == null
          ? null
          : (map['missingTargets'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as bool,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
