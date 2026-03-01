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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? region,
    pulumi.Output<String>? verificationToken,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      region = pulumi.Input.asOptionalInput<String>(region),
      verificationToken = pulumi.Input.asOptionalInput<String>(verificationToken);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      verificationToken: map['verificationToken'] == null ? null : pulumi.Output.create<String>(map['verificationToken'] as String),
    );
  }
}

