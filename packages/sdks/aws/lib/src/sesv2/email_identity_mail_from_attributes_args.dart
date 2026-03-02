// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_email_identity_mail_from_attributes_email_identity_mail_from_attributes_args_doc}
/// The set of arguments for EmailIdentityMailFromAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_email_identity_mail_from_attributes_email_identity_mail_from_attributes_args_doc}
class EmailIdentityMailFromAttributesArgs {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  final pulumi.Input<String>? behaviorOnMxFailure;
  /// The verified email identity.
  final pulumi.Input<String> emailIdentity;
  /// The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  final pulumi.Input<String>? mailFromDomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EmailIdentityMailFromAttributesArgs].
  /// [behaviorOnMxFailure] The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  /// [emailIdentity] The verified email identity.
  /// [mailFromDomain] The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EmailIdentityMailFromAttributesArgs({
    this.behaviorOnMxFailure,
    required this.emailIdentity,
    this.mailFromDomain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'emailIdentity': emailIdentity,
      'mailFromDomain': ?mailFromDomain,
      'region': ?region,
    };
  }

  factory EmailIdentityMailFromAttributesArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityMailFromAttributesArgs(
      behaviorOnMxFailure: map['behaviorOnMxFailure'] == null ? null : (map['behaviorOnMxFailure'] as String).input(),
      emailIdentity: (map['emailIdentity'] as String).input(),
      mailFromDomain: map['mailFromDomain'] == null ? null : (map['mailFromDomain'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

