// ignore_for_file: unused_element, unnecessary_cast

/// SkaffoldSupportedCondition contains information about when support for the release's version of skaffold ends.
class SkaffoldSupportedConditionResponse {
  /// The time at which this release's version of skaffold will enter maintenance mode.
  final String maintenanceModeTime;

  /// The skaffold support state for this release's version of skaffold.
  final String skaffoldSupportState;

  /// True if the version of skaffold used by this release is supported.
  final bool status;

  /// The time at which this release's version of skaffold will no longer be supported.
  final String supportExpirationTime;

  SkaffoldSupportedConditionResponse({
    required this.maintenanceModeTime,
    required this.skaffoldSupportState,
    required this.status,
    required this.supportExpirationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceModeTime'] = maintenanceModeTime;
    map['skaffoldSupportState'] = skaffoldSupportState;
    map['status'] = status;
    map['supportExpirationTime'] = supportExpirationTime;
    return map;
  }

  factory SkaffoldSupportedConditionResponse.fromMap(Map<String, dynamic> map) {
    return SkaffoldSupportedConditionResponse(
      maintenanceModeTime: map['maintenanceModeTime'] as String,
      skaffoldSupportState: map['skaffoldSupportState'] as String,
      status: map['status'] as bool,
      supportExpirationTime: map['supportExpirationTime'] as String,
    );
  }
}
