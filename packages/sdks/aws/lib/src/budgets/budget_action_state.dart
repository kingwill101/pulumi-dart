// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_action_action_threshold.dart';
import 'budget_action_definition.dart';
import 'budget_action_subscriber.dart';

/// Input properties used for looking up and filtering BudgetAction resources.
class BudgetActionState {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  final pulumi.Input<String>? accountId;

  /// The id of the budget action.
  final pulumi.Input<String>? actionId;

  /// The trigger threshold of the action. See Action Threshold.
  final pulumi.Input<BudgetActionActionThreshold>? actionThreshold;

  /// The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  final pulumi.Input<String>? actionType;

  /// This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  final pulumi.Input<String>? approvalModel;

  /// The ARN of the budget action.
  final pulumi.Input<String>? arn;

  /// The name of a budget.
  final pulumi.Input<String>? budgetName;

  /// Specifies all of the type-specific parameters. See Definition.
  final pulumi.Input<BudgetActionDefinition>? definition;

  /// The role passed for action execution and reversion. Roles and actions must be in the same account.
  final pulumi.Input<String>? executionRoleArn;

  /// The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  final pulumi.Input<String>? notificationType;

  /// The status of the budget action.
  final pulumi.Input<String>? status;

  /// A list of subscribers. See Subscriber.
  final pulumi.Input<List<BudgetActionSubscriber>>? subscribers;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [BudgetActionState].
  /// [accountId] The ID of the target account for budget. Will use current user's account_id by default if omitted.
  /// [actionId] The id of the budget action.
  /// [actionThreshold] The trigger threshold of the action. See Action Threshold.
  /// [actionType] The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  /// [approvalModel] This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  /// [arn] The ARN of the budget action.
  /// [budgetName] The name of a budget.
  /// [definition] Specifies all of the type-specific parameters. See Definition.
  /// [executionRoleArn] The role passed for action execution and reversion. Roles and actions must be in the same account.
  /// [notificationType] The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  /// [status] The status of the budget action.
  /// [subscribers] A list of subscribers. See Subscriber.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  BudgetActionState({
    this.accountId,
    this.actionId,
    this.actionThreshold,
    this.actionType,
    this.approvalModel,
    this.arn,
    this.budgetName,
    this.definition,
    this.executionRoleArn,
    this.notificationType,
    this.status,
    this.subscribers,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actionId': ?actionId,
      'actionThreshold':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetActionActionThreshold,
            Map<String, dynamic>
          >(actionThreshold, (value) => value.toMap()),
      'actionType': ?actionType,
      'approvalModel': ?approvalModel,
      'arn': ?arn,
      'budgetName': ?budgetName,
      'definition':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetActionDefinition,
            Map<String, dynamic>
          >(definition, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'notificationType': ?notificationType,
      'status': ?status,
      'subscribers':
          ?pulumi.Input.mapOptionalInputValue<
            List<BudgetActionSubscriber>,
            List<Map<String, dynamic>>
          >(
            subscribers,
            (value) =>
                pulumi.Input.encodeList<
                  BudgetActionSubscriber,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory BudgetActionState.fromMap(Map<String, dynamic> map) {
    return BudgetActionState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      actionId: (() {
        final guardedValue = map['actionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      actionThreshold: (() {
        final guardedValue = map['actionThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetActionActionThreshold.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      actionType: (() {
        final guardedValue = map['actionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      approvalModel: (() {
        final guardedValue = map['approvalModel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      budgetName: (() {
        final guardedValue = map['budgetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      definition: (() {
        final guardedValue = map['definition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetActionDefinition.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      executionRoleArn: (() {
        final guardedValue = map['executionRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationType: (() {
        final guardedValue = map['notificationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subscribers: (() {
        final guardedValue = map['subscribers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BudgetActionSubscriber>(
            guardedValue,
            (value) => BudgetActionSubscriber.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
