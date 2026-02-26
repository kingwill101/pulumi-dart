// ignore_for_file: unused_element, unnecessary_cast

/// TargetsPresentCondition contains information on any Targets defined in the Delivery Pipeline that do not actually exist.
class TargetsPresentConditionResponse {
  /// The list of Target names that do not exist. For example, `projects/{project_id}/locations/{location_name}/targets/{target_name}`.
  final List<String> missingTargets;

  /// True if there aren't any missing Targets.
  final bool status;

  /// Last time the condition was updated.
  final String updateTime;

  TargetsPresentConditionResponse({
    required this.missingTargets,
    required this.status,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['missingTargets'] = missingTargets;
    map['status'] = status;
    map['updateTime'] = updateTime;
    return map;
  }

  factory TargetsPresentConditionResponse.fromMap(Map<String, dynamic> map) {
    return TargetsPresentConditionResponse(
      missingTargets: (map['missingTargets'] as List).cast<String>(),
      status: map['status'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
