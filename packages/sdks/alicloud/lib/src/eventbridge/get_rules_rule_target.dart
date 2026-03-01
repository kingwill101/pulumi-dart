// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleTarget {
  /// The endpoint.
  final String endpoint;
  /// The id of target.
  final String targetId;
  /// The type of target.
  final String type;

  /// Creates a new [GetRulesRuleTarget].
  /// [endpoint] The endpoint.
  /// [targetId] The id of target.
  /// [type] The type of target.
  GetRulesRuleTarget({
    required this.endpoint,
    required this.targetId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': endpoint,
      'targetId': targetId,
      'type': type,
    };
  }

  factory GetRulesRuleTarget.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleTarget(
      endpoint: map['endpoint'] as String,
      targetId: map['targetId'] as String,
      type: map['type'] as String,
    );
  }
}

