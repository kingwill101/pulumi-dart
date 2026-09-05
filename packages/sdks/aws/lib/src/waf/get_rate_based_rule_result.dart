// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRateBasedRule.
class GetRateBasedRuleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;

  /// Creates a new [GetRateBasedRuleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  const GetRateBasedRuleResult({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetRateBasedRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRateBasedRuleResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
