// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyPolicyDetailsScheduleFastRestoreRule {
  /// The Availability Zones in which to enable fast snapshot restore.
  final List<String> availabilityZones;
  final int? count;
  final int? interval;
  final String? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleFastRestoreRule].
  /// [availabilityZones] The Availability Zones in which to enable fast snapshot restore.
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  LifecyclePolicyPolicyDetailsScheduleFastRestoreRule({
    required this.availabilityZones,
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'count': ?count,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleFastRestoreRule(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      count: map['count'] == null ? null : map['count'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      intervalUnit: map['intervalUnit'] == null ? null : map['intervalUnit'] as String,
    );
  }
}

