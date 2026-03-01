// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_mail_from_mail_from_args_doc}
/// The set of arguments for MailFrom.
/// {@endtemplate}
/// {@macro pulumi_ses_mail_from_mail_from_args_doc}
class MailFromArgs {
  /// The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  final pulumi.Input<String>? behaviorOnMxFailure;
  /// Verified domain name or email identity to generate DKIM tokens for.
  final pulumi.Input<String> domain;
  /// Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> mailFromDomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [MailFromArgs].
  /// [behaviorOnMxFailure] The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  /// [domain] Verified domain name or email identity to generate DKIM tokens for.
  /// [mailFromDomain] Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  MailFromArgs({
    pulumi.Output<String>? behaviorOnMxFailure,
    required pulumi.Output<String> domain,
    required pulumi.Output<String> mailFromDomain,
    pulumi.Output<String>? region,
  }) :
      behaviorOnMxFailure = pulumi.Input.asOptionalInput<String>(behaviorOnMxFailure),
      domain = pulumi.Input.asInput<String>(domain),
      mailFromDomain = pulumi.Input.asInput<String>(mailFromDomain),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'domain': domain,
      'mailFromDomain': mailFromDomain,
      'region': ?region,
    };
  }

  factory MailFromArgs.fromMap(Map<String, dynamic> map) {
    return MailFromArgs(
      behaviorOnMxFailure: map['behaviorOnMxFailure'] == null ? null : pulumi.Output.create<String>(map['behaviorOnMxFailure'] as String),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      mailFromDomain: pulumi.Output.create<String>(map['mailFromDomain'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

