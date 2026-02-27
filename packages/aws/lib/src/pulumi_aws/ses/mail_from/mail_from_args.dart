// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MailFrom.
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

  MailFromArgs({
    this.behaviorOnMxFailure,
    required this.domain,
    required this.mailFromDomain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final behaviorOnMxFailureValue = behaviorOnMxFailure;
    if (behaviorOnMxFailureValue != null) {
      map['behaviorOnMxFailure'] = behaviorOnMxFailureValue;
    }
    map['domain'] = domain;
    map['mailFromDomain'] = mailFromDomain;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory MailFromArgs.fromMap(Map<String, dynamic> map) {
    return MailFromArgs(
      behaviorOnMxFailure:
          pulumi.Input.asOptionalInput<String>(map['behaviorOnMxFailure']),
      domain: pulumi.Input.asInput<String>(map['domain']),
      mailFromDomain: pulumi.Input.asInput<String>(map['mailFromDomain']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
