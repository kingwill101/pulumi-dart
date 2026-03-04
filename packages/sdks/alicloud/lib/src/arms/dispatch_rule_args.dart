// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dispatch_rule_group_rule.dart';
import 'dispatch_rule_label_match_expression_grid.dart';
import 'dispatch_rule_notify_rule.dart';
import 'dispatch_rule_notify_template.dart';

/// {@template pulumi_arms_dispatch_rule_dispatch_rule_args_doc}
/// The set of arguments for DispatchRule.
/// {@endtemplate}
/// {@macro pulumi_arms_dispatch_rule_dispatch_rule_args_doc}
class DispatchRuleArgs {
  /// The name of the dispatch policy.
  final pulumi.Input<String> dispatchRuleName;

  /// The alert handling method. Valid values: CREATE_ALERT: generates an alert. DISCARD_ALERT: discards the alert event and generates no alert.
  final pulumi.Input<String>? dispatchType;

  /// Sets the event group. See `group_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  final pulumi.Input<List<DispatchRuleGroupRule>> groupRules;

  /// Specifies whether to send the restored alert. Valid values: true: sends the alert. false: does not send the alert.
  final pulumi.Input<bool>? isRecover;

  /// Sets the dispatch rule. See `label_match_expression_grid` below.
  final pulumi.Input<List<DispatchRuleLabelMatchExpressionGrid>>
  labelMatchExpressionGrids;

  /// Sets the notification rule. See `notify_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  final pulumi.Input<List<DispatchRuleNotifyRule>> notifyRules;

  /// Sets the notification template. See `notify_template` below.
  final pulumi.Input<List<DispatchRuleNotifyTemplate>>? notifyTemplates;

  /// Creates a new [DispatchRuleArgs].
  /// [dispatchRuleName] The name of the dispatch policy.
  /// [dispatchType] The alert handling method. Valid values: CREATE_ALERT: generates an alert. DISCARD_ALERT: discards the alert event and generates no alert.
  /// [groupRules] Sets the event group. See `group_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  /// [isRecover] Specifies whether to send the restored alert. Valid values: true: sends the alert. false: does not send the alert.
  /// [labelMatchExpressionGrids] Sets the dispatch rule. See `label_match_expression_grid` below.
  /// [notifyRules] Sets the notification rule. See `notify_rules` below. It will be ignored  when `dispatch_type = "DISCARD_ALERT"`.
  /// [notifyTemplates] Sets the notification template. See `notify_template` below.
  DispatchRuleArgs({
    required this.dispatchRuleName,
    this.dispatchType,
    required this.groupRules,
    this.isRecover,
    required this.labelMatchExpressionGrids,
    required this.notifyRules,
    this.notifyTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRuleName': dispatchRuleName,
      'dispatchType': ?dispatchType,
      'groupRules':
          pulumi.Input.mapInputValue<
            List<DispatchRuleGroupRule>,
            List<Map<String, dynamic>>
          >(
            groupRules,
            (value) =>
                pulumi.Input.encodeList<
                  DispatchRuleGroupRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'isRecover': ?isRecover,
      'labelMatchExpressionGrids':
          pulumi.Input.mapInputValue<
            List<DispatchRuleLabelMatchExpressionGrid>,
            List<Map<String, dynamic>>
          >(
            labelMatchExpressionGrids,
            (value) =>
                pulumi.Input.encodeList<
                  DispatchRuleLabelMatchExpressionGrid,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notifyRules':
          pulumi.Input.mapInputValue<
            List<DispatchRuleNotifyRule>,
            List<Map<String, dynamic>>
          >(
            notifyRules,
            (value) =>
                pulumi.Input.encodeList<
                  DispatchRuleNotifyRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notifyTemplates':
          ?pulumi.Input.mapOptionalInputValue<
            List<DispatchRuleNotifyTemplate>,
            List<Map<String, dynamic>>
          >(
            notifyTemplates,
            (value) =>
                pulumi.Input.encodeList<
                  DispatchRuleNotifyTemplate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DispatchRuleArgs.fromMap(Map<String, dynamic> map) {
    return DispatchRuleArgs(
      dispatchRuleName: pulumi.Input.fromValue(
        map['dispatchRuleName'] as String,
      ),
      dispatchType: (() {
        final guardedValue = map['dispatchType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DispatchRuleGroupRule>(
          map['groupRules']!,
          (value) => DispatchRuleGroupRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      isRecover: (() {
        final guardedValue = map['isRecover'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      labelMatchExpressionGrids: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DispatchRuleLabelMatchExpressionGrid>(
          map['labelMatchExpressionGrids']!,
          (value) => DispatchRuleLabelMatchExpressionGrid.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      notifyRules: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DispatchRuleNotifyRule>(
          map['notifyRules']!,
          (value) => DispatchRuleNotifyRule.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      notifyTemplates: (() {
        final guardedValue = map['notifyTemplates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DispatchRuleNotifyTemplate>(
            guardedValue,
            (value) => DispatchRuleNotifyTemplate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
