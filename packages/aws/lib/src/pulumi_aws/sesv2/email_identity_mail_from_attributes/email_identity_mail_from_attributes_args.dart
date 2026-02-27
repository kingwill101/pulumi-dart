// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EmailIdentityMailFromAttributes.
class EmailIdentityMailFromAttributesArgs {
  /// The action to take if the required MX record isn't found when you send an email. Valid values: `USE_DEFAULT_VALUE`, `REJECT_MESSAGE`.
  final Input<String>? behaviorOnMxFailure;

  /// The verified email identity.
  final Input<String> emailIdentity;

  /// The custom MAIL FROM domain that you want the verified identity to use. Required if `behavior_on_mx_failure` is `REJECT_MESSAGE`.
  final Input<String>? mailFromDomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EmailIdentityMailFromAttributesArgs({
    this.behaviorOnMxFailure,
    required this.emailIdentity,
    this.mailFromDomain,
    this.region,
  });

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
      behaviorOnMxFailure:
          Input.asOptionalInput<String>(map['behaviorOnMxFailure']),
      emailIdentity: Input.asInput<String>(map['emailIdentity']),
      mailFromDomain: Input.asOptionalInput<String>(map['mailFromDomain']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
