// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleOverrideAction {
  /// valid values are: `NONE` or `COUNT`
  final pulumi.Input<String> type;

  /// Creates a new [WebAclRuleOverrideAction].
  /// [type] valid values are: `NONE` or `COUNT`
  WebAclRuleOverrideAction({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory WebAclRuleOverrideAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleOverrideAction(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

