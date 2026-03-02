// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_forwarding_ruleset_args_doc}
/// Arguments for getDnsForwardingRuleset.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_forwarding_ruleset_args_doc}
class GetDnsForwardingRulesetArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String> dnsForwardingRulesetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsForwardingRulesetArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDnsForwardingRulesetArgs({
    required this.dnsForwardingRulesetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsForwardingRulesetArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsForwardingRulesetArgs(
      dnsForwardingRulesetName: (map['dnsForwardingRulesetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

