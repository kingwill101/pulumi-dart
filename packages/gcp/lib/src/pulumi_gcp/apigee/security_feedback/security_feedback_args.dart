// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_feedback_feedback_context/security_feedback_feedback_context.dart';

/// The set of arguments for SecurityFeedback.
class SecurityFeedbackArgs {
  /// Optional text the user can provide for additional, unstructured context.
  final Input<String>? comment;

  /// The display name of the feedback.
  final Input<String>? displayName;

  /// One or more attribute/value pairs for constraining the feedback.
  /// Structure is documented below.
  final Input<List<SecurityFeedbackFeedbackContext>> feedbackContexts;

  /// Resource ID of the security feedback.
  final Input<String> feedbackId;

  /// The type of feedback being submitted.
  /// Possible values are: `EXCLUDED_DETECTION`.
  final Input<String> feedbackType;

  /// The Apigee Organization associated with the Apigee Security Feedback,
  /// in the format `organizations/{{org_name}}`.
  final Input<String> orgId;

  /// The reason for the feedback.
  /// Possible values are: `INTERNAL_SYSTEM`, `NON_RISK_CLIENT`, `NAT`, `PENETRATION_TEST`, `OTHER`.
  final Input<String>? reason;

  SecurityFeedbackArgs({
    this.comment,
    this.displayName,
    required this.feedbackContexts,
    required this.feedbackId,
    required this.feedbackType,
    required this.orgId,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commentValue = comment;
    if (commentValue != null) {
      map['comment'] = commentValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['feedbackContexts'] = Input.mapInputValue<
            List<SecurityFeedbackFeedbackContext>, List<Map<String, dynamic>>>(
        feedbackContexts,
        (value) => Input.encodeList<SecurityFeedbackFeedbackContext,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['feedbackId'] = feedbackId;
    map['feedbackType'] = feedbackType;
    map['orgId'] = orgId;
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    return map;
  }

  factory SecurityFeedbackArgs.fromMap(Map<String, dynamic> map) {
    return SecurityFeedbackArgs(
      comment: Input.asOptionalInput<String>(map['comment']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      feedbackContexts: Input.asInput<List<SecurityFeedbackFeedbackContext>>(
          map['feedbackContexts']),
      feedbackId: Input.asInput<String>(map['feedbackId']),
      feedbackType: Input.asInput<String>(map['feedbackType']),
      orgId: Input.asInput<String>(map['orgId']),
      reason: Input.asOptionalInput<String>(map['reason']),
    );
  }
}
