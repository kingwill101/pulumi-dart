// ignore_for_file: unused_element, unnecessary_cast

/// A rollout policy configuration.
class RolloutPolicyResponse2 {
  /// An optional RFC3339 timestamp on or after which the update is considered rolled out to any zone that is not explicitly stated.
  final String defaultRolloutTime;

  /// Location based rollout policies to apply to the resource. Currently only zone names are supported and must be represented as valid URLs, like: zones/us-central1-a. The value expects an RFC3339 timestamp on or after which the update is considered rolled out to the specified location.
  final Map<String, String> locationRolloutPolicies;

  RolloutPolicyResponse2({
    required this.defaultRolloutTime,
    required this.locationRolloutPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultRolloutTime'] = defaultRolloutTime;
    map['locationRolloutPolicies'] = locationRolloutPolicies;
    return map;
  }

  factory RolloutPolicyResponse2.fromMap(Map<String, dynamic> map) {
    return RolloutPolicyResponse2(
      defaultRolloutTime: map['defaultRolloutTime'] as String,
      locationRolloutPolicies:
          (map['locationRolloutPolicies'] as Map).cast<String, String>(),
    );
  }
}
