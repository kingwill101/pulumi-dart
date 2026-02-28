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
    String? behaviorOnMxFailure,
    required String emailIdentity,
    String? mailFromDomain,
    String? region,
  })  : behaviorOnMxFailure =
            pulumi.Input.asOptionalInput<String>(behaviorOnMxFailure),
        emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
        mailFromDomain = pulumi.Input.asOptionalInput<String>(mailFromDomain),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final behaviorOnMxFailureValue = behaviorOnMxFailure;
    if (behaviorOnMxFailureValue != null) {
      map['behaviorOnMxFailure'] = behaviorOnMxFailureValue;
    }
    map['emailIdentity'] = emailIdentity;
    final mailFromDomainValue = mailFromDomain;
    if (mailFromDomainValue != null) {
      map['mailFromDomain'] = mailFromDomainValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EmailIdentityMailFromAttributesArgs.fromMap(
      Map<String, dynamic> map) {
    return EmailIdentityMailFromAttributesArgs(
      behaviorOnMxFailure: map['behaviorOnMxFailure'] == null
          ? null
          : map['behaviorOnMxFailure'] as String,
      emailIdentity: map['emailIdentity'] as String,
      mailFromDomain: map['mailFromDomain'] == null
          ? null
          : map['mailFromDomain'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
