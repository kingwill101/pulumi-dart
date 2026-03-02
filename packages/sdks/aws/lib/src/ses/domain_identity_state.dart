// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainIdentity resources.
class DomainIdentityState {
  /// The ARN of the domain identity.
  final pulumi.Input<String>? arn;
  /// The domain name to assign to SES
  final pulumi.Input<String>? domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf. The domain identity will be in state "verification pending" until this is done. See the With Route53 Record example for how this might be achieved when the domain is hosted in Route 53 and managed by this provider.  Find out more about verifying domains in Amazon SES in the [AWS SES docs](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html).
  final pulumi.Input<String>? verificationToken;

  /// Creates a new [DomainIdentityState].
  /// [arn] The ARN of the domain identity.
  /// [domain] The domain name to assign to SES
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [verificationToken] A code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf. The domain identity will be in state "verification pending" until this is done. See the With Route53 Record example for how this might be achieved when the domain is hosted in Route 53 and managed by this provider.  Find out more about verifying domains in Amazon SES in the [AWS SES docs](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html).
  DomainIdentityState({
    this.arn,
    this.domain,
    this.region,
    this.verificationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domain': ?domain,
      'region': ?region,
      'verificationToken': ?verificationToken,
    };
  }

  factory DomainIdentityState.fromMap(Map<String, dynamic> map) {
    return DomainIdentityState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      verificationToken: map['verificationToken'] == null ? null : ((map['verificationToken'] as String).input()).input(),
    );
  }
}

