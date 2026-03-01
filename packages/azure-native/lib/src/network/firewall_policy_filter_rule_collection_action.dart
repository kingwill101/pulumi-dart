// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the FirewallPolicyFilterRuleCollectionAction.
class FirewallPolicyFilterRuleCollectionAction {
  /// The type of action.
  final String? type;

  /// Creates a new [FirewallPolicyFilterRuleCollectionAction].
  /// [type] The type of action.
  FirewallPolicyFilterRuleCollectionAction({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FirewallPolicyFilterRuleCollectionAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFilterRuleCollectionAction(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

