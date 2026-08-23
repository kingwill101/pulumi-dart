// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument {
  /// Name of the query argument to inspect.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query argument to inspect.
  const WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
