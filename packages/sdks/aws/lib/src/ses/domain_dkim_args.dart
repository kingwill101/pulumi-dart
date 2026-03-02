// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ses_domain_dkim_domain_dkim_args_doc}
/// The set of arguments for DomainDkim.
/// {@endtemplate}
/// {@macro pulumi_ses_domain_dkim_domain_dkim_args_doc}
class DomainDkimArgs {
  /// Verified domain name to generate DKIM tokens for.
  final pulumi.Input<String> domain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainDkimArgs].
  /// [domain] Verified domain name to generate DKIM tokens for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainDkimArgs({
    required this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'region': ?region,
    };
  }

  factory DomainDkimArgs.fromMap(Map<String, dynamic> map) {
    return DomainDkimArgs(
      domain: (map['domain'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

