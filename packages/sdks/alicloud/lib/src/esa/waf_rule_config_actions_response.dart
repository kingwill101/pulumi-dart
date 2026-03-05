// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigActionsResponse {
  final pulumi.Input<int>? code;
  /// The internal unique ID of the WAF rule.
  final pulumi.Input<int>? id;

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
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

