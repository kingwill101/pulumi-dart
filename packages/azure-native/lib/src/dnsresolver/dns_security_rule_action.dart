// ignore_for_file: unused_element, unnecessary_cast


/// The action to take on DNS requests that match the DNS security rule.
class DnsSecurityRuleAction {
  /// The type of action to take.
  final String? actionType;
  /// The response code for block actions.
  final String? blockResponseCode;

  /// Creates a new [DnsSecurityRuleAction].
  /// [actionType] The type of action to take.
  /// [blockResponseCode] The response code for block actions.
  DnsSecurityRuleAction({
    this.actionType,
    this.blockResponseCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'blockResponseCode': ?blockResponseCode,
    };
  }

  factory DnsSecurityRuleAction.fromMap(Map<String, dynamic> map) {
    return DnsSecurityRuleAction(
      actionType: map['actionType'] == null ? null : map['actionType'] as String,
      blockResponseCode: map['blockResponseCode'] == null ? null : map['blockResponseCode'] as String,
    );
  }
}

