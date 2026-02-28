// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_custom_key_header_text_transformation.dart';

class WebAclRuleStatementRateBasedStatementCustomKeyHeader {
  /// The name of the header to use.
  final String name;

  /// Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  final List<
          WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>
      textTransformations;

  /// Creates a new [WebAclRuleStatementRateBasedStatementCustomKeyHeader].
  /// [name] The name of the header to use.
  /// [textTransformations] Text transformations eliminate some of the unusual formatting that attackers use in web requests in an effort to bypass detection. They are used in rate-based rule statements, to transform request components before using them as custom aggregation keys. Atleast one transformation is required. See `text_transformation` above for details.
  WebAclRuleStatementRateBasedStatementCustomKeyHeader({
    required this.name,
    required this.textTransformations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['textTransformations'] = pulumi.Input.encodeList<
        WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation,
        Map<String, dynamic>>(textTransformations, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementCustomKeyHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementCustomKeyHeader(
      name: map['name'] as String,
      textTransformations: pulumi.Input.decodeList<
              WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation>(
          map['textTransformations'],
          (value) =>
              WebAclRuleStatementRateBasedStatementCustomKeyHeaderTextTransformation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
