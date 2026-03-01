// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_config_get_resolver_firewall_config_args_doc}
/// Arguments for getResolverFirewallConfig.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_config_get_resolver_firewall_config_args_doc}
class GetResolverFirewallConfigArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC from Amazon VPC that the configuration is for.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetResolverFirewallConfigArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC from Amazon VPC that the configuration is for.
  GetResolverFirewallConfigArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourceId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceId': resourceId,
    };
  }

  factory GetResolverFirewallConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallConfigArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

