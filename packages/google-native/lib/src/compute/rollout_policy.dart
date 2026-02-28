// ignore_for_file: unused_element, unnecessary_cast

/// A rollout policy configuration.
class RolloutPolicy {
  /// An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  final String? defaultRolloutTime;

  /// Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  final Map<String, String>? locationRolloutPolicies;

  /// Creates a new [RolloutPolicy].
  /// [defaultRolloutTime] An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  /// [locationRolloutPolicies] Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  RolloutPolicy({
    this.defaultRolloutTime,
    this.locationRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultRolloutTimeValue = defaultRolloutTime;
    if (defaultRolloutTimeValue != null) {
      map['defaultRolloutTime'] = defaultRolloutTimeValue;
    }
    final locationRolloutPoliciesValue = locationRolloutPolicies;
    if (locationRolloutPoliciesValue != null) {
      map['locationRolloutPolicies'] = locationRolloutPoliciesValue;
    }
    return map;
  }

  factory RolloutPolicy.fromMap(Map<String, dynamic> map) {
    return RolloutPolicy(
      defaultRolloutTime: map['defaultRolloutTime'] == null
          ? null
          : map['defaultRolloutTime'] as String,
      locationRolloutPolicies: map['locationRolloutPolicies'] == null
          ? null
          : (map['locationRolloutPolicies'] as Map).cast<String, String>(),
    );
  }
}
