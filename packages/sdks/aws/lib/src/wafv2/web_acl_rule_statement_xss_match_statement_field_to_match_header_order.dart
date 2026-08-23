// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder {
  /// How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> oversizeHandling;

  /// Creates a new [WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder].
  /// [oversizeHandling] How to handle requests with headers larger than the inspection limit. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder(
      oversizeHandling: pulumi.Input.fromValue(map['oversizeHandling'] as String),
    );
  }
}
