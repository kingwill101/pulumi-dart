import 'package:pulumi/pulumi.dart';
import 'branch_rule_args.dart';

/// BranchRule is the protection rule to enforce pre-defined rules on designated branches within a repository.
///
///
/// To get more information about BranchRule, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories.branchRules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
/// ## Example Usage
///
/// ### Secure Source Manager Branch Rule Basic
///
///
///
/// ### Secure Source Manager Branch Rule With Fields
///
///
///
///
/// ## Import
///
/// BranchRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/branchRules/{{branch_rule_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}/{{branch_rule_id}}`
///
/// * `{{location}}/{{repository_id}}/{{branch_rule_id}}`
///
/// * `{{branch_rule_id}}`
///
/// When using the `pulumi import` command, BranchRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/branchRules/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{project}}/{{location}}/{{repository_id}}/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{location}}/{{repository_id}}/{{branch_rule_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/branchRule:BranchRule default {{branch_rule_id}}
/// ```
class BranchRule extends CustomResource {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  late final Output<bool?> allowStaleReviews;

  /// The ID for the BranchRule.
  late final Output<String> branchRuleId;

  /// Time the BranchRule was created in UTC.
  late final Output<String> createTime;

  /// Determines if the branch rule is disabled or not.
  late final Output<bool?> disabled;

  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  late final Output<String> includePattern;

  /// The location for the Repository.
  late final Output<String> location;

  /// The minimum number of approvals required for the branch rule to be matched.
  late final Output<int?> minimumApprovalsCount;

  /// The minimum number of reviews required for the branch rule to be matched.
  late final Output<int?> minimumReviewsCount;

  /// The resource name for the BranchRule.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The ID for the Repository.
  late final Output<String> repositoryId;

  /// Determines if require comments resolved before merging to the branch.
  late final Output<bool?> requireCommentsResolved;

  /// Determines if require linear history before merging to the branch.
  late final Output<bool?> requireLinearHistory;

  /// Determines if the branch rule requires a pull request or not.
  late final Output<bool?> requirePullRequest;

  /// Unique identifier of the BranchRule.
  late final Output<String> uid;

  /// Time the BranchRule was updated in UTC.
  late final Output<String> updateTime;

  BranchRule(
    String name, {
    BranchRuleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/branchRule:BranchRule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowStaleReviews = registerOutput<bool?>('allowStaleReviews');
    this.branchRuleId = registerOutput<String>('branchRuleId');
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.includePattern = registerOutput<String>('includePattern');
    this.location = registerOutput<String>('location');
    this.minimumApprovalsCount = registerOutput<int?>('minimumApprovalsCount');
    this.minimumReviewsCount = registerOutput<int?>('minimumReviewsCount');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.requireCommentsResolved =
        registerOutput<bool?>('requireCommentsResolved');
    this.requireLinearHistory = registerOutput<bool?>('requireLinearHistory');
    this.requirePullRequest = registerOutput<bool?>('requirePullRequest');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
