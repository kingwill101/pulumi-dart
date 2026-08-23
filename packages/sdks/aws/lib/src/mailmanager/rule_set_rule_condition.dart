// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_condition_boolean_expression.dart';
import 'rule_set_rule_condition_dmarc_expression.dart';
import 'rule_set_rule_condition_ip_expression.dart';
import 'rule_set_rule_condition_number_expression.dart';
import 'rule_set_rule_condition_string_expression.dart';
import 'rule_set_rule_condition_verdict_expression.dart';

class RuleSetRuleCondition {
  /// Boolean expression evaluated against an email attribute or Add On result. See `booleanExpression` Block.
  final pulumi.Input<RuleSetRuleConditionBooleanExpression>? booleanExpression;
  /// DMARC policy expression evaluated against the email's DMARC result. See `dmarcExpression` Block.
  final pulumi.Input<RuleSetRuleConditionDmarcExpression>? dmarcExpression;
  /// IP CIDR expression evaluated against the sender IP address. See `ipExpression` Block.
  final pulumi.Input<RuleSetRuleConditionIpExpression>? ipExpression;
  /// Numeric expression evaluated against an email attribute such as message size. See `numberExpression` Block.
  final pulumi.Input<RuleSetRuleConditionNumberExpression>? numberExpression;
  /// String expression evaluated against an email attribute, MIME header, client certificate field, or Add On result. See `stringExpression` Block.
  final pulumi.Input<RuleSetRuleConditionStringExpression>? stringExpression;
  /// Verdict expression evaluated against email authentication results such as SPF or DKIM. See `verdictExpression` Block.
  final pulumi.Input<RuleSetRuleConditionVerdictExpression>? verdictExpression;

  /// Creates a new [RuleSetRuleCondition].
  /// [booleanExpression] Boolean expression evaluated against an email attribute or Add On result. See `booleanExpression` Block.
  /// [dmarcExpression] DMARC policy expression evaluated against the email's DMARC result. See `dmarcExpression` Block.
  /// [ipExpression] IP CIDR expression evaluated against the sender IP address. See `ipExpression` Block.
  /// [numberExpression] Numeric expression evaluated against an email attribute such as message size. See `numberExpression` Block.
  /// [stringExpression] String expression evaluated against an email attribute, MIME header, client certificate field, or Add On result. See `stringExpression` Block.
  /// [verdictExpression] Verdict expression evaluated against email authentication results such as SPF or DKIM. See `verdictExpression` Block.
  const RuleSetRuleCondition({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionBooleanExpression, Map<String, dynamic>>(booleanExpression, (value) => value.toMap()),
      'dmarcExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionDmarcExpression, Map<String, dynamic>>(dmarcExpression, (value) => value.toMap()),
      'ipExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionIpExpression, Map<String, dynamic>>(ipExpression, (value) => value.toMap()),
      'numberExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionNumberExpression, Map<String, dynamic>>(numberExpression, (value) => value.toMap()),
      'stringExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionStringExpression, Map<String, dynamic>>(stringExpression, (value) => value.toMap()),
      'verdictExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleConditionVerdictExpression, Map<String, dynamic>>(verdictExpression, (value) => value.toMap()),
    };
  }

  factory RuleSetRuleCondition.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleCondition(
      booleanExpression: (() { final guardedValue = map['booleanExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionBooleanExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dmarcExpression: (() { final guardedValue = map['dmarcExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionDmarcExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipExpression: (() { final guardedValue = map['ipExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionIpExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberExpression: (() { final guardedValue = map['numberExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionNumberExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringExpression: (() { final guardedValue = map['stringExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionStringExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verdictExpression: (() { final guardedValue = map['verdictExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleConditionVerdictExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
