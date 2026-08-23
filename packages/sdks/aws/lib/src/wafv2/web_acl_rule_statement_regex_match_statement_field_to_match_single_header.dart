// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexMatchStatementFieldToMatchSingleHeader {
  /// Name of the header to inspect (case insensitive).
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementRegexMatchStatementFieldToMatchSingleHeader].
  /// [name] Name of the header to inspect (case insensitive).
  const WebAclRuleStatementRegexMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleStatementRegexMatchStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatementFieldToMatchSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
