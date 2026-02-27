import 'package:pulumi/pulumi.dart';
import '../security_feedback_feedback_context/security_feedback_feedback_context.dart';
import 'security_feedback_args.dart';

/// Represents a feedback report from an Advanced API Security customer.
/// Manages customer feedback about ML models.
///
///
/// To get more information about SecurityFeedback, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.securityFeedback/create)
/// * How-to Guides
/// * [Create a SecurityFeedback](https://docs.cloud.google.com/apigee/docs/api-security/abuse-detection#exclude-traffic-from-abuse-detection)
///
/// ## Example Usage
///
/// ### Apigee Security Feedback Basic
///
///
///
///
/// ## Import
///
/// SecurityFeedback can be imported using any of these accepted formats:
///
/// * `{{org_id}}/securityFeedback/{{feedback_id}}`
///
/// * `{{org_id}}/{{feedback_id}}`
///
/// When using the `pulumi import` command, SecurityFeedback can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/securityFeedback:SecurityFeedback default {{org_id}}/securityFeedback/{{feedback_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/securityFeedback:SecurityFeedback default {{org_id}}/{{feedback_id}}
/// ```
class SecurityFeedback extends CustomResource {
  /// Optional text the user can provide for additional, unstructured context.
  late final Output<String?> comment;

  /// The time when this specific feedback id was created.
  late final Output<String> createTime;

  /// The display name of the feedback.
  late final Output<String?> displayName;

  /// One or more attribute/value pairs for constraining the feedback.
  /// Structure is documented below.
  late final Output<List<SecurityFeedbackFeedbackContext>> feedbackContexts;

  /// Resource ID of the security feedback.
  late final Output<String> feedbackId;

  /// The type of feedback being submitted.
  /// Possible values are: `EXCLUDED_DETECTION`.
  late final Output<String> feedbackType;

  /// Name of the security feedback resource,
  /// in the format `organizations/{{org_name}}/securityFeedback/{{feedback_id}}`.
  late final Output<String> name;

  /// The Apigee Organization associated with the Apigee Security Feedback,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// The reason for the feedback.
  /// Possible values are: `INTERNAL_SYSTEM`, `NON_RISK_CLIENT`, `NAT`, `PENETRATION_TEST`, `OTHER`.
  late final Output<String?> reason;

  /// The time when this specific feedback id was updated.
  late final Output<String> updateTime;

  SecurityFeedback(
    String name, {
    SecurityFeedbackArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/securityFeedback:SecurityFeedback',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.feedbackContexts =
        registerOutput<List<SecurityFeedbackFeedbackContext>>(
            'feedbackContexts');
    this.feedbackId = registerOutput<String>('feedbackId');
    this.feedbackType = registerOutput<String>('feedbackType');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.reason = registerOutput<String?>('reason');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
