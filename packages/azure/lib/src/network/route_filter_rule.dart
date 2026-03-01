// ignore_for_file: unused_element, unnecessary_cast


class RouteFilterRule {
  /// The access type of the rule. The only possible value is `Allow`.
  final String access;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final List<String> communities;
  /// The name of the route filter rule.
  final String name;
  /// The rule type of the rule. The only possible value is `Community`.
  final String ruleType;

  /// Creates a new [RouteFilterRule].
  /// [access] The access type of the rule. The only possible value is `Allow`.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [name] The name of the route filter rule.
  /// [ruleType] The rule type of the rule. The only possible value is `Community`.
  RouteFilterRule({
    required this.access,
    required this.communities,
    required this.name,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'name': name,
      'ruleType': ruleType,
    };
  }

  factory RouteFilterRule.fromMap(Map<String, dynamic> map) {
    return RouteFilterRule(
      access: map['access'] as String,
      communities: (map['communities'] as List).cast<String>(),
      name: map['name'] as String,
      ruleType: map['ruleType'] as String,
    );
  }
}

