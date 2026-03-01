// ignore_for_file: unused_element, unnecessary_cast


/// SubjectAccessReviewStatus
class SubjectAccessReviewStatusAuthorizationK8sIoV1beta1 {
  /// Allowed is required. True if the action would be allowed, false otherwise.
  final bool allowed;
  /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  final bool? denied;
  /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  final String? evaluationError;
  /// Reason is optional.  It indicates why a request was allowed or denied.
  final String? reason;

  /// Creates a new [SubjectAccessReviewStatusAuthorizationK8sIoV1beta1].
  /// [allowed] Allowed is required. True if the action would be allowed, false otherwise.
  /// [denied] Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  /// [evaluationError] EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  /// [reason] Reason is optional.  It indicates why a request was allowed or denied.
  SubjectAccessReviewStatusAuthorizationK8sIoV1beta1({
    required this.allowed,
    this.denied,
    this.evaluationError,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowed': allowed,
      'denied': ?denied,
      'evaluationError': ?evaluationError,
      'reason': ?reason,
    };
  }

  factory SubjectAccessReviewStatusAuthorizationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectAccessReviewStatusAuthorizationK8sIoV1beta1(
      allowed: map['allowed'] as bool,
      denied: map['denied'] == null ? null : map['denied'] as bool,
      evaluationError: map['evaluationError'] == null ? null : map['evaluationError'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}

