// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_rule.dart';

/// Properties of a virtual machine that determine how it is connected to a load balancer.
class SharedPublicIpAddressConfiguration {
  /// The incoming NAT rules
  final List<InboundNatRule>? inboundNatRules;

  /// Creates a new [SharedPublicIpAddressConfiguration].
  /// [inboundNatRules] The incoming NAT rules
  SharedPublicIpAddressConfiguration({
    this.inboundNatRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatRules': ?inboundNatRules == null ? null : pulumi.Input.encodeList<InboundNatRule, Map<String, dynamic>>(inboundNatRules!, (value) => value.toMap()),
    };
  }

  factory SharedPublicIpAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return SharedPublicIpAddressConfiguration(
      inboundNatRules: map['inboundNatRules'] == null ? null : pulumi.Input.decodeList<InboundNatRule>(map['inboundNatRules'], (value) => InboundNatRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

