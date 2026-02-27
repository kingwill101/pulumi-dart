// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../budget_action_action_threshold/budget_action_action_threshold.dart';
import '../budget_action_definition/budget_action_definition.dart';
import '../budget_action_subscriber/budget_action_subscriber.dart';

/// The set of arguments for BudgetAction.
class BudgetActionArgs {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  final Input<String>? accountId;

  /// The trigger threshold of the action. See Action Threshold.
  final Input<BudgetActionActionThreshold> actionThreshold;

  /// The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  final Input<String> actionType;

  /// This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  final Input<String> approvalModel;

  /// The name of a budget.
  final Input<String> budgetName;

  /// Specifies all of the type-specific parameters. See Definition.
  final Input<BudgetActionDefinition> definition;

  /// The role passed for action execution and reversion. Roles and actions must be in the same account.
  final Input<String> executionRoleArn;

  /// The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  final Input<String> notificationType;

  /// A list of subscribers. See Subscriber.
  final Input<List<BudgetActionSubscriber>> subscribers;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  BudgetActionArgs({
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
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['actionThreshold'] =
        Input.mapInputValue<BudgetActionActionThreshold, Map<String, dynamic>>(
            actionThreshold, (value) => value.toMap());
    map['actionType'] = actionType;
    map['approvalModel'] = approvalModel;
    map['budgetName'] = budgetName;
    map['definition'] =
        Input.mapInputValue<BudgetActionDefinition, Map<String, dynamic>>(
            definition, (value) => value.toMap());
    map['executionRoleArn'] = executionRoleArn;
    map['notificationType'] = notificationType;
    map['subscribers'] = Input.mapInputValue<List<BudgetActionSubscriber>,
            List<Map<String, dynamic>>>(
        subscribers,
        (value) =>
            Input.encodeList<BudgetActionSubscriber, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory BudgetActionArgs.fromMap(Map<String, dynamic> map) {
    return BudgetActionArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      actionThreshold:
          Input.asInput<BudgetActionActionThreshold>(map['actionThreshold']),
      actionType: Input.asInput<String>(map['actionType']),
      approvalModel: Input.asInput<String>(map['approvalModel']),
      budgetName: Input.asInput<String>(map['budgetName']),
      definition: Input.asInput<BudgetActionDefinition>(map['definition']),
      executionRoleArn: Input.asInput<String>(map['executionRoleArn']),
      notificationType: Input.asInput<String>(map['notificationType']),
      subscribers:
          Input.asInput<List<BudgetActionSubscriber>>(map['subscribers']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
