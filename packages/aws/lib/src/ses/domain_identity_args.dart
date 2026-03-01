// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_domain_identity_domain_identity_args_doc}
/// The set of arguments for DomainIdentity.
/// {@endtemplate}
/// {@macro pulumi_ses_domain_identity_domain_identity_args_doc}
class DomainIdentityArgs {
  /// The domain name to assign to SES
  final pulumi.Input<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainIdentityArgs].
  /// [domain] The domain name to assign to SES
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainIdentityArgs({required String domain, String? region})
    : domain = pulumi.Input.asInput<String>(domain),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain, 'region': ?region};
  }

  factory DomainIdentityArgs.fromMap(Map<String, dynamic> map) {
    return DomainIdentityArgs(
      domain: map['domain'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
