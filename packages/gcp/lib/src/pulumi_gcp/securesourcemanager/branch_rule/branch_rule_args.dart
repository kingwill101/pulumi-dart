// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BranchRule.
class BranchRuleArgs {
  /// Determines if allow stale reviews or approvals before merging to the branch.
  final Input<bool>? allowStaleReviews;

  /// The ID for the BranchRule.
  final Input<String> branchRuleId;

  /// Determines if the branch rule is disabled or not.
  final Input<bool>? disabled;

  /// The BranchRule matches branches based on the specified regular expression. Use .* to match all branches.
  final Input<String> includePattern;

  /// The location for the Repository.
  final Input<String> location;

  /// The minimum number of approvals required for the branch rule to be matched.
  final Input<int>? minimumApprovalsCount;

  /// The minimum number of reviews required for the branch rule to be matched.
  final Input<int>? minimumReviewsCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID for the Repository.
  final Input<String> repositoryId;

  /// Determines if require comments resolved before merging to the branch.
  final Input<bool>? requireCommentsResolved;

  /// Determines if require linear history before merging to the branch.
  final Input<bool>? requireLinearHistory;

  /// Determines if the branch rule requires a pull request or not.
  final Input<bool>? requirePullRequest;

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
      allowStaleReviews: Input.asOptionalInput<bool>(map['allowStaleReviews']),
      branchRuleId: Input.asInput<String>(map['branchRuleId']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      includePattern: Input.asInput<String>(map['includePattern']),
      location: Input.asInput<String>(map['location']),
      minimumApprovalsCount:
          Input.asOptionalInput<int>(map['minimumApprovalsCount']),
      minimumReviewsCount:
          Input.asOptionalInput<int>(map['minimumReviewsCount']),
      project: Input.asOptionalInput<String>(map['project']),
      repositoryId: Input.asInput<String>(map['repositoryId']),
      requireCommentsResolved:
          Input.asOptionalInput<bool>(map['requireCommentsResolved']),
      requireLinearHistory:
          Input.asOptionalInput<bool>(map['requireLinearHistory']),
      requirePullRequest:
          Input.asOptionalInput<bool>(map['requirePullRequest']),
    );
  }
}
