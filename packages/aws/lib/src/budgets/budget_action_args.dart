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
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  final pulumi.Input<String>? accountId;

  /// The trigger threshold of the action. See Action Threshold.
  final pulumi.Input<BudgetActionActionThreshold> actionThreshold;

  /// The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  final pulumi.Input<String> actionType;

  /// This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  final pulumi.Input<String> approvalModel;

  /// The name of a budget.
  final pulumi.Input<String> budgetName;

  /// Specifies all of the type-specific parameters. See Definition.
  final pulumi.Input<BudgetActionDefinition> definition;

  /// The role passed for action execution and reversion. Roles and actions must be in the same account.
  final pulumi.Input<String> executionRoleArn;

  /// The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  final pulumi.Input<String> notificationType;

  /// A list of subscribers. See Subscriber.
  final pulumi.Input<List<BudgetActionSubscriber>> subscribers;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BudgetActionArgs].
  /// [accountId] The ID of the target account for budget. Will use current user's account_id by default if omitted.
  /// [actionThreshold] The trigger threshold of the action. See Action Threshold.
  /// [actionType] The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  /// [approvalModel] This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  /// [budgetName] The name of a budget.
  /// [definition] Specifies all of the type-specific parameters. See Definition.
  /// [executionRoleArn] The role passed for action execution and reversion. Roles and actions must be in the same account.
  /// [notificationType] The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  /// [subscribers] A list of subscribers. See Subscriber.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  BudgetActionArgs({
    String? accountId,
    required BudgetActionActionThreshold actionThreshold,
    required String actionType,
    required String approvalModel,
    required String budgetName,
    required BudgetActionDefinition definition,
    required String executionRoleArn,
    required String notificationType,
    required List<BudgetActionSubscriber> subscribers,
    Map<String, String>? tags,
  })  : accountId = pulumi.Input.asOptionalInput<String>(accountId),
        actionThreshold =
            pulumi.Input.asInput<BudgetActionActionThreshold>(actionThreshold),
        actionType = pulumi.Input.asInput<String>(actionType),
        approvalModel = pulumi.Input.asInput<String>(approvalModel),
        budgetName = pulumi.Input.asInput<String>(budgetName),
        definition = pulumi.Input.asInput<BudgetActionDefinition>(definition),
        executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
        notificationType = pulumi.Input.asInput<String>(notificationType),
        subscribers =
            pulumi.Input.asInput<List<BudgetActionSubscriber>>(subscribers),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['actionThreshold'] = pulumi.Input.mapInputValue<
        BudgetActionActionThreshold,
        Map<String, dynamic>>(actionThreshold, (value) => value.toMap());
    map['actionType'] = actionType;
    map['approvalModel'] = approvalModel;
    map['budgetName'] = budgetName;
    map['definition'] = pulumi.Input.mapInputValue<BudgetActionDefinition,
        Map<String, dynamic>>(definition, (value) => value.toMap());
    map['executionRoleArn'] = executionRoleArn;
    map['notificationType'] = notificationType;
    map['subscribers'] = pulumi.Input.mapInputValue<
            List<BudgetActionSubscriber>, List<Map<String, dynamic>>>(
        subscribers,
        (value) => pulumi.Input.encodeList<BudgetActionSubscriber,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BudgetActionArgs.fromMap(Map<String, dynamic> map) {
    return BudgetActionArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      actionThreshold: BudgetActionActionThreshold.fromMap(
          (map['actionThreshold'] as Map).cast<String, dynamic>()),
      actionType: map['actionType'] as String,
      approvalModel: map['approvalModel'] as String,
      budgetName: map['budgetName'] as String,
      definition: BudgetActionDefinition.fromMap(
          (map['definition'] as Map).cast<String, dynamic>()),
      executionRoleArn: map['executionRoleArn'] as String,
      notificationType: map['notificationType'] as String,
      subscribers: pulumi.Input.decodeList<BudgetActionSubscriber>(
          map['subscribers'],
          (value) => BudgetActionSubscriber.fromMap(
              (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
