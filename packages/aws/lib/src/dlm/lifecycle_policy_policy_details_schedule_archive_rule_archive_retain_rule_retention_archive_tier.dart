// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier {
  final int? count;
  final int? interval;
  final String? intervalUnit;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier].
  /// [count] Optional.
  /// [interval] Optional.
  /// [intervalUnit] Optional.
  LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier({
    this.count,
    this.interval,
    this.intervalUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'interval': ?interval,
      'intervalUnit': ?intervalUnit,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecyclePolicyPolicyDetailsScheduleArchiveRuleArchiveRetainRuleRetentionArchiveTier(
      count: map['count'] == null ? null : map['count'] as int,
      interval: map['interval'] == null ? null : map['interval'] as int,
      intervalUnit: map['intervalUnit'] == null
          ? null
          : map['intervalUnit'] as String,
    );
  }
}
