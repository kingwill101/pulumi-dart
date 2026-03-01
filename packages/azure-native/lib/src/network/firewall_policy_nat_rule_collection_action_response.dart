// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the FirewallPolicyNatRuleCollectionAction.
class FirewallPolicyNatRuleCollectionActionResponse {
  /// The type of action.
  final String? type;

  /// Creates a new [FirewallPolicyNatRuleCollectionActionResponse].
  /// [type] The type of action.
  FirewallPolicyNatRuleCollectionActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyNatRuleCollectionActionResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyNatRuleCollectionActionResponse(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

