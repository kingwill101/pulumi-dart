// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_match_condition.dart';
import 'port_condition.dart';
import 'vlan_match_condition.dart';

/// Defines the match condition that is supported to filter the traffic.
class NetworkTapRuleMatchCondition {
  /// Encapsulation Type that needs to be matched.
  final pulumi.Input<String>? encapsulationType;
  /// IP condition that needs to be matched.
  final pulumi.Input<IpMatchCondition>? ipCondition;
  /// Defines the port condition that needs to be matched.
  final pulumi.Input<PortCondition>? portCondition;
  /// List of the protocols that need to be matched.
  final pulumi.Input<List<String>>? protocolTypes;
  /// Vlan match condition that needs to be matched.
  final pulumi.Input<VlanMatchCondition>? vlanMatchCondition;

  /// Creates a new [NetworkTapRuleMatchCondition].
  /// [encapsulationType] Encapsulation Type that needs to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  NetworkTapRuleMatchCondition({
    this.encapsulationType,
    this.ipCondition,
    this.portCondition,
    this.protocolTypes,
    this.vlanMatchCondition,
  });

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
      encapsulationType: map['encapsulationType'] == null ? null : (map['encapsulationType']! as String).input(),
      ipCondition: map['ipCondition'] == null ? null : (IpMatchCondition.fromMap((map['ipCondition']! as Map).cast<String, dynamic>())).input(),
      portCondition: map['portCondition'] == null ? null : (PortCondition.fromMap((map['portCondition']! as Map).cast<String, dynamic>())).input(),
      protocolTypes: map['protocolTypes'] == null ? null : ((map['protocolTypes']! as List).cast<String>()).input(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : (VlanMatchCondition.fromMap((map['vlanMatchCondition']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

