// ignore_for_file: unused_element, unnecessary_cast

class PolicyBooleanPolicy {
  /// If true, then the Policy is enforced. If false, then any configuration is acceptable.
  final bool enforced;

  PolicyBooleanPolicy({
    required this.enforced,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enforced'] = enforced;
    return map;
  }

  factory PolicyBooleanPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyBooleanPolicy(
      enforced: map['enforced'] as bool,
    );
  }
}
