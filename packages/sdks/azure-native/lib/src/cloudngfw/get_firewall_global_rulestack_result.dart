// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFirewallGlobalRulestack.
class GetFirewallGlobalRulestackResult {
  /// rulestack description
  final String azureId;

  /// Creates a new [GetFirewallGlobalRulestackResult].
  /// [azureId] rulestack description
  const GetFirewallGlobalRulestackResult({
    required this.azureId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureId': azureId,
    };
  }

  factory GetFirewallGlobalRulestackResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallGlobalRulestackResult(
      azureId: map['azureId'] as String,
    );
  }
}
