// ignore_for_file: unused_element, unnecessary_cast

import 'ip_match_condition.dart';
import 'port_condition.dart';
import 'vlan_match_condition.dart';

/// Defines the match condition that is supported to filter the traffic.
class NetworkTapRuleMatchCondition {
  /// Encapsulation Type that needs to be matched.
  final String? encapsulationType;
  /// IP condition that needs to be matched.
  final IpMatchCondition? ipCondition;
  /// Defines the port condition that needs to be matched.
  final PortCondition? portCondition;
  /// List of the protocols that need to be matched.
  final List<String>? protocolTypes;
  /// Vlan match condition that needs to be matched.
  final VlanMatchCondition? vlanMatchCondition;

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
      'ipCondition': ?ipCondition == null ? null : ipCondition!.toMap(),
      'portCondition': ?portCondition == null ? null : portCondition!.toMap(),
      'protocolTypes': ?protocolTypes,
      'vlanMatchCondition': ?vlanMatchCondition == null ? null : vlanMatchCondition!.toMap(),
    };
  }

  factory NetworkTapRuleMatchCondition.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchCondition(
      encapsulationType: map['encapsulationType'] == null ? null : map['encapsulationType'] as String,
      ipCondition: map['ipCondition'] == null ? null : IpMatchCondition.fromMap((map['ipCondition'] as Map).cast<String, dynamic>()),
      portCondition: map['portCondition'] == null ? null : PortCondition.fromMap((map['portCondition'] as Map).cast<String, dynamic>()),
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : VlanMatchCondition.fromMap((map['vlanMatchCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

