// ignore_for_file: unused_element, unnecessary_cast

class RoutingRuleConditionMatchBasePaths {
  /// List of strings of the case sensitive base path to be matched.
  final List<String> anyOfs;

  RoutingRuleConditionMatchBasePaths({
    required this.anyOfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anyOfs'] = anyOfs;
    return map;
  }

  factory RoutingRuleConditionMatchBasePaths.fromMap(Map<String, dynamic> map) {
    return RoutingRuleConditionMatchBasePaths(
      anyOfs: (map['anyOfs'] as List).cast<String>(),
    );
  }
}
