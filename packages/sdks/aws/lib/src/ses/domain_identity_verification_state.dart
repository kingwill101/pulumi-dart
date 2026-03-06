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
  const DomainIdentityVerificationState({
    this.arn,
    this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domain': ?domain,
      'region': ?region,
    };
  }

  factory DomainIdentityVerificationState.fromMap(Map<String, dynamic> map) {
    return DomainIdentityVerificationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

