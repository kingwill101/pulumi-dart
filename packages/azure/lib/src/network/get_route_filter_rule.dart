// ignore_for_file: unused_element, unnecessary_cast


class GetRouteFilterRule {
  /// The access type of the rule
  final String access;
  /// The collection for bgp community values.
  final List<String> communities;
  /// The Name of this Route Filter.
  final String name;
  /// The Route Filter Rule Type.
  final String ruleType;

  /// Creates a new [GetRouteFilterRule].
  /// [access] The access type of the rule
  /// [communities] The collection for bgp community values.
  /// [name] The Name of this Route Filter.
  /// [ruleType] The Route Filter Rule Type.
  GetRouteFilterRule({
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

  factory GetRouteFilterRule.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRule(
      access: map['access'] as String,
      communities: (map['communities'] as List).cast<String>(),
      name: map['name'] as String,
      ruleType: map['ruleType'] as String,
    );
  }
}

