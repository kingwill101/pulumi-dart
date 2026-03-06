// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_get_domain_identity_get_domain_identity_args_doc}
/// Arguments for getDomainIdentity.
/// {@endtemplate}
/// {@macro pulumi_ses_get_domain_identity_get_domain_identity_args_doc}
class GetDomainIdentityArgs {
  /// Name of the domain
  final pulumi.Input<String> domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDomainIdentityArgs].
  /// [domain] Name of the domain
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetDomainIdentityArgs({
    required this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'region': ?region,
    };
  }

  factory GetDomainIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainIdentityArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

