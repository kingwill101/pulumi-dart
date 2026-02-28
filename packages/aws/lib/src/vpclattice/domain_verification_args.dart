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
    required String domainName,
    String? region,
    Map<String, String>? tags,
  })  : domainName = pulumi.Input.asInput<String>(domainName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainVerificationArgs.fromMap(Map<String, dynamic> map) {
    return DomainVerificationArgs(
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
