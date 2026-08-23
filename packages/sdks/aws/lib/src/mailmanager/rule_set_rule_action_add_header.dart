// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionAddHeader {
  /// Header name. Must begin with `X-`.
  final pulumi.Input<String> headerName;
  /// Header value.
  final pulumi.Input<String> headerValue;

  /// Creates a new [RuleSetRuleActionAddHeader].
  /// [headerName] Header name. Must begin with `X-`.
  /// [headerValue] Header value.
  const RuleSetRuleActionAddHeader({
    required this.headerName,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'headerValue': headerValue,
    };
  }

  factory RuleSetRuleActionAddHeader.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionAddHeader(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      headerValue: pulumi.Input.fromValue(map['headerValue'] as String),
    );
  }
}
