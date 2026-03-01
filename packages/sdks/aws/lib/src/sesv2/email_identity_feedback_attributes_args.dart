// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_email_identity_feedback_attributes_email_identity_feedback_attributes_args_doc}
/// The set of arguments for EmailIdentityFeedbackAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_email_identity_feedback_attributes_email_identity_feedback_attributes_args_doc}
class EmailIdentityFeedbackAttributesArgs {
  /// Sets the feedback forwarding configuration for the identity.
  final pulumi.Input<bool>? emailForwardingEnabled;
  /// The email identity.
  final pulumi.Input<String> emailIdentity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityFeedbackAttributesArgs].
  /// [emailForwardingEnabled] Sets the feedback forwarding configuration for the identity.
  /// [emailIdentity] The email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityFeedbackAttributesArgs({
    pulumi.Output<bool>? emailForwardingEnabled,
    required pulumi.Output<String> emailIdentity,
    pulumi.Output<String>? region,
  }) :
      emailForwardingEnabled = pulumi.Input.asOptionalInput<bool>(emailForwardingEnabled),
      emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailForwardingEnabled': ?emailForwardingEnabled,
      'emailIdentity': emailIdentity,
      'region': ?region,
    };
  }

  factory EmailIdentityFeedbackAttributesArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityFeedbackAttributesArgs(
      emailForwardingEnabled: map['emailForwardingEnabled'] == null ? null : pulumi.Output.create<bool>(map['emailForwardingEnabled'] as bool),
      emailIdentity: pulumi.Output.create<String>(map['emailIdentity'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

