import 'package:pulumi/pulumi.dart';
import '../budget_action_action_threshold/budget_action_action_threshold.dart';
import '../budget_action_definition/budget_action_definition.dart';
import '../budget_action_subscriber/budget_action_subscriber.dart';
import 'budget_action_args.dart';

/// Provides a budget action resource. Budget actions are cost savings controls that run either automatically on your behalf or by using a workflow approval process.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import budget actions using `AccountID:ActionID:BudgetName`. For example:
///
/// ```sh
/// $ pulumi import aws:budgets/budgetAction:BudgetAction myBudget 123456789012:some-id:myBudget
/// ```
class BudgetAction extends CustomResource {
  /// The ID of the target account for budget. Will use current user's account_id by default if omitted.
  late final Output<String> accountId;

  /// The id of the budget action.
  late final Output<String> actionId;

  /// The trigger threshold of the action. See Action Threshold.
  late final Output<BudgetActionActionThreshold> actionThreshold;

  /// The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are `APPLY_IAM_POLICY`, `APPLY_SCP_POLICY`, and `RUN_SSM_DOCUMENTS`.
  late final Output<String> actionType;

  /// This specifies if the action needs manual or automatic approval. Valid values are `AUTOMATIC` and `MANUAL`.
  late final Output<String> approvalModel;

  /// The ARN of the budget action.
  late final Output<String> arn;

  /// The name of a budget.
  late final Output<String> budgetName;

  /// Specifies all of the type-specific parameters. See Definition.
  late final Output<BudgetActionDefinition> definition;

  /// The role passed for action execution and reversion. Roles and actions must be in the same account.
  late final Output<String> executionRoleArn;

  /// The type of a notification. Valid values are `ACTUAL` or `FORECASTED`.
  late final Output<String> notificationType;

  /// The status of the budget action.
  late final Output<String> status;

  /// A list of subscribers. See Subscriber.
  late final Output<List<BudgetActionSubscriber>> subscribers;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  BudgetAction(
    String name, {
    BudgetActionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:budgets/budgetAction:BudgetAction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.actionId = registerOutput<String>('actionId');
    this.actionThreshold =
        registerOutput<BudgetActionActionThreshold>('actionThreshold');
    this.actionType = registerOutput<String>('actionType');
    this.approvalModel = registerOutput<String>('approvalModel');
    this.arn = registerOutput<String>('arn');
    this.budgetName = registerOutput<String>('budgetName');
    this.definition = registerOutput<BudgetActionDefinition>('definition');
    this.executionRoleArn = registerOutput<String>('executionRoleArn');
    this.notificationType = registerOutput<String>('notificationType');
    this.status = registerOutput<String>('status');
    this.subscribers =
        registerOutput<List<BudgetActionSubscriber>>('subscribers');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
