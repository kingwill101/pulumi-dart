// ignore_for_file: unused_element, unnecessary_cast

class WebhookPullRequestBuildPolicy {
  /// List of repository roles that have approval privileges for pull request builds when comment approval is required. This argument must be specified only when `requires_comment_approval` is not `DISABLED`. See the [AWS documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/pull-request-build-policy.html#pull-request-build-policy.configuration) for valid values and defaults.
  final List<String>? approverRoles;

  /// Specifies when comment-based approval is required before triggering a build on pull requests. Valid values are: `DISABLED`, `ALL_PULL_REQUESTS`, and `FORK_PULL_REQUESTS`.
  final String requiresCommentApproval;

  WebhookPullRequestBuildPolicy({
    this.approverRoles,
    required this.requiresCommentApproval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approverRolesValue = approverRoles;
    if (approverRolesValue != null) {
      map['approverRoles'] = approverRolesValue;
    }
    map['requiresCommentApproval'] = requiresCommentApproval;
    return map;
  }

  factory WebhookPullRequestBuildPolicy.fromMap(Map<String, dynamic> map) {
    return WebhookPullRequestBuildPolicy(
      approverRoles: map['approverRoles'] == null
          ? null
          : (map['approverRoles'] as List).cast<String>(),
      requiresCommentApproval: map['requiresCommentApproval'] as String,
    );
  }
}
