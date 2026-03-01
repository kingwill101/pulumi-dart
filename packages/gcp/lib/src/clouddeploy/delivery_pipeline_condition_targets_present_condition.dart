// ignore_for_file: unused_element, unnecessary_cast


class DeliveryPipelineConditionTargetsPresentCondition {
  /// The list of Target names that are missing. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.
  final List<String>? missingTargets;
  /// True if there aren't any missing Targets.
  final bool? status;
  /// Output only. Most recent time at which the pipeline was updated.
  final String? updateTime;

  /// Creates a new [DeliveryPipelineConditionTargetsPresentCondition].
  /// [missingTargets] The list of Target names that are missing. For example, projects/{project_id}/locations/{location_name}/targets/{target_name}.
  /// [status] True if there aren't any missing Targets.
  /// [updateTime] Output only. Most recent time at which the pipeline was updated.
  DeliveryPipelineConditionTargetsPresentCondition({
    this.missingTargets,
    this.status,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'missingTargets': ?missingTargets,
      'status': ?status,
      'updateTime': ?updateTime,
    };
  }

  factory DeliveryPipelineConditionTargetsPresentCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineConditionTargetsPresentCondition(
      missingTargets: map['missingTargets'] == null ? null : (map['missingTargets'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as bool,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}

