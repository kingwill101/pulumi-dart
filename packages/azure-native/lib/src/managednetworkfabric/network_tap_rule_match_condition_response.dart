// ignore_for_file: unused_element, unnecessary_cast

import 'ip_match_condition_response.dart';
import 'port_condition_response.dart';
import 'vlan_match_condition_response.dart';

/// Defines the match condition that is supported to filter the traffic.
class NetworkTapRuleMatchConditionResponse {
  /// Encapsulation Type that needs to be matched.
  final String? encapsulationType;
  /// IP condition that needs to be matched.
  final IpMatchConditionResponse? ipCondition;
  /// Defines the port condition that needs to be matched.
  final PortConditionResponse? portCondition;
  /// List of the protocols that need to be matched.
  final List<String>? protocolTypes;
  /// Vlan match condition that needs to be matched.
  final VlanMatchConditionResponse? vlanMatchCondition;

  /// Creates a new [NetworkTapRuleMatchConditionResponse].
  /// [encapsulationType] Encapsulation Type that needs to be matched.
  /// [ipCondition] IP condition that needs to be matched.
  /// [portCondition] Defines the port condition that needs to be matched.
  /// [protocolTypes] List of the protocols that need to be matched.
  /// [vlanMatchCondition] Vlan match condition that needs to be matched.
  NetworkTapRuleMatchConditionResponse({
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

  factory NetworkTapRuleMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConditionResponse(
      encapsulationType: map['encapsulationType'] == null ? null : map['encapsulationType'] as String,
      ipCondition: map['ipCondition'] == null ? null : IpMatchConditionResponse.fromMap((map['ipCondition'] as Map).cast<String, dynamic>()),
      portCondition: map['portCondition'] == null ? null : PortConditionResponse.fromMap((map['portCondition'] as Map).cast<String, dynamic>()),
      protocolTypes: map['protocolTypes'] == null ? null : (map['protocolTypes'] as List).cast<String>(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : VlanMatchConditionResponse.fromMap((map['vlanMatchCondition'] as Map).cast<String, dynamic>()),
    );
  }
}

