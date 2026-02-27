import 'package:pulumi/pulumi.dart' as pulumi;
import '../selection_condition/selection_condition.dart';
import '../selection_selection_tag/selection_selection_tag.dart';
import 'selection_args.dart';

/// Manages selection conditions for AWS Backup plan resources.
///
/// ## Example Usage
///
/// ### IAM Role
///
/// > For more information about creating and managing IAM Roles for backups and restores, see the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/iam-service-roles.html).
///
/// The below example creates an IAM role with the default managed IAM Policy for allowing AWS Backup to create backups.
///
///
///
/// ### Selecting Backups By Tag
///
///
///
/// ### Selecting Backups By Conditions
///
///
///
/// ### Selecting Backups By Resource
///
///
///
/// ### Selecting Backups By Not Resource
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup selection using the role plan_id and id separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/selection:Selection example plan-id|selection-id
/// ```
class Selection extends pulumi.CustomResource {
  /// Condition-based filters used to specify sets of resources for a backup plan. See below for details.
  late final pulumi.Output<List<SelectionCondition>> conditions;

  /// The ARN of the IAM role that AWS Backup uses to authenticate when restoring and backing up the target resource. See the [AWS Backup Developer Guide](https://docs.aws.amazon.com/aws-backup/latest/devguide/access-control.html#managed-policies) for additional information about using AWS managed policies or creating custom policies attached to the IAM role.
  late final pulumi.Output<String> iamRoleArn;

  /// The display name of a resource selection document.
  late final pulumi.Output<String> name;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to exclude from a backup plan.
  late final pulumi.Output<List<String>> notResources;

  /// The backup plan ID to be associated with the selection of resources.
  late final pulumi.Output<String> planId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An array of strings that either contain Amazon Resource Names (ARNs) or match patterns of resources to assign to a backup plan.
  late final pulumi.Output<List<String>?> resources;

  /// Tag-based conditions used to specify a set of resources to assign to a backup plan. See below for details.
  late final pulumi.Output<List<SelectionSelectionTag>?> selectionTags;

  Selection(
    String name, {
    SelectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/selection:Selection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditions = registerOutput<List<SelectionCondition>>('conditions');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.name = registerOutput<String>('name');
    this.notResources = registerOutput<List<String>>('notResources');
    this.planId = registerOutput<String>('planId');
    this.region = registerOutput<String>('region');
    this.resources = registerOutput<List<String>?>('resources');
    this.selectionTags =
        registerOutput<List<SelectionSelectionTag>?>('selectionTags');
  }
}
