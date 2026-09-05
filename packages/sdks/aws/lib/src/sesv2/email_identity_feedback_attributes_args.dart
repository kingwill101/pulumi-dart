// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_email_identity_feedback_attributes_email_identity_feedback_attributes_args_doc}
/// The set of arguments for EmailIdentityFeedbackAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_email_identity_feedback_attributes_email_identity_feedback_attributes_args_doc}
class EmailIdentityFeedbackAttributesArgs {
  /// Sets the feedback forwarding configuration for the identity.
  final pulumi.Input<bool?>? emailForwardingEnabled;
  /// Email identity.
  final pulumi.Input<String> emailIdentity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [EmailIdentityFeedbackAttributesArgs].
  /// [emailForwardingEnabled] Sets the feedback forwarding configuration for the identity.
  /// [emailIdentity] Email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const EmailIdentityFeedbackAttributesArgs({
    this.emailForwardingEnabled,
    required this.emailIdentity,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailForwardingEnabled': ?emailForwardingEnabled,
      'emailIdentity': emailIdentity,
      'region': ?region,
    };
  }

  factory EmailIdentityFeedbackAttributesArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityFeedbackAttributesArgs(
      emailForwardingEnabled: (() { final guardedValue = map['emailForwardingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailIdentity: pulumi.Input.fromValue(map['emailIdentity'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
