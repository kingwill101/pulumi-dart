// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleFastRestoreRule {
  /// The Availability Zones in which to enable fast snapshot restore.
  final List<String> availabilityZones;
  final int? count;
  final int? interval;
  final String? intervalUnit;

  LifecyclePolicyPolicyDetailsScheduleFastRestoreRule({
    required this.availabilityZones,
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZones'] = availabilityZones;
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue;
    }
    final intervalValue = interval;
    if (intervalValue != null) {
      map['interval'] = intervalValue;
    }
    final intervalUnitValue = intervalUnit;
    if (intervalUnitValue != null) {
      map['intervalUnit'] = intervalUnitValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleFastRestoreRule(
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      count: map['count'] == null ? null : map['count'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      intervalUnit:
          map['intervalUnit'] == null ? null : map['intervalUnit'] as String,
    );
  }
}
