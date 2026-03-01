// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainIdentityVerification resources.
class DomainIdentityVerificationState {
  /// The ARN of the domain identity.
  final pulumi.Input<String>? arn;
  /// The domain name of the SES domain identity to verify.
  final pulumi.Input<String>? domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainIdentityVerificationState].
  /// [arn] The ARN of the domain identity.
  /// [domain] The domain name of the SES domain identity to verify.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainIdentityVerificationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? region,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domain': ?domain,
      'region': ?region,
    };
  }

  factory DomainIdentityVerificationState.fromMap(Map<String, dynamic> map) {
    return DomainIdentityVerificationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

