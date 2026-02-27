// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<List<ReceiptRuleAddHeaderAction>>? addHeaderActions;

  /// The name of the rule to place this rule after
  final pulumi.Input<String>? after;

  /// A list of Bounce Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleBounceAction>>? bounceActions;

  /// If true, the rule will be enabled
  final pulumi.Input<bool>? enabled;

  /// A list of Lambda Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleLambdaAction>>? lambdaActions;

  /// The name of the rule
  final pulumi.Input<String>? name;

  /// A list of email addresses
  final pulumi.Input<List<String>>? recipients;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the rule set
  final pulumi.Input<String> ruleSetName;

  /// A list of S3 Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleS3Action>>? s3Actions;

  /// If true, incoming emails will be scanned for spam and viruses
  final pulumi.Input<bool>? scanEnabled;

  /// A list of SNS Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleSnsAction>>? snsActions;

  /// A list of Stop Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleStopAction>>? stopActions;

  /// `Require` or `Optional`
  final pulumi.Input<String>? tlsPolicy;

  /// A list of WorkMail Action blocks. Documented below.
  final pulumi.Input<List<ReceiptRuleWorkmailAction>>? workmailActions;

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
      map['addHeaderActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleAddHeaderAction>, List<Map<String, dynamic>>>(
          addHeaderActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleAddHeaderAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final afterValue = after;
    if (afterValue != null) {
      map['after'] = afterValue;
    }
    final bounceActionsValue = bounceActions;
    if (bounceActionsValue != null) {
      map['bounceActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleBounceAction>, List<Map<String, dynamic>>>(
          bounceActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleBounceAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final lambdaActionsValue = lambdaActions;
    if (lambdaActionsValue != null) {
      map['lambdaActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleLambdaAction>, List<Map<String, dynamic>>>(
          lambdaActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleLambdaAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['s3Actions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleS3Action>, List<Map<String, dynamic>>>(
          s3ActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleS3Action,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final scanEnabledValue = scanEnabled;
    if (scanEnabledValue != null) {
      map['scanEnabled'] = scanEnabledValue;
    }
    final snsActionsValue = snsActions;
    if (snsActionsValue != null) {
      map['snsActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleSnsAction>, List<Map<String, dynamic>>>(
          snsActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleSnsAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final stopActionsValue = stopActions;
    if (stopActionsValue != null) {
      map['stopActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleStopAction>, List<Map<String, dynamic>>>(
          stopActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleStopAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tlsPolicyValue = tlsPolicy;
    if (tlsPolicyValue != null) {
      map['tlsPolicy'] = tlsPolicyValue;
    }
    final workmailActionsValue = workmailActions;
    if (workmailActionsValue != null) {
      map['workmailActions'] = pulumi.Input.mapOptionalInputValue<
              List<ReceiptRuleWorkmailAction>, List<Map<String, dynamic>>>(
          workmailActionsValue,
          (value) => pulumi.Input.encodeList<ReceiptRuleWorkmailAction,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ReceiptRuleArgs.fromMap(Map<String, dynamic> map) {
    return ReceiptRuleArgs(
      addHeaderActions:
          pulumi.Input.asOptionalInput<List<ReceiptRuleAddHeaderAction>>(
              map['addHeaderActions']),
      after: pulumi.Input.asOptionalInput<String>(map['after']),
      bounceActions:
          pulumi.Input.asOptionalInput<List<ReceiptRuleBounceAction>>(
              map['bounceActions']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      lambdaActions:
          pulumi.Input.asOptionalInput<List<ReceiptRuleLambdaAction>>(
              map['lambdaActions']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      recipients: pulumi.Input.asOptionalInput<List<String>>(map['recipients']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleSetName: pulumi.Input.asInput<String>(map['ruleSetName']),
      s3Actions: pulumi.Input.asOptionalInput<List<ReceiptRuleS3Action>>(
          map['s3Actions']),
      scanEnabled: pulumi.Input.asOptionalInput<bool>(map['scanEnabled']),
      snsActions: pulumi.Input.asOptionalInput<List<ReceiptRuleSnsAction>>(
          map['snsActions']),
      stopActions: pulumi.Input.asOptionalInput<List<ReceiptRuleStopAction>>(
          map['stopActions']),
      tlsPolicy: pulumi.Input.asOptionalInput<String>(map['tlsPolicy']),
      workmailActions:
          pulumi.Input.asOptionalInput<List<ReceiptRuleWorkmailAction>>(
              map['workmailActions']),
    );
  }
}
