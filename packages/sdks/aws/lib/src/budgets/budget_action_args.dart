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
    pulumi.Output<String>? accountId,
    required pulumi.Output<BudgetActionActionThreshold> actionThreshold,
    required pulumi.Output<String> actionType,
    required pulumi.Output<String> approvalModel,
    required pulumi.Output<String> budgetName,
    required pulumi.Output<BudgetActionDefinition> definition,
    required pulumi.Output<String> executionRoleArn,
    required pulumi.Output<String> notificationType,
    required pulumi.Output<List<BudgetActionSubscriber>> subscribers,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      actionThreshold = pulumi.Input.asInput<BudgetActionActionThreshold>(actionThreshold),
      actionType = pulumi.Input.asInput<String>(actionType),
      approvalModel = pulumi.Input.asInput<String>(approvalModel),
      budgetName = pulumi.Input.asInput<String>(budgetName),
      definition = pulumi.Input.asInput<BudgetActionDefinition>(definition),
      executionRoleArn = pulumi.Input.asInput<String>(executionRoleArn),
      notificationType = pulumi.Input.asInput<String>(notificationType),
      subscribers = pulumi.Input.asInput<List<BudgetActionSubscriber>>(subscribers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      actionThreshold: pulumi.Output.create<BudgetActionActionThreshold>(BudgetActionActionThreshold.fromMap((map['actionThreshold'] as Map).cast<String, dynamic>())),
      actionType: pulumi.Output.create<String>(map['actionType'] as String),
      approvalModel: pulumi.Output.create<String>(map['approvalModel'] as String),
      budgetName: pulumi.Output.create<String>(map['budgetName'] as String),
      definition: pulumi.Output.create<BudgetActionDefinition>(BudgetActionDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      executionRoleArn: pulumi.Output.create<String>(map['executionRoleArn'] as String),
      notificationType: pulumi.Output.create<String>(map['notificationType'] as String),
      subscribers: pulumi.Output.create<List<BudgetActionSubscriber>>(pulumi.Input.decodeList<BudgetActionSubscriber>(map['subscribers'], (value) => BudgetActionSubscriber.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

