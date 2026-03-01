// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_domain_verification_domain_verification_args_doc}
/// The set of arguments for DomainVerification.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_domain_verification_domain_verification_args_doc}
class DomainVerificationArgs {
  /// The domain name to verify ownership for.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainVerificationArgs].
  /// [domainName] The domain name to verify ownership for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainVerificationArgs({
    required pulumi.Output<String> domainName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DomainVerificationArgs.fromMap(Map<String, dynamic> map) {
    return DomainVerificationArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

