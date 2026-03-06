// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_uri_path_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyUriPath {
  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>> textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyUriPath].
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  const WebAclRuleStatementRateBasedStatementCustomKeyUriPath({
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textTransformations': pulumi.Input.mapInputValue<List<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>, List<Map<String, dynamic>>>(textTransformations, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyUriPath.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyUriPath(
      textTransformations: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation>(map['textTransformations']!, (value) => WebAclRuleStatementRateBasedStatementCustomKeyUriPathTextTransformation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

