// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebhookPullRequestBuildPolicy {
  /// List of repository roles that have approval privileges for pull request builds when comment approval is required. This argument must be specified only when `requires_comment_approval` is not `DISABLED`. See the [AWS documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/pull-request-build-policy.html#pull-request-build-policy.configuration) for valid values and defaults.
  final pulumi.Input<List<String>>? approverRoles;
  /// Specifies when comment-based approval is required before triggering a build on pull requests. Valid values are: `DISABLED`, `ALL_PULL_REQUESTS`, and `FORK_PULL_REQUESTS`.
  final pulumi.Input<String> requiresCommentApproval;

  /// Creates a new [WebhookPullRequestBuildPolicy].
  /// [approverRoles] List of repository roles that have approval privileges for pull request builds when comment approval is required. This argument must be specified only when `requires_comment_approval` is not `DISABLED`. See the [AWS documentation](https://docs.aws.amazon.com/codebuild/latest/userguide/pull-request-build-policy.html#pull-request-build-policy.configuration) for valid values and defaults.
  /// [requiresCommentApproval] Specifies when comment-based approval is required before triggering a build on pull requests. Valid values are: `DISABLED`, `ALL_PULL_REQUESTS`, and `FORK_PULL_REQUESTS`.
  WebhookPullRequestBuildPolicy({
    this.approverRoles,
    required this.requiresCommentApproval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approverRoles': ?approverRoles,
      'requiresCommentApproval': requiresCommentApproval,
    };
  }

  factory WebhookPullRequestBuildPolicy.fromMap(Map<String, dynamic> map) {
    return WebhookPullRequestBuildPolicy(
      approverRoles: (() { final guardedValue = map['approverRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requiresCommentApproval: pulumi.Input.fromValue(map['requiresCommentApproval'] as String),
    );
  }
}

