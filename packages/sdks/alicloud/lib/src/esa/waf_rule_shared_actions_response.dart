// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleSharedActionsResponse {
  final pulumi.Input<int>? code;
  /// The internal unique ID of the WAF rule.
  final pulumi.Input<int>? id;

  /// Creates a new [WafRuleSharedActionsResponse].
  /// [code] Optional.
  /// [id] The internal unique ID of the WAF rule.
  WafRuleSharedActionsResponse({
    this.code,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'id': ?id,
    };
  }

  factory WafRuleSharedActionsResponse.fromMap(Map<String, dynamic> map) {
    return WafRuleSharedActionsResponse(
      code: map['code'] == null ? null : (map['code']! as int).input(),
      id: map['id'] == null ? null : (map['id']! as int).input(),
    );
  }
}

