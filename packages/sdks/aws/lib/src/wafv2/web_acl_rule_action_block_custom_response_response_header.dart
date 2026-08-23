// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleActionBlockCustomResponseResponseHeader {
  /// Header name.
  final pulumi.Input<String> name;
  /// Header value.
  final pulumi.Input<String> value;

  /// Creates a new [WebAclRuleActionBlockCustomResponseResponseHeader].
  /// [name] Header name.
  /// [value] Header value.
  const WebAclRuleActionBlockCustomResponseResponseHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory WebAclRuleActionBlockCustomResponseResponseHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleActionBlockCustomResponseResponseHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
