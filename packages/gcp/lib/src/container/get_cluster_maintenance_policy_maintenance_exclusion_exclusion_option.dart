// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption {
  /// The behavior of the exclusion end time.
  final String endTimeBehavior;

  /// The scope of automatic upgrades to restrict in the exclusion window.
  final String scope;

  /// Creates a new [GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption].
  /// [endTimeBehavior] The behavior of the exclusion end time.
  /// [scope] The scope of automatic upgrades to restrict in the exclusion window.
  GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption({
    required this.endTimeBehavior,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeBehavior': endTimeBehavior,
      'scope': scope,
    };
  }

  factory GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterMaintenancePolicyMaintenanceExclusionExclusionOption(
      endTimeBehavior: map['endTimeBehavior'] as String,
      scope: map['scope'] as String,
    );
  }
}
