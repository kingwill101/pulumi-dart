// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActiveReceiptRuleSet.
class GetActiveReceiptRuleSetResult {
  /// SES receipt rule set ARN.
  final String? arn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// Name of the rule set
  final String? ruleSetName;

  /// Creates a new [GetActiveReceiptRuleSetResult].
  /// [arn] SES receipt rule set ARN.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [ruleSetName] Name of the rule set
  const GetActiveReceiptRuleSetResult({
    this.arn,
    this.id,
    this.region,
    this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'region': ?region,
      'ruleSetName': ?ruleSetName,
    };
  }

  factory GetActiveReceiptRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetActiveReceiptRuleSetResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleSetName: (() { final guardedValue = map['ruleSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
