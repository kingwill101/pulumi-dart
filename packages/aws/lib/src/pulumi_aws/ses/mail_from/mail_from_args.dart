// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MailFrom.
class MailFromArgs {
  /// The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  final Input<String>? behaviorOnMxFailure;

  /// Verified domain name or email identity to generate DKIM tokens for.
  final Input<String> domain;

  /// Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  ///
  /// The following arguments are optional:
  final Input<String> mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
          Input.asOptionalInput<String>(map['behaviorOnMxFailure']),
      domain: Input.asInput<String>(map['domain']),
      mailFromDomain: Input.asInput<String>(map['mailFromDomain']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
