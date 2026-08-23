// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleRuleLabel {
  /// Label string (1-1024 characters, alphanumeric, underscore, hyphen, and colon characters only).
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleRuleLabel].
  /// [name] Label string (1-1024 characters, alphanumeric, underscore, hyphen, and colon characters only).
  const WebAclRuleRuleLabel({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleRuleLabel.fromMap(Map<String, dynamic> map) {
    return WebAclRuleRuleLabel(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
