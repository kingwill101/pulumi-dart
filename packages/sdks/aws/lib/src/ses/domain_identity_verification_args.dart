// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_domain_identity_verification_domain_identity_verification_args_doc}
/// The set of arguments for DomainIdentityVerification.
/// {@endtemplate}
/// {@macro pulumi_ses_domain_identity_verification_domain_identity_verification_args_doc}
class DomainIdentityVerificationArgs {
  /// The domain name of the SES domain identity to verify.
  final pulumi.Input<String> domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainIdentityVerificationArgs].
  /// [domain] The domain name of the SES domain identity to verify.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainIdentityVerificationArgs({
    required this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'region': ?region,
    };
  }

  factory DomainIdentityVerificationArgs.fromMap(Map<String, dynamic> map) {
    return DomainIdentityVerificationArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

