// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MailFrom resources.
class MailFromState {
  /// Action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  final pulumi.Input<String?>? behaviorOnMxFailure;
  /// Verified domain name or email identity to generate DKIM tokens for.
  final pulumi.Input<String?>? domain;
  /// Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? mailFromDomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [MailFromState].
  /// [behaviorOnMxFailure] Action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. Defaults to `UseDefaultValue`. See the [SES API documentation](https://docs.aws.amazon.com/ses/latest/APIReference/API_SetIdentityMailFromDomain.html) for more information.
  /// [domain] Verified domain name or email identity to generate DKIM tokens for.
  /// [mailFromDomain] Subdomain (of above domain) which is to be used as MAIL FROM address (Required for DMARC validation)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const MailFromState({
    this.behaviorOnMxFailure,
    this.domain,
    this.mailFromDomain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorOnMxFailure': ?behaviorOnMxFailure,
      'domain': ?domain,
      'mailFromDomain': ?mailFromDomain,
      'region': ?region,
    };
  }

  factory MailFromState.fromMap(Map<String, dynamic> map) {
    return MailFromState(
      behaviorOnMxFailure: (() { final guardedValue = map['behaviorOnMxFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailFromDomain: (() { final guardedValue = map['mailFromDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
