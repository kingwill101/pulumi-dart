// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BranchRule.
class BranchRuleArgs {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  final pulumi.Input<bool>? allowStaleReviews;

  /// The ID for the BranchRule.
  final pulumi.Input<String> branchRuleId;

  /// Determines if the branch rule is disabled or not.
  final pulumi.Input<bool>? disabled;

  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  final pulumi.Input<String> includePattern;

  /// The location for the Repository.
  final pulumi.Input<String> location;

  /// The minimum number of approvals required for the branch rule to be matched.
  final pulumi.Input<int>? minimumApprovalsCount;

  /// The minimum number of reviews required for the branch rule to be matched.
  final pulumi.Input<int>? minimumReviewsCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID for the Repository.
  final pulumi.Input<String> repositoryId;

  /// Determines if require comments resolved before merging to the branch.
  final pulumi.Input<bool>? requireCommentsResolved;

  /// Determines if require linear history before merging to the branch.
  final pulumi.Input<bool>? requireLinearHistory;

  /// Determines if the branch rule requires a pull request or not.
  final pulumi.Input<bool>? requirePullRequest;

  BranchRuleArgs({
    this.allowStaleReviews,
    required this.branchRuleId,
    this.disabled,
    required this.includePattern,
    required this.location,
    this.minimumApprovalsCount,
    this.minimumReviewsCount,
    this.project,
    required this.repositoryId,
    this.requireCommentsResolved,
    this.requireLinearHistory,
    this.requirePullRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowStaleReviewsValue = allowStaleReviews;
    if (allowStaleReviewsValue != null) {
      map['allowStaleReviews'] = allowStaleReviewsValue;
    }
    map['branchRuleId'] = branchRuleId;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['includePattern'] = includePattern;
    map['location'] = location;
    final minimumApprovalsCountValue = minimumApprovalsCount;
    if (minimumApprovalsCountValue != null) {
      map['minimumApprovalsCount'] = minimumApprovalsCountValue;
    }
    final minimumReviewsCountValue = minimumReviewsCount;
    if (minimumReviewsCountValue != null) {
      map['minimumReviewsCount'] = minimumReviewsCountValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    final requireCommentsResolvedValue = requireCommentsResolved;
    if (requireCommentsResolvedValue != null) {
      map['requireCommentsResolved'] = requireCommentsResolvedValue;
    }
    final requireLinearHistoryValue = requireLinearHistory;
    if (requireLinearHistoryValue != null) {
      map['requireLinearHistory'] = requireLinearHistoryValue;
    }
    final requirePullRequestValue = requirePullRequest;
    if (requirePullRequestValue != null) {
      map['requirePullRequest'] = requirePullRequestValue;
    }
    return map;
  }

  factory BranchRuleArgs.fromMap(Map<String, dynamic> map) {
    return BranchRuleArgs(
      allowStaleReviews:
          pulumi.Input.asOptionalInput<bool>(map['allowStaleReviews']),
      branchRuleId: pulumi.Input.asInput<String>(map['branchRuleId']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      includePattern: pulumi.Input.asInput<String>(map['includePattern']),
      location: pulumi.Input.asInput<String>(map['location']),
      minimumApprovalsCount:
          pulumi.Input.asOptionalInput<int>(map['minimumApprovalsCount']),
      minimumReviewsCount:
          pulumi.Input.asOptionalInput<int>(map['minimumReviewsCount']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      repositoryId: pulumi.Input.asInput<String>(map['repositoryId']),
      requireCommentsResolved:
          pulumi.Input.asOptionalInput<bool>(map['requireCommentsResolved']),
      requireLinearHistory:
          pulumi.Input.asOptionalInput<bool>(map['requireLinearHistory']),
      requirePullRequest:
          pulumi.Input.asOptionalInput<bool>(map['requirePullRequest']),
    );
  }
}
