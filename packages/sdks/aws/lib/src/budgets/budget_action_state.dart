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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? actionId,
    pulumi.Output<BudgetActionActionThreshold>? actionThreshold,
    pulumi.Output<String>? actionType,
    pulumi.Output<String>? approvalModel,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? budgetName,
    pulumi.Output<BudgetActionDefinition>? definition,
    pulumi.Output<String>? executionRoleArn,
    pulumi.Output<String>? notificationType,
    pulumi.Output<String>? status,
    pulumi.Output<List<BudgetActionSubscriber>>? subscribers,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      actionId = pulumi.Input.asOptionalInput<String>(actionId),
      actionThreshold = pulumi.Input.asOptionalInput<BudgetActionActionThreshold>(actionThreshold),
      actionType = pulumi.Input.asOptionalInput<String>(actionType),
      approvalModel = pulumi.Input.asOptionalInput<String>(approvalModel),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      budgetName = pulumi.Input.asOptionalInput<String>(budgetName),
      definition = pulumi.Input.asOptionalInput<BudgetActionDefinition>(definition),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      notificationType = pulumi.Input.asOptionalInput<String>(notificationType),
      status = pulumi.Input.asOptionalInput<String>(status),
      subscribers = pulumi.Input.asOptionalInput<List<BudgetActionSubscriber>>(subscribers),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'actionId': ?actionId,
      'actionThreshold': ?pulumi.Input.mapOptionalInputValue<BudgetActionActionThreshold, Map<String, dynamic>>(actionThreshold, (value) => value.toMap()),
      'actionType': ?actionType,
      'approvalModel': ?approvalModel,
      'arn': ?arn,
      'budgetName': ?budgetName,
      'definition': ?pulumi.Input.mapOptionalInputValue<BudgetActionDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'notificationType': ?notificationType,
      'status': ?status,
      'subscribers': ?pulumi.Input.mapOptionalInputValue<List<BudgetActionSubscriber>, List<Map<String, dynamic>>>(subscribers, (value) => pulumi.Input.encodeList<BudgetActionSubscriber, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory BudgetActionState.fromMap(Map<String, dynamic> map) {
    return BudgetActionState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      actionId: map['actionId'] == null ? null : pulumi.Output.create<String>(map['actionId'] as String),
      actionThreshold: map['actionThreshold'] == null ? null : pulumi.Output.create<BudgetActionActionThreshold>(BudgetActionActionThreshold.fromMap((map['actionThreshold'] as Map).cast<String, dynamic>())),
      actionType: map['actionType'] == null ? null : pulumi.Output.create<String>(map['actionType'] as String),
      approvalModel: map['approvalModel'] == null ? null : pulumi.Output.create<String>(map['approvalModel'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      budgetName: map['budgetName'] == null ? null : pulumi.Output.create<String>(map['budgetName'] as String),
      definition: map['definition'] == null ? null : pulumi.Output.create<BudgetActionDefinition>(BudgetActionDefinition.fromMap((map['definition'] as Map).cast<String, dynamic>())),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      notificationType: map['notificationType'] == null ? null : pulumi.Output.create<String>(map['notificationType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subscribers: map['subscribers'] == null ? null : pulumi.Output.create<List<BudgetActionSubscriber>>(pulumi.Input.decodeList<BudgetActionSubscriber>(map['subscribers'], (value) => BudgetActionSubscriber.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

