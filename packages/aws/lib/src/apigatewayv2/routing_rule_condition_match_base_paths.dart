// ignore_for_file: unused_element, unnecessary_cast

class RoutingRuleConditionMatchBasePaths {
  /// List of strings of the case sensitive base path to be matched.
  final List<String> anyOfs;

  /// Creates a new [RoutingRuleConditionMatchBasePaths].
  /// [anyOfs] List of strings of the case sensitive base path to be matched.
  RoutingRuleConditionMatchBasePaths({required this.anyOfs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'anyOfs': anyOfs};
  }

  factory RoutingRuleConditionMatchBasePaths.fromMap(Map<String, dynamic> map) {
    return RoutingRuleConditionMatchBasePaths(
      anyOfs: (map['anyOfs'] as List).cast<String>(),
    );
  }
}
