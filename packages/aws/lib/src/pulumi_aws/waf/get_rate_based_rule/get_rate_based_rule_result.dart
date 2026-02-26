// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRateBasedRule.
class GetRateBasedRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  GetRateBasedRuleResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetRateBasedRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRateBasedRuleResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
