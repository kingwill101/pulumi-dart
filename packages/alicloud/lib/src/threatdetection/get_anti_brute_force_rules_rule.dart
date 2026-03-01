// ignore_for_file: unused_element, unnecessary_cast


class GetAntiBruteForceRulesRule {
  /// The ID of the defense rule.
  final String antiBruteForceRuleId;
  /// The name of the defense rule.
  final String antiBruteForceRuleName;
  /// Specifies whether to set the defense rule as the default rule.
  final bool defaultRule;
  /// The threshold for the number of failed user logins when the brute-force defense rule takes effect.
  final int failCount;
  /// The period of time during which logons from an account are not allowed. Unit: minutes.
  final int forbiddenTime;
  /// The ID of the defense rule.
  final String id;
  /// The period of time during which logon failures from an account are measured. Unit: minutes. If Span is set to 10, the defense rule takes effect when the logon failures measured within 10 minutes reaches the specified threshold. The IP address of attackers cannot be used to log on to the server in the specified period of time.
  final int span;
  /// An array consisting of the UUIDs of servers to which the defense rule is applied.
  final List<String> uuidLists;

  /// Creates a new [GetAntiBruteForceRulesRule].
  /// [antiBruteForceRuleId] The ID of the defense rule.
  /// [antiBruteForceRuleName] The name of the defense rule.
  /// [defaultRule] Specifies whether to set the defense rule as the default rule.
  /// [failCount] The threshold for the number of failed user logins when the brute-force defense rule takes effect.
  /// [forbiddenTime] The period of time during which logons from an account are not allowed. Unit: minutes.
  /// [id] The ID of the defense rule.
  /// [span] The period of time during which logon failures from an account are measured. Unit: minutes. If Span is set to 10, the defense rule takes effect when the logon failures measured within 10 minutes reaches the specified threshold. The IP address of attackers cannot be used to log on to the server in the specified period of time.
  /// [uuidLists] An array consisting of the UUIDs of servers to which the defense rule is applied.
  GetAntiBruteForceRulesRule({
    required this.antiBruteForceRuleId,
    required this.antiBruteForceRuleName,
    required this.defaultRule,
    required this.failCount,
    required this.forbiddenTime,
    required this.id,
    required this.span,
    required this.uuidLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antiBruteForceRuleId': antiBruteForceRuleId,
      'antiBruteForceRuleName': antiBruteForceRuleName,
      'defaultRule': defaultRule,
      'failCount': failCount,
      'forbiddenTime': forbiddenTime,
      'id': id,
      'span': span,
      'uuidLists': uuidLists,
    };
  }

  factory GetAntiBruteForceRulesRule.fromMap(Map<String, dynamic> map) {
    return GetAntiBruteForceRulesRule(
      antiBruteForceRuleId: map['antiBruteForceRuleId'] as String,
      antiBruteForceRuleName: map['antiBruteForceRuleName'] as String,
      defaultRule: map['defaultRule'] as bool,
      failCount: map['failCount'] as int,
      forbiddenTime: map['forbiddenTime'] as int,
      id: map['id'] as String,
      span: map['span'] as int,
      uuidLists: (map['uuidLists'] as List).cast<String>(),
    );
  }
}

