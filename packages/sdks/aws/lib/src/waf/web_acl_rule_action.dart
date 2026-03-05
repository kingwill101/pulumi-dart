// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleAction {
  /// valid values are: `BLOCK`, `ALLOW`, or `COUNT`
  final pulumi.Input<String> type;

  /// Creates a new [WebAclRuleAction].
  /// [type] valid values are: `BLOCK`, `ALLOW`, or `COUNT`
  WebAclRuleAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WebAclRuleAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

