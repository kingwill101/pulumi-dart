// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_action_action_threshold.dart';
import 'budget_action_definition.dart';
import 'budget_action_subscriber.dart';

/// Input properties used for looking up and filtering BudgetAction resources.
class BudgetActionState {
  /// ID of the target account for the budget. Uses the current user's account ID by default if omitted.
  final pulumi.Input<String?>? accountId;
  /// ID of the budget action.
  final pulumi.Input<String?>? actionId;
  /// Trigger threshold of the action. See `actionThreshold` Block.
  final pulumi.Input<BudgetActionActionThreshold?>? actionThreshold;
  /// Type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  final pulumi.Input<String?>? actionType;
  /// Whether the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  final pulumi.Input<String?>? approvalModel;
  /// ARN of the budget action.
  final pulumi.Input<String?>? arn;
  /// Name of a budget.
  final pulumi.Input<String?>? budgetName;
  /// Type-specific parameters. See `definition` Block.
  final pulumi.Input<BudgetActionDefinition?>? definition;
  /// Role passed for action execution and reversion. Roles and actions must be in the same account.
  final pulumi.Input<String?>? executionRoleArn;
  /// Type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  final pulumi.Input<String?>? notificationType;
  /// Status of the budget action.
  final pulumi.Input<String?>? status;
  /// Set of subscribers. See `subscriber` Block.
  final pulumi.Input<List<BudgetActionSubscriber>?>? subscribers;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [BudgetActionState].
  /// [accountId] ID of the target account for the budget. Uses the current user's account ID by default if omitted.
  /// [actionId] ID of the budget action.
  /// [actionThreshold] Trigger threshold of the action. See `actionThreshold` Block.
  /// [actionType] Type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  /// [approvalModel] Whether the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  /// [arn] ARN of the budget action.
  /// [budgetName] Name of a budget.
  /// [definition] Type-specific parameters. See `definition` Block.
  /// [executionRoleArn] Role passed for action execution and reversion. Roles and actions must be in the same account.
  /// [notificationType] Type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  /// [status] Status of the budget action.
  /// [subscribers] Set of subscribers. See `subscriber` Block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const BudgetActionState({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionId: (() { final guardedValue = map['actionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      actionThreshold: (() { final guardedValue = map['actionThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetActionActionThreshold.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvalModel: (() { final guardedValue = map['approvalModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      budgetName: (() { final guardedValue = map['budgetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetActionDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationType: (() { final guardedValue = map['notificationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscribers: (() { final guardedValue = map['subscribers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetActionSubscriber>(guardedValue, (value) => BudgetActionSubscriber.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
