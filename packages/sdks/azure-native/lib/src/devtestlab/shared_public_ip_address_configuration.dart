// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_rule.dart';

/// Properties of a virtual machine that determine how it is connected to a load balancer.
class SharedPublicIpAddressConfiguration {
  /// The incoming NAT rules
  final pulumi.Input<List<InboundNatRule>>? inboundNatRules;

  /// Creates a new [SharedPublicIpAddressConfiguration].
  /// [inboundNatRules] The incoming NAT rules
  const SharedPublicIpAddressConfiguration({
    this.inboundNatRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRule>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharedPublicIpAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return SharedPublicIpAddressConfiguration(
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatRule>(guardedValue, (value) => InboundNatRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

