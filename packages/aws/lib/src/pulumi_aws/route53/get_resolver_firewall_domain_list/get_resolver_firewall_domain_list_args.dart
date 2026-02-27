// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getResolverFirewallDomainList.
class GetResolverFirewallDomainListArgs {
  /// The ID of the domain list.
  final pulumi.Input<String> firewallDomainListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetResolverFirewallDomainListArgs({
    required this.firewallDomainListId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallDomainListId'] = firewallDomainListId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResolverFirewallDomainListArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallDomainListArgs(
      firewallDomainListId:
          pulumi.Input.asInput<String>(map['firewallDomainListId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
