// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_match_condition_response.dart';
import 'port_condition_response.dart';
import 'vlan_match_condition_response.dart';

/// Defines the match condition that is supported to filter the traffic.
class NetworkTapRuleMatchConditionResponse {
  /// Encapsulation Type that needs to be matched.
  final pulumi.Input<String>? encapsulationType;
  /// IP condition that needs to be matched.
  final pulumi.Input<IpMatchConditionResponse>? ipCondition;
  /// Defines the port condition that needs to be matched.
  final pulumi.Input<PortConditionResponse>? portCondition;
  /// List of the protocols that need to be matched.
  final pulumi.Input<List<String>>? protocolTypes;
  /// Vlan match condition that needs to be matched.
  final pulumi.Input<VlanMatchConditionResponse>? vlanMatchCondition;

  /// Creates a new [NetworkTapRuleMatchConditionResponse].
  /// [encapsulationType] Encapsulation Type that needs to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  const NetworkTapRuleMatchConditionResponse({
    this.encapsulationType,
    this.ipCondition,
    this.portCondition,
    this.protocolTypes,
    this.vlanMatchCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationType': ?encapsulationType,
      'ipCondition': ?pulumi.Input.mapOptionalInputValue<IpMatchConditionResponse, Map<String, dynamic>>(ipCondition, (value) => value.toMap()),
      'portCondition': ?pulumi.Input.mapOptionalInputValue<PortConditionResponse, Map<String, dynamic>>(portCondition, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'vlanMatchCondition': ?pulumi.Input.mapOptionalInputValue<VlanMatchConditionResponse, Map<String, dynamic>>(vlanMatchCondition, (value) => value.toMap()),
    };
  }

  factory NetworkTapRuleMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConditionResponse(
      encapsulationType: (() { final guardedValue = map['encapsulationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipCondition: (() { final guardedValue = map['ipCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpMatchConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portCondition: (() { final guardedValue = map['portCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocolTypes: (() { final guardedValue = map['protocolTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlanMatchCondition: (() { final guardedValue = map['vlanMatchCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VlanMatchConditionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

