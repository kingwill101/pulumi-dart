// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallConfig resources.
class ResolverFirewallConfigState {
  /// Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? firewallFailOpen;
  /// The AWS account ID of the owner of the VPC that this firewall configuration applies to.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the VPC that the configuration is for.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResolverFirewallConfigState].
  /// [firewallFailOpen] Determines how Route 53 Resolver handles queries during failures, for example when all traffic that is sent to DNS Firewall fails to receive a reply. By default, fail open is disabled, which means the failure mode is closed. This approach favors security over availability. DNS Firewall blocks queries that it is unable to evaluate properly. If you enable this option, the failure mode is open. This approach favors availability over security. DNS Firewall allows queries to proceed if it is unable to properly evaluate them. Valid values: `ENABLED`, `DISABLED`.
  /// [ownerId] The AWS account ID of the owner of the VPC that this firewall configuration applies to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] The ID of the VPC that the configuration is for.
  ResolverFirewallConfigState({
    pulumi.Output<String>? firewallFailOpen,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
  }) :
      firewallFailOpen = pulumi.Input.asOptionalInput<String>(firewallFailOpen),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallFailOpen': ?firewallFailOpen,
      'ownerId': ?ownerId,
      'region': ?region,
      'resourceId': ?resourceId,
    };
  }

  factory ResolverFirewallConfigState.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallConfigState(
      firewallFailOpen: map['firewallFailOpen'] == null ? null : pulumi.Output.create<String>(map['firewallFailOpen'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

