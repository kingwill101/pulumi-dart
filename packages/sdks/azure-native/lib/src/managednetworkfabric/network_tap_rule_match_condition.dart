// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_match_condition.dart';
import 'port_condition.dart';
import 'vlan_match_condition.dart';

/// Defines the match condition that is supported to filter the traffic.
class NetworkTapRuleMatchCondition {
  /// Encapsulation Type that needs to be matched.
  final pulumi.Input<dynamic>? encapsulationType;
  /// IP condition that needs to be matched.
  final pulumi.Input<IpMatchCondition?>? ipCondition;
  /// Defines the port condition that needs to be matched.
  final pulumi.Input<PortCondition?>? portCondition;
  /// List of the protocols that need to be matched.
  final pulumi.Input<List<String>?>? protocolTypes;
  /// Vlan match condition that needs to be matched.
  final pulumi.Input<VlanMatchCondition?>? vlanMatchCondition;

  /// Creates a new [NetworkTapRuleMatchCondition].
  /// [encapsulationType] Encapsulation Type that needs to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  NetworkTapRuleMatchCondition({
    pulumi.Input<dynamic>? encapsulationType,
    this.ipCondition,
    this.portCondition,
    this.protocolTypes,
    this.vlanMatchCondition,
  }) : encapsulationType = encapsulationType ?? pulumi.Input.fromValue('None');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encapsulationType': ?encapsulationType,
      'ipCondition': ?pulumi.Input.mapOptionalInputValue<IpMatchCondition, Map<String, dynamic>>(ipCondition, (value) => value.toMap()),
      'portCondition': ?pulumi.Input.mapOptionalInputValue<PortCondition, Map<String, dynamic>>(portCondition, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'vlanMatchCondition': ?pulumi.Input.mapOptionalInputValue<VlanMatchCondition, Map<String, dynamic>>(vlanMatchCondition, (value) => value.toMap()),
    };
  }

  factory NetworkTapRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchCondition(
      encapsulationType: (() { final guardedValue = map['encapsulationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipCondition: (() { final guardedValue = map['ipCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpMatchCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portCondition: (() { final guardedValue = map['portCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PortCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      protocolTypes: (() { final guardedValue = map['protocolTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vlanMatchCondition: (() { final guardedValue = map['vlanMatchCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VlanMatchCondition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
