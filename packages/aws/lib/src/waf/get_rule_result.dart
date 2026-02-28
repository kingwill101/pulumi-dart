// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRule.
class GetRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  GetRuleResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
