// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation {
  /// Relative processing order for multiple transformations (0-based).
  final pulumi.Input<int> priority;
  /// Transformation to apply. Valid values: `NONE`, `COMPRESS_WHITE_SPACE`, `HTML_ENTITY_DECODE`, `LOWERCASE`, `CMD_LINE`, `URL_DECODE`, `BASE64_DECODE`, `HEX_DECODE`, `MD5`, `REPLACE_COMMENTS`, `ESCAPE_SEQ_DECODE`, `SQL_HEX_DECODE`, `CSS_DECODE`, `JS_DECODE`, `NORMALIZE_PATH`, `NORMALIZE_PATH_WIN`, `REMOVE_NULLS`, `REPLACE_NULLS`, `BASE64_DECODE_EXT`, `URL_DECODE_UNI`, `UTF8_TO_UNICODE`.
  final pulumi.Input<String> type;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation].
  /// [priority] Relative processing order for multiple transformations (0-based).
  /// [type] Transformation to apply. Valid values: `NONE`, `COMPRESS_WHITE_SPACE`, `HTML_ENTITY_DECODE`, `LOWERCASE`, `CMD_LINE`, `URL_DECODE`, `BASE64_DECODE`, `HEX_DECODE`, `MD5`, `REPLACE_COMMENTS`, `ESCAPE_SEQ_DECODE`, `SQL_HEX_DECODE`, `CSS_DECODE`, `JS_DECODE`, `NORMALIZE_PATH`, `NORMALIZE_PATH_WIN`, `REMOVE_NULLS`, `REPLACE_NULLS`, `BASE64_DECODE_EXT`, `URL_DECODE_UNI`, `UTF8_TO_UNICODE`.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation({
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'type': type,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementTextTransformation(
      priority: pulumi.Input.fromValue(map['priority'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
