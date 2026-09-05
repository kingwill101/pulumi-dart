// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_domain_identity_domain_identity_args_doc}
/// The set of arguments for DomainIdentity.
/// {@endtemplate}
/// {@macro pulumi_ses_domain_identity_domain_identity_args_doc}
class DomainIdentityArgs {
  /// Domain name to assign to SES.
  final pulumi.Input<String> domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DomainIdentityArgs].
  /// [domain] Domain name to assign to SES.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainIdentityArgs({
    required this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'region': ?region,
    };
  }

  factory DomainIdentityArgs.fromMap(Map<String, dynamic> map) {
    return DomainIdentityArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
