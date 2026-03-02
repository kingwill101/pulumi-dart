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
      'ipCondition': ?pulumi.Input.mapOptionalInputValue<IpMatchConditionResponse, Map<String, dynamic>>(ipCondition, (value) => value.toMap()),
      'portCondition': ?pulumi.Input.mapOptionalInputValue<PortConditionResponse, Map<String, dynamic>>(portCondition, (value) => value.toMap()),
      'protocolTypes': ?protocolTypes,
      'vlanMatchCondition': ?pulumi.Input.mapOptionalInputValue<VlanMatchConditionResponse, Map<String, dynamic>>(vlanMatchCondition, (value) => value.toMap()),
    };
  }

  factory NetworkTapRuleMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTapRuleMatchConditionResponse(
      encapsulationType: map['encapsulationType'] == null ? null : (map['encapsulationType']! as String).input(),
      ipCondition: map['ipCondition'] == null ? null : (IpMatchConditionResponse.fromMap((map['ipCondition']! as Map).cast<String, dynamic>())).input(),
      portCondition: map['portCondition'] == null ? null : (PortConditionResponse.fromMap((map['portCondition']! as Map).cast<String, dynamic>())).input(),
      protocolTypes: map['protocolTypes'] == null ? null : ((map['protocolTypes']! as List).cast<String>()).input(),
      vlanMatchCondition: map['vlanMatchCondition'] == null ? null : (VlanMatchConditionResponse.fromMap((map['vlanMatchCondition']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

