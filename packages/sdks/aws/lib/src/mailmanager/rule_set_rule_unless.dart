// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule_unless_boolean_expression.dart';
import 'rule_set_rule_unless_dmarc_expression.dart';
import 'rule_set_rule_unless_ip_expression.dart';
import 'rule_set_rule_unless_number_expression.dart';
import 'rule_set_rule_unless_string_expression.dart';
import 'rule_set_rule_unless_verdict_expression.dart';

class RuleSetRuleUnless {
  /// Boolean expression evaluated against an email attribute or Add On result. See `booleanExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessBooleanExpression?>? booleanExpression;
  /// DMARC policy expression evaluated against the email's DMARC result. See `dmarcExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessDmarcExpression?>? dmarcExpression;
  /// IP CIDR expression evaluated against the sender IP address. See `ipExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessIpExpression?>? ipExpression;
  /// Numeric expression evaluated against an email attribute such as message size. See `numberExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessNumberExpression?>? numberExpression;
  /// String expression evaluated against an email attribute, MIME header, client certificate field, or Add On result. See `stringExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessStringExpression?>? stringExpression;
  /// Verdict expression evaluated against email authentication results such as SPF or DKIM. See `verdictExpression` Block.
  final pulumi.Input<RuleSetRuleUnlessVerdictExpression?>? verdictExpression;

  /// Creates a new [RuleSetRuleUnless].
  /// [booleanExpression] Boolean expression evaluated against an email attribute or Add On result. See `booleanExpression` Block.
  /// [dmarcExpression] DMARC policy expression evaluated against the email's DMARC result. See `dmarcExpression` Block.
  /// [ipExpression] IP CIDR expression evaluated against the sender IP address. See `ipExpression` Block.
  /// [numberExpression] Numeric expression evaluated against an email attribute such as message size. See `numberExpression` Block.
  /// [stringExpression] String expression evaluated against an email attribute, MIME header, client certificate field, or Add On result. See `stringExpression` Block.
  /// [verdictExpression] Verdict expression evaluated against email authentication results such as SPF or DKIM. See `verdictExpression` Block.
  const RuleSetRuleUnless({
    this.booleanExpression,
    this.dmarcExpression,
    this.ipExpression,
    this.numberExpression,
    this.stringExpression,
    this.verdictExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessBooleanExpression, Map<String, dynamic>>(booleanExpression, (value) => value.toMap()),
      'dmarcExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessDmarcExpression, Map<String, dynamic>>(dmarcExpression, (value) => value.toMap()),
      'ipExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessIpExpression, Map<String, dynamic>>(ipExpression, (value) => value.toMap()),
      'numberExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessNumberExpression, Map<String, dynamic>>(numberExpression, (value) => value.toMap()),
      'stringExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessStringExpression, Map<String, dynamic>>(stringExpression, (value) => value.toMap()),
      'verdictExpression': ?pulumi.Input.mapOptionalInputValue<RuleSetRuleUnlessVerdictExpression, Map<String, dynamic>>(verdictExpression, (value) => value.toMap()),
    };
  }

  factory RuleSetRuleUnless.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnless(
      booleanExpression: (() { final guardedValue = map['booleanExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessBooleanExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dmarcExpression: (() { final guardedValue = map['dmarcExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessDmarcExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipExpression: (() { final guardedValue = map['ipExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessIpExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      numberExpression: (() { final guardedValue = map['numberExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessNumberExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringExpression: (() { final guardedValue = map['stringExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessStringExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      verdictExpression: (() { final guardedValue = map['verdictExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSetRuleUnlessVerdictExpression.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
