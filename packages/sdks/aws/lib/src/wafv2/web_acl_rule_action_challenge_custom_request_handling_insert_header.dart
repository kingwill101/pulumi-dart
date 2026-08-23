// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleActionChallengeCustomRequestHandlingInsertHeader {
  /// Header name.
  final pulumi.Input<String> name;
  /// Header value.
  final pulumi.Input<String> value;

  /// Creates a new [WebAclRuleActionChallengeCustomRequestHandlingInsertHeader].
  /// [name] Header name.
  /// [value] Header value.
  const WebAclRuleActionChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory WebAclRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionChallengeCustomRequestHandlingInsertHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
