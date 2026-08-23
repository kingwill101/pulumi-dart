// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query argument to inspect.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query argument to inspect.
  const WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementByteMatchStatementFieldToMatchSingleQueryArgument(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
