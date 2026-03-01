// ignore_for_file: unused_element, unnecessary_cast


class GetGroupDynamicMembership {
  /// Whether rule processing is "On" (true) or "Paused" (false).
  final bool enabled;
  /// The rule that determines membership of this group.
  final String rule;

  /// Creates a new [GetGroupDynamicMembership].
  /// [enabled] Whether rule processing is "On" (true) or "Paused" (false).
  /// [rule] The rule that determines membership of this group.
  GetGroupDynamicMembership({
    required this.enabled,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rule': rule,
    };
  }

  factory GetGroupDynamicMembership.fromMap(Map<String, dynamic> map) {
    return GetGroupDynamicMembership(
      enabled: map['enabled'] as bool,
      rule: map['rule'] as String,
    );
  }
}

