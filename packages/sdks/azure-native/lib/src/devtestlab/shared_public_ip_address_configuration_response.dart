// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_rule_response.dart';

/// Properties of a virtual machine that determine how it is connected to a load balancer.
class SharedPublicIpAddressConfigurationResponse {
  /// The incoming NAT rules
  final pulumi.Input<List<InboundNatRuleResponse>>? inboundNatRules;

  /// Creates a new [SharedPublicIpAddressConfigurationResponse].
  /// [inboundNatRules] The incoming NAT rules
  const SharedPublicIpAddressConfigurationResponse({
    this.inboundNatRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRuleResponse>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharedPublicIpAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SharedPublicIpAddressConfigurationResponse(
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatRuleResponse>(guardedValue, (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
