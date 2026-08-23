// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_string_expression_evaluate_analysis.dart';

class RuleSetRuleConditionStringExpressionEvaluate {
  /// Add On result to evaluate. See `analysis` Block.
  final pulumi.Input<RuleSetRuleConditionStringExpressionEvaluateAnalysis>? analysis;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String>? attribute;
  /// Client certificate field to evaluate. Valid values are `CN`, `SAN_RFC822_NAME`, `SAN_DNS_NAME`, `SAN_DIRECTORY_NAME`, `SAN_UNIFORM_RESOURCE_IDENTIFIER`, `SAN_IP_ADDRESS`, `SAN_REGISTERED_ID`, and `SERIAL_NUMBER`.
  final pulumi.Input<String>? clientCertificateAttribute;
  /// MIME header name to evaluate. Must contain between 1 and 256 characters and begin with `X-` or `x-`.
  final pulumi.Input<String>? mimeHeaderAttribute;

  /// Creates a new [RuleSetRuleConditionStringExpressionEvaluate].
  /// [analysis] Add On result to evaluate. See `analysis` Block.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  /// [clientCertificateAttribute] Client certificate field to evaluate. Valid values are `CN`, `SAN_RFC822_NAME`, `SAN_DNS_NAME`, `SAN_DIRECTORY_NAME`, `SAN_UNIFORM_RESOURCE_IDENTIFIER`, `SAN_IP_ADDRESS`, `SAN_REGISTERED_ID`, and `SERIAL_NUMBER`.
  /// [mimeHeaderAttribute] MIME header name to evaluate. Must contain between 1 and 256 characters and begin with `X-` or `x-`.
  const RuleSetRuleConditionStringExpressionEvaluate({
    this.analysis,
    this.attribute,
    this.clientCertificateAttribute,
    this.mimeHeaderAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionStringExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
      'clientCertificateAttribute': ?clientCertificateAttribute,
      'mimeHeaderAttribute': ?mimeHeaderAttribute,
    };
  }

  factory RuleSetRuleConditionStringExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionStringExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionStringExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateAttribute: (() { final guardedValue = map['clientCertificateAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mimeHeaderAttribute: (() { final guardedValue = map['mimeHeaderAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
