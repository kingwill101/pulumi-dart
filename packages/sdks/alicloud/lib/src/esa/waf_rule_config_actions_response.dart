// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigActionsResponse {
  final int? code;
  /// The internal unique ID of the WAF rule.
  final int? id;

  /// Creates a new [WafRuleConfigActionsResponse].
  /// [code] Optional.
  /// [id] The internal unique ID of the WAF rule.
  WafRuleConfigActionsResponse({
    this.code,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'id': ?id,
    };
  }

  factory WafRuleConfigActionsResponse.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigActionsResponse(
      code: map['code'] == null ? null : map['code'] as int,
      id: map['id'] == null ? null : map['id'] as int,
    );
  }
}

