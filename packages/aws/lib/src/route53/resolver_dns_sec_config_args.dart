// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_dns_sec_config_resolver_dns_sec_config_args_doc}
/// The set of arguments for ResolverDnsSecConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_dns_sec_config_resolver_dns_sec_config_args_doc}
class ResolverDnsSecConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [ResolverDnsSecConfigArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the virtual private cloud (VPC) that you're updating the DNSSEC validation status for.
  ResolverDnsSecConfigArgs({
    String? region,
    required String resourceId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory ResolverDnsSecConfigArgs.fromMap(Map<String, dynamic> map) {
    return ResolverDnsSecConfigArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

