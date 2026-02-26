// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getActiveReceiptRuleSet.
class GetActiveReceiptRuleSetResult {
  /// SES receipt rule set ARN.
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Name of the rule set
  final String ruleSetName;

  GetActiveReceiptRuleSetResult({
    required this.arn,
    required this.id,
    required this.region,
    required this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['region'] = region;
    map['ruleSetName'] = ruleSetName;
    return map;
  }

  factory GetActiveReceiptRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetActiveReceiptRuleSetResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      ruleSetName: map['ruleSetName'] as String,
    );
  }
}
