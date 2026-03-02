// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_rule_response.dart';

/// Properties of a virtual machine that determine how it is connected to a load balancer.
class SharedPublicIpAddressConfigurationResponse {
  /// The incoming NAT rules
  final pulumi.Input<List<InboundNatRuleResponse>>? inboundNatRules;

  /// Creates a new [SharedPublicIpAddressConfigurationResponse].
  /// [inboundNatRules] The incoming NAT rules
  SharedPublicIpAddressConfigurationResponse({
    this.inboundNatRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRuleResponse>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SharedPublicIpAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SharedPublicIpAddressConfigurationResponse(
      inboundNatRules: map['inboundNatRules'] == null ? null : (pulumi.Input.decodeList<InboundNatRuleResponse>(map['inboundNatRules']!, (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

