// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_action_action_threshold.dart';
import 'budget_action_definition.dart';
import 'budget_action_subscriber.dart';

/// {@template pulumi_budgets_budget_action_budget_action_args_doc}
/// The set of arguments for BudgetAction.
/// {@endtemplate}
/// {@macro pulumi_budgets_budget_action_budget_action_args_doc}
class BudgetActionArgs {
  /// ID of the target account for the budget. Uses the current user's account ID by default if omitted.
  final pulumi.Input<String?>? accountId;
  /// Trigger threshold of the action. See `actionThreshold` Block.
  final pulumi.Input<BudgetActionActionThreshold> actionThreshold;
  /// Type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  final pulumi.Input<String> actionType;
  /// Whether the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  final pulumi.Input<String> approvalModel;
  /// Name of a budget.
  final pulumi.Input<String> budgetName;
  /// Type-specific parameters. See `definition` Block.
  final pulumi.Input<BudgetActionDefinition> definition;
  /// Role passed for action execution and reversion. Roles and actions must be in the same account.
  final pulumi.Input<String> executionRoleArn;
  /// Type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  final pulumi.Input<String> notificationType;
  /// Set of subscribers. See `subscriber` Block.
  final pulumi.Input<List<BudgetActionSubscriber>> subscribers;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [BudgetActionArgs].
  /// [accountId] ID of the target account for the budget. Uses the current user's account ID by default if omitted.
  /// [actionThreshold] Trigger threshold of the action. See `actionThreshold` Block.
  /// [actionType] Type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  /// [approvalModel] Whether the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  /// [budgetName] Name of a budget.
  /// [definition] Type-specific parameters. See `definition` Block.
  /// [executionRoleArn] Role passed for action execution and reversion. Roles and actions must be in the same account.
  /// [notificationType] Type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  /// [subscribers] Set of subscribers. See `subscriber` Block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const BudgetActionArgs({
    this.accountId,
    required this.actionThreshold,
    required this.actionType,
    required this.approvalModel,
    required this.budgetName,
    required this.definition,
    required this.executionRoleArn,
    required this.notificationType,
    required this.subscribers,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actionThreshold': pulumi.Input.mapInputValue<BudgetActionActionThreshold, Map<String, dynamic>>(actionThreshold, (value) => value.toMap()),
      'actionType': actionType,
      'approvalModel': approvalModel,
      'budgetName': budgetName,
      'definition': pulumi.Input.mapInputValue<BudgetActionDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'executionRoleArn': executionRoleArn,
      'notificationType': notificationType,
      'subscribers': pulumi.Input.mapInputValue<List<BudgetActionSubscriber>, List<Map<String, dynamic>>>(subscribers, (value) => pulumi.Input.encodeList<BudgetActionSubscriber, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory BudgetActionArgs.fromMap(Map<String, dynamic> map) {
    return BudgetActionArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionThreshold: pulumi.Input.fromValue(BudgetActionActionThreshold.fromMap((map['actionThreshold']! as Map).cast<String, dynamic>())),
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      approvalModel: pulumi.Input.fromValue(map['approvalModel'] as String),
      budgetName: pulumi.Input.fromValue(map['budgetName'] as String),
      definition: pulumi.Input.fromValue(BudgetActionDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())),
      executionRoleArn: pulumi.Input.fromValue(map['executionRoleArn'] as String),
      notificationType: pulumi.Input.fromValue(map['notificationType'] as String),
      subscribers: pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetActionSubscriber>(map['subscribers']!, (value) => BudgetActionSubscriber.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
