// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../receipt_rule_add_header_action/receipt_rule_add_header_action.dart';
import '../receipt_rule_bounce_action/receipt_rule_bounce_action.dart';
import '../receipt_rule_lambda_action/receipt_rule_lambda_action.dart';
import '../receipt_rule_s3_action/receipt_rule_s3_action.dart';
import '../receipt_rule_sns_action/receipt_rule_sns_action.dart';
import '../receipt_rule_stop_action/receipt_rule_stop_action.dart';
import '../receipt_rule_workmail_action/receipt_rule_workmail_action.dart';

/// The set of arguments for ReceiptRule.
class ReceiptRuleArgs {
  /// A list of Add Header Action blocks. Documented below.
  final Input<List<ReceiptRuleAddHeaderAction>>? addHeaderActions;

  /// The name of the rule to place this rule after
  final Input<String>? after;

  /// A list of Bounce Action blocks. Documented below.
  final Input<List<ReceiptRuleBounceAction>>? bounceActions;

  /// If true, the rule will be enabled
  final Input<bool>? enabled;

  /// A list of Lambda Action blocks. Documented below.
  final Input<List<ReceiptRuleLambdaAction>>? lambdaActions;

  /// The name of the rule
  final Input<String>? name;

  /// A list of email addresses
  final Input<List<String>>? recipients;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the rule set
  final Input<String> ruleSetName;

  /// A list of S3 Action blocks. Documented below.
  final Input<List<ReceiptRuleS3Action>>? s3Actions;

  /// If true, incoming emails will be scanned for spam and viruses
  final Input<bool>? scanEnabled;

  /// A list of SNS Action blocks. Documented below.
  final Input<List<ReceiptRuleSnsAction>>? snsActions;

  /// A list of Stop Action blocks. Documented below.
  final Input<List<ReceiptRuleStopAction>>? stopActions;

  /// `Require` or `Optional`
  final Input<String>? tlsPolicy;

  /// A list of WorkMail Action blocks. Documented below.
  final Input<List<ReceiptRuleWorkmailAction>>? workmailActions;

  ReceiptRuleArgs({
    this.addHeaderActions,
    this.after,
    this.bounceActions,
    this.enabled,
    this.lambdaActions,
    this.name,
    this.recipients,
    this.region,
    required this.ruleSetName,
    this.s3Actions,
    this.scanEnabled,
    this.snsActions,
    this.stopActions,
    this.tlsPolicy,
    this.workmailActions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addHeaderActionsValue = addHeaderActions;
    if (addHeaderActionsValue != null) {
      map['addHeaderActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleAddHeaderAction>, List<Map<String, dynamic>>>(
          addHeaderActionsValue,
          (value) => Input.encodeList<ReceiptRuleAddHeaderAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final afterValue = after;
    if (afterValue != null) {
      map['after'] = afterValue;
    }
    final bounceActionsValue = bounceActions;
    if (bounceActionsValue != null) {
      map['bounceActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleBounceAction>, List<Map<String, dynamic>>>(
          bounceActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleBounceAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final lambdaActionsValue = lambdaActions;
    if (lambdaActionsValue != null) {
      map['lambdaActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleLambdaAction>, List<Map<String, dynamic>>>(
          lambdaActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleLambdaAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final recipientsValue = recipients;
    if (recipientsValue != null) {
      map['recipients'] = recipientsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleSetName'] = ruleSetName;
    final s3ActionsValue = s3Actions;
    if (s3ActionsValue != null) {
      map['s3Actions'] = Input.mapOptionalInputValue<List<ReceiptRuleS3Action>,
              List<Map<String, dynamic>>>(
          s3ActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleS3Action, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final scanEnabledValue = scanEnabled;
    if (scanEnabledValue != null) {
      map['scanEnabled'] = scanEnabledValue;
    }
    final snsActionsValue = snsActions;
    if (snsActionsValue != null) {
      map['snsActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleSnsAction>, List<Map<String, dynamic>>>(
          snsActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleSnsAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final stopActionsValue = stopActions;
    if (stopActionsValue != null) {
      map['stopActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleStopAction>, List<Map<String, dynamic>>>(
          stopActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleStopAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tlsPolicyValue = tlsPolicy;
    if (tlsPolicyValue != null) {
      map['tlsPolicy'] = tlsPolicyValue;
    }
    final workmailActionsValue = workmailActions;
    if (workmailActionsValue != null) {
      map['workmailActions'] = Input.mapOptionalInputValue<
              List<ReceiptRuleWorkmailAction>, List<Map<String, dynamic>>>(
          workmailActionsValue,
          (value) =>
              Input.encodeList<ReceiptRuleWorkmailAction, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ReceiptRuleArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleArgs(
      addHeaderActions: Input.asOptionalInput<List<ReceiptRuleAddHeaderAction>>(
          map['addHeaderActions']),
      after: Input.asOptionalInput<String>(map['after']),
      bounceActions: Input.asOptionalInput<List<ReceiptRuleBounceAction>>(
          map['bounceActions']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      lambdaActions: Input.asOptionalInput<List<ReceiptRuleLambdaAction>>(
          map['lambdaActions']),
      name: Input.asOptionalInput<String>(map['name']),
      recipients: Input.asOptionalInput<List<String>>(map['recipients']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleSetName: Input.asInput<String>(map['ruleSetName']),
      s3Actions:
          Input.asOptionalInput<List<ReceiptRuleS3Action>>(map['s3Actions']),
      scanEnabled: Input.asOptionalInput<bool>(map['scanEnabled']),
      snsActions:
          Input.asOptionalInput<List<ReceiptRuleSnsAction>>(map['snsActions']),
      stopActions: Input.asOptionalInput<List<ReceiptRuleStopAction>>(
          map['stopActions']),
      tlsPolicy: Input.asOptionalInput<String>(map['tlsPolicy']),
      workmailActions: Input.asOptionalInput<List<ReceiptRuleWorkmailAction>>(
          map['workmailActions']),
    );
  }
}
